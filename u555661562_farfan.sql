-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-03-2026 a las 22:08:35
-- Versión del servidor: 11.8.3-MariaDB-log
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u555661562_farfan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id_ingrediente` int(11) NOT NULL,
  `id_receta` int(11) DEFAULT NULL,
  `ingrediente` varchar(255) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `unidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id_ingrediente`, `id_receta`, `ingrediente`, `cantidad`, `unidad`) VALUES
(1, 1, 'Manzanas', '3', 'unidades'),
(2, 1, 'Harina', '200', 'gramos'),
(3, 1, 'Azucar', '100', 'gramos'),
(4, 1, 'Mantequilla', '100', 'gramos'),
(5, 1, 'Huevo', '2', 'unidades'),
(6, 1, 'Leche', '150', 'ml'),
(7, 1, 'Polvo de hornear', '1', 'cucharadita'),
(8, 2, 'Lechuga romana', '1', 'unidad'),
(9, 2, 'Pechuga de pollo', '200', 'gramos'),
(10, 2, 'Pan tostado', '100', 'gramos'),
(11, 2, 'Queso parmesano', '50', 'gramos'),
(12, 2, 'Aderezo César', '4', 'cucharadas'),
(13, 3, 'Espaguetis', '300', 'gramos'),
(14, 3, 'Carne molida', '500', 'gramos'),
(15, 3, 'Tomate', '2', 'unidades'),
(16, 3, 'Cebolla', '1', 'unidad'),
(17, 3, 'Ajo', '2', 'dientes'),
(18, 3, 'Aceite de oliva', '2', 'cucharadas'),
(19, 3, 'Sal', 'al gusto', 'ninguna'),
(20, 3, 'Pimienta', 'al gusto', 'ninguna'),
(21, 4, 'Carne de cerdo', '500', 'gramos'),
(22, 4, 'Piña', '1', 'rebanada'),
(23, 4, 'Tortillas de maíz', '6', 'unidades'),
(24, 4, 'Cebolla', '1', 'unidad'),
(25, 4, 'Cilantro', 'al gusto', 'ninguno'),
(26, 4, 'Limón', '2', 'unidades'),
(27, 4, 'Salsa', 'al gusto', 'ninguna'),
(28, 5, 'Pechuga de pollo', '300', 'gramos'),
(29, 5, 'Zanahorias', '2', 'unidades'),
(30, 5, 'Papas', '3', 'unidades'),
(31, 5, 'Apio', '1', 'tallo'),
(32, 5, 'Calabacín', '1', 'unidad'),
(33, 5, 'Fideos', '100', 'gramos'),
(34, 5, 'Sal', 'al gusto', 'ninguna'),
(35, 11, 'Queso crema', '500', 'gramos'),
(36, 11, 'Galletas', '200', 'gramos'),
(37, 11, 'Mantequilla', '100', 'gramos'),
(38, 11, 'Azúcar', '150', 'gramos'),
(39, 11, 'Huevo', '3', 'unidades'),
(40, 11, 'Nata', '200', 'ml'),
(41, 12, 'Arroz', '300', 'gramos'),
(42, 12, 'Pollo', '200', 'gramos'),
(43, 12, 'Conejo', '200', 'gramos'),
(44, 12, 'Judías verdes', '100', 'gramos'),
(45, 12, 'Tomate', '2', 'unidades'),
(46, 12, 'Azafrán', '1', 'pizca'),
(47, 12, 'Aceite de oliva', '3', 'cucharadas'),
(48, 13, 'Láminas de lasaña', '12', 'unidades'),
(49, 13, 'Carne molida', '500', 'gramos'),
(50, 13, 'Salsa de tomate', '400', 'gramos'),
(51, 13, 'Queso mozzarella', '200', 'gramos'),
(52, 13, 'Queso ricotta', '200', 'gramos'),
(53, 13, 'Cebolla', '1', 'unidad'),
(54, 13, 'Ajo', '2', 'dientes'),
(55, 14, 'Carne de res', '300', 'gramos'),
(56, 14, 'Pan de hamburguesa', '2', 'unidades'),
(57, 14, 'Lechuga', '2', 'hojas'),
(58, 14, 'Tomate', '1', 'unidad'),
(59, 14, 'Queso cheddar', '2', 'rebanadas'),
(60, 14, 'Cebolla', '1', 'rodaja'),
(61, 14, 'Salsa de tomate', 'al gusto', 'ninguna'),
(62, 15, 'Arroz para sushi', '300', 'gramos'),
(63, 15, 'Alga nori', '4', 'hojas'),
(64, 15, 'Salmón', '200', 'gramos'),
(65, 15, 'Aguacate', '1', 'unidad'),
(66, 15, 'Pepino', '1', 'unidad'),
(67, 15, 'Vinagre de arroz', '2', 'cucharadas'),
(68, 15, 'Azúcar', '1', 'cucharadita'),
(69, 16, 'Arroz arborio', '300', 'gramos'),
(70, 16, 'Champiñones', '200', 'gramos'),
(71, 16, 'Caldo de pollo', '1', 'litro'),
(72, 16, 'Cebolla', '1', 'unidad'),
(73, 16, 'Ajo', '2', 'dientes'),
(74, 16, 'Vino blanco', '100', 'ml'),
(75, 16, 'Queso parmesano', '50', 'gramos'),
(76, 17, 'Pescado blanco', '500', 'gramos'),
(77, 17, 'Limón', '6', 'unidades'),
(78, 17, 'Cebolla morada', '1', 'unidad'),
(79, 17, 'Cilantro', 'al gusto', 'ninguno'),
(80, 17, 'Ají', '1', 'unidad'),
(81, 17, 'Sal', 'al gusto', 'ninguna'),
(82, 18, 'Pollo', '500', 'gramos'),
(83, 18, 'Cebolla', '1', 'unidad'),
(84, 18, 'Ajo', '2', 'dientes'),
(85, 18, 'Curry en polvo', '2', 'cucharadas'),
(86, 18, 'Leche de coco', '400', 'ml'),
(87, 18, 'Tomate', '2', 'unidades'),
(88, 18, 'Aceite de oliva', '2', 'cucharadas'),
(89, 19, 'Chocolate negro', '200', 'gramos'),
(90, 19, 'Mantequilla', '150', 'gramos'),
(91, 19, 'Azúcar', '150', 'gramos'),
(92, 19, 'Huevo', '4', 'unidades'),
(93, 19, 'Harina', '100', 'gramos'),
(94, 19, 'Nata', '200', 'ml'),
(95, 20, 'Tomate', '6', 'unidades'),
(96, 20, 'Pepino', '1', 'unidad'),
(97, 20, 'Pimiento verde', '1', 'unidad'),
(98, 20, 'Ajo', '1', 'diente'),
(99, 20, 'Aceite de oliva', '4', 'cucharadas'),
(100, 20, 'Vinagre', '2', 'cucharadas'),
(101, 20, 'Pan duro', '100', 'gramos'),
(102, 21, 'Huevo', '6', 'unidades'),
(103, 21, 'Patata', '4', 'unidades'),
(104, 21, 'Cebolla', '1', 'unidad'),
(105, 21, 'Aceite de oliva', '4', 'cucharadas'),
(106, 21, 'Sal', 'al gusto', 'ninguna'),
(107, 22, 'Pollo', '1', 'unidad'),
(108, 22, 'Patatas', '6', 'unidades'),
(109, 22, 'Aceite de oliva', '3', 'cucharadas'),
(110, 22, 'Romero', '1', 'ramita'),
(111, 22, 'Ajo', '4', 'dientes'),
(112, 22, 'Sal', 'al gusto', 'ninguna'),
(113, 22, 'Pimienta', 'al gusto', 'ninguna'),
(114, 23, 'Calabaza', '1', 'unidad'),
(115, 23, 'Cebolla', '1', 'unidad'),
(116, 23, 'Ajo', '2', 'dientes'),
(117, 23, 'Caldo de verduras', '1', 'litro'),
(118, 23, 'Nata', '200', 'ml'),
(119, 23, 'Aceite de oliva', '2', 'cucharadas'),
(120, 23, 'Sal', 'al gusto', 'ninguna'),
(121, 24, 'Láminas de canelón', '12', 'unidades'),
(122, 24, 'Espinacas', '500', 'gramos'),
(123, 24, 'Queso ricotta', '250', 'gramos'),
(124, 24, 'Salsa de tomate', '400', 'gramos'),
(125, 24, 'Queso mozzarella', '200', 'gramos'),
(126, 24, 'Ajo', '2', 'dientes'),
(127, 24, 'Aceite de oliva', '2', 'cucharadas'),
(128, 25, 'Filete de pescado', '4', 'unidades'),
(129, 25, 'Limón', '1', 'unidad'),
(130, 25, 'Ajo', '2', 'dientes'),
(131, 25, 'Aceite de oliva', '3', 'cucharadas'),
(132, 25, 'Perejil', 'al gusto', 'ninguno'),
(133, 25, 'Sal', 'al gusto', 'ninguna'),
(134, 25, 'Pimienta', 'al gusto', 'ninguna'),
(135, 26, 'Carne molida', '500', 'gramos'),
(136, 26, 'Frijoles rojos', '400', 'gramos'),
(137, 26, 'Tomate', '4', 'unidades'),
(138, 26, 'Cebolla', '1', 'unidad'),
(139, 26, 'Ajo', '2', 'dientes'),
(140, 26, 'Chile en polvo', '2', 'cucharadas'),
(141, 26, 'Comino', '1', 'cucharadita'),
(142, 26, 'Aceite de oliva', '2', 'cucharadas'),
(143, 27, 'Manzanas', '4', 'unidades'),
(144, 27, 'Harina', '200', 'gramos'),
(145, 27, 'Azúcar', '150', 'gramos'),
(146, 27, 'Mantequilla', '100', 'gramos'),
(147, 27, 'Huevo', '2', 'unidades'),
(148, 27, 'Canela', '1', 'cucharadita'),
(149, 27, 'Leche', '100', 'ml'),
(150, 28, 'Garbanzos', '400', 'gramos'),
(151, 28, 'Cebolla', '1', 'unidad'),
(152, 28, 'Ajo', '2', 'dientes'),
(153, 28, 'Perejil', 'al gusto', 'ninguno'),
(154, 28, 'Comino', '1', 'cucharadita'),
(155, 28, 'Cilantro', 'al gusto', 'ninguno'),
(156, 28, 'Aceite de oliva', 'para freír', 'ninguna'),
(157, 29, 'Spaghetti', '300', 'gramos'),
(158, 29, 'Panceta', '200', 'gramos'),
(159, 29, 'Huevo', '2', 'unidades'),
(160, 29, 'Queso parmesano', '100', 'gramos'),
(161, 29, 'Ajo', '2', 'dientes'),
(162, 29, 'Aceite de oliva', '2', 'cucharadas'),
(163, 29, 'Pimienta negra', 'al gusto', 'ninguna'),
(164, 30, 'Carne molida', '500', 'gramos'),
(165, 30, 'Cebolla', '1', 'unidad'),
(166, 30, 'Huevo duro', '2', 'unidades'),
(167, 30, 'Aceitunas', '50', 'gramos'),
(168, 30, 'Pasas', '50', 'gramos'),
(169, 30, 'Masa para empanadas', '500', 'gramos'),
(170, 30, 'Aceite de oliva', '2', 'cucharadas'),
(171, 31, 'Berenjena', '1', 'unidad'),
(172, 31, 'Calabacín', '1', 'unidad'),
(173, 31, 'Pimiento rojo', '1', 'unidad'),
(174, 31, 'Pimiento verde', '1', 'unidad'),
(175, 31, 'Tomate', '4', 'unidades'),
(176, 31, 'Cebolla', '1', 'unidad'),
(177, 31, 'Ajo', '2', 'dientes'),
(178, 31, 'Aceite de oliva', '3', 'cucharadas'),
(179, 31, 'Hierbas provenzales', '1', 'cucharadita'),
(180, 32, 'Pollo', '4', 'muslos'),
(181, 32, 'Zumo de naranja', '200', 'ml'),
(182, 32, 'Miel', '2', 'cucharadas'),
(183, 32, 'Salsa de soja', '2', 'cucharadas'),
(184, 32, 'Ajo', '2', 'dientes'),
(185, 32, 'Jengibre', '1', 'cucharadita'),
(186, 32, 'Aceite de oliva', '2', 'cucharadas'),
(187, 33, 'Tomate', '6', 'unidades'),
(188, 33, 'Cebolla', '1', 'unidad'),
(189, 33, 'Ajo', '2', 'dientes'),
(190, 33, 'Caldo de verduras', '1', 'litro'),
(191, 33, 'Nata', '200', 'ml'),
(192, 33, 'Albahaca', 'al gusto', 'ninguna'),
(193, 33, 'Aceite de oliva', '2', 'cucharadas'),
(194, 34, 'Harina', '200', 'gramos'),
(195, 34, 'Mantequilla', '100', 'gramos'),
(196, 34, 'Azúcar', '100', 'gramos'),
(197, 34, 'Huevo', '2', 'unidades'),
(198, 34, 'Frutas variadas', '300', 'gramos'),
(199, 34, 'Crema pastelera', '200', 'gramos'),
(200, 35, 'Carne molida', '500', 'gramos'),
(201, 35, 'Pan rallado', '100', 'gramos'),
(202, 35, 'Huevo', '1', 'unidad'),
(203, 35, 'Cebolla', '1', 'unidad'),
(204, 35, 'Ajo', '2', 'dientes'),
(205, 35, 'Salsa de tomate', '400', 'gramos'),
(206, 35, 'Aceite de oliva', '2', 'cucharadas'),
(207, 36, 'Pasta', '300', 'gramos'),
(208, 36, 'Brócoli', '200', 'gramos'),
(209, 36, 'Zanahoria', '1', 'unidad'),
(210, 36, 'Calabacín', '1', 'unidad'),
(211, 36, 'Pimiento rojo', '1', 'unidad'),
(212, 36, 'Aceite de oliva', '3', 'cucharadas'),
(213, 36, 'Queso parmesano', '50', 'gramos'),
(214, 37, 'Pan de molde', '4', 'rebanadas'),
(215, 37, 'Huevo', '2', 'unidades'),
(216, 37, 'Leche', '100', 'ml'),
(217, 37, 'Azúcar', '2', 'cucharadas'),
(218, 37, 'Mantequilla', '2', 'cucharadas'),
(219, 37, 'Canela', '1', 'cucharadita'),
(220, 38, 'Lentejas', '300', 'gramos'),
(221, 38, 'Chorizo', '200', 'gramos'),
(222, 38, 'Cebolla', '1', 'unidad'),
(223, 38, 'Ajo', '2', 'dientes'),
(224, 38, 'Zanahoria', '1', 'unidad'),
(225, 38, 'Tomate', '2', 'unidades'),
(226, 38, 'Caldo de verduras', '1', 'litro'),
(227, 38, 'Aceite de oliva', '2', 'cucharadas'),
(228, 39, 'Pollo', '500', 'gramos'),
(229, 39, 'Salsa de soja', '4', 'cucharadas'),
(230, 39, 'Miel', '2', 'cucharadas'),
(231, 39, 'Jengibre', '1', 'cucharadita'),
(232, 39, 'Ajo', '2', 'dientes'),
(233, 39, 'Aceite de oliva', '2', 'cucharadas'),
(234, 39, 'Sésamo', '1', 'cucharadita'),
(235, 40, 'Huevo', '4', 'unidades'),
(236, 40, 'Leche', '500', 'ml'),
(237, 40, 'Azúcar', '150', 'gramos'),
(238, 40, 'Vainilla', '1', 'cucharadita'),
(239, 40, 'Caramelo líquido', '100', 'ml');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id_receta` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tiempo_preparacion` int(11) NOT NULL,
  `porciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id_receta`, `nombre`, `tiempo_preparacion`, `porciones`) VALUES
(1, 'Torta de manzana', 60, 8),
(2, 'Ensalada César', 20, 4),
(3, 'Spaghetti a la boloñesa', 45, 4),
(4, 'Tacos al pastor', 40, 6),
(5, 'Sopa de pollo', 35, 4),
(6, 'Pollo a la parrilla', 30, 4),
(7, 'Pizza Margarita', 90, 2),
(8, 'Arroz con pollo', 50, 4),
(9, 'Panqueques', 20, 2),
(10, 'Brownie de chocolate', 50, 8),
(11, 'Tarta de queso', 70, 6),
(12, 'Paella', 60, 4),
(13, 'Lasaña', 90, 6),
(14, 'Hamburguesa casera', 30, 2),
(15, 'Sushi', 120, 4),
(16, 'Risotto de champiñones', 50, 4),
(17, 'Ceviche', 30, 4),
(18, 'Pollo al curry', 60, 4),
(19, 'Tarta de chocolate', 80, 8),
(20, 'Gazpacho', 20, 4),
(21, 'Tortilla española', 40, 4),
(22, 'Pollo al horno con patatas', 90, 4),
(23, 'Crema de calabaza', 45, 4),
(24, 'Canelones de espinaca', 60, 6),
(25, 'Pescado al horno', 50, 4),
(26, 'Chili con carne', 120, 6),
(27, 'Tarta de manzana', 70, 8),
(28, 'Falafel', 40, 4),
(29, 'Pasta carbonara', 30, 4),
(30, 'Empanadas de carne', 90, 6),
(31, 'Ratatouille', 60, 4),
(32, 'Pollo a la naranja', 50, 4),
(33, 'Sopa de tomate', 40, 4),
(34, 'Tarta de frutas', 90, 8),
(35, 'Albóndigas en salsa', 60, 4),
(36, 'Pasta primavera', 30, 4),
(37, 'Tostadas francesas', 20, 2),
(38, 'Guiso de lentejas', 90, 6),
(39, 'Pollo teriyaki', 40, 4),
(40, 'Flan de huevo', 60, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id_ingrediente`),
  ADD KEY `id_receta` (`id_receta`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id_receta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id_ingrediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id_receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `ingredientes_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
