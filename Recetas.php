<?php

$servername = "localhost";  // El host de la base de datos
$username = "";    // El usuario de la base de datos
$password = "";         // La contraseña de la base de datos
$dbname = "";      // El nombre de la base de datos

// Crea la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
require 'vendor/autoload.php';
$token = ''; // Token de Telegram
$telegram = new Telegram\Bot\Api($token);

// Obtén el contenido JSON de la solicitud
$update = json_decode(file_get_contents('php://input'), TRUE);

// Verifica si se recibió un mensaje
if (isset($update['message'])) {
    $chatId = $update['message']['chat']['id'];
    $text = $update['message']['text'];

    // Aquí agregas tu lógica para enviar respuestas dependiendo del mensaje
    if (strtolower($text) === "info" || strtolower($text) === "ayuda" || strtolower($text) === "help" || strtolower($text) === "/start" || strtolower($text) === "hola") {
        $telegram->sendMessage([
            'chat_id' => $chatId,
            'text' => "Para buscar una receta escribe receta seguido de el nombre\n\nSi quieres saber que receta puedes preparar con tus ingredientes, escribe el nombre de los ingredientes separados por una coma\n\tEjemplo: salsa,queso,tomate,chile\n\nSi ya te has decidido por una receta escribe receta seguido por el nombre de la receta para ver toda la información. \n\tEjemplo: receta espagueti "
        ]);
    } elseif (strtolower($text) === "recetas") {
        $telegram->sendMessage([
            'chat_id' => $chatId,
            'text' => "Escribe el nombre de la receta que buscas, por ejemplo: 'Lasaña'."
        ]);
    } elseif (strtolower($text) === "lista de ingredientes") {
        $telegram->sendMessage([
            'chat_id' => $chatId,
            'text' => "Escribe los ingredientes que tienes, por ejemplo: 'queso, tomate, carne'."
        ]);
    } else {
        // Verificar si el mensaje es una búsqueda de receta por nombre
        if (strpos(strtolower($text), 'receta') !== false) {
            $nombre_receta = trim(str_replace('receta', '', strtolower($text)));
            $sql = "SELECT * FROM recetas WHERE LOWER(nombre) LIKE '%$nombre_receta%'";
            $result = $conn->query($sql);

            
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $response = $row['nombre'] . " (Tiempo: " . $row['tiempo_preparacion'] . " mins, Porciones: " . $row['porciones'] . ")\n";
                $response .= "Ingredientes:\n";
                
                // Obtener los ingredientes de la receta
                $sql_ingredientes = "SELECT ingrediente, cantidad, unidad FROM ingredientes WHERE id_receta = " . $row['id_receta'];
                $result_ingredientes = $conn->query($sql_ingredientes);
                
                while ($ingrediente = $result_ingredientes->fetch_assoc()) {
                    $response .= "- " . $ingrediente['ingrediente'] . " (" . $ingrediente['cantidad'] . " " . $ingrediente['unidad'] . ")\n";
                }
                $telegram->sendMessage([
                    'chat_id' => $chatId,
                    'text' => $response
                ]);
            } else {
                $telegram->sendMessage([
                    'chat_id' => $chatId,
                    'text' => "No se encontraron recetas con ese nombre. Intenta con otro nombre."
                ]);
            }
            
        } else {
            
           // Verificar si el mensaje es una búsqueda de receta por ingredientes
            $ingredientes = preg_split('/[\s,]+/', strtolower($text)); // Divide por espacios o comas
            $ingredientes = array_map('trim', $ingredientes); // Limpia espacios en blanco
            $ingredientes = array_filter($ingredientes); // Elimina elementos vacíos
            
            if (!empty($ingredientes)) {
                // Contar coincidencias de ingredientes por receta
                $sql = "SELECT r.nombre, COUNT(i.id_ingrediente) AS coincidencias 
                        FROM recetas r 
                        JOIN ingredientes i ON r.id_receta = i.id_receta 
                        WHERE LOWER(i.ingrediente) IN ('" . implode("','", $ingredientes) . "')
                        GROUP BY r.nombre
                        ORDER BY coincidencias DESC";
                $result = $conn->query($sql);
            
                if ($result->num_rows > 0) {
                    $response = "Recetas que puedes preparar con esos ingredientes:\n";
                    while ($row = $result->fetch_assoc()) {
                        $response .= "- " . $row['nombre'] . " (" . $row['coincidencias'] . " coincidencia(s))\n";
                    }
                    $telegram->sendMessage([
                        'chat_id' => $chatId,
                        'text' => $response
                    ]);
                } else {
                    $telegram->sendMessage([
                        'chat_id' => $chatId,
                        'text' => "No se encontraron recetas con esos ingredientes. Intenta con otros ingredientes.\n\nSi estás buscando una receta, recuerda escribir 'Receta' antes del nombre de la receta.\n\nEjemplo: receta lasaña"
                    ]);
                }
            } else {
                $telegram->sendMessage([
                    'chat_id' => $chatId,
                    'text' => "No se proporcionaron ingredientes válidos. Intenta de nuevo."
                ]);
            }
            
            
        }
    }
}
?>