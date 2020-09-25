-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2020 a las 01:57:54
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_cakephp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `body` text DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `slug`, `body`, `published`, `created`, `modified`) VALUES
(1, 1, 'camisetas nike-(M)', 'first-post', 'Nike\r\nCamiseta Nike NSW Heritage Para Hombre - Negro-Rojo\r\nVendido y entregado.\r\n$ 144.900', 1, '2020-09-16 17:10:49', '2020-09-23 20:52:44'),
(3, 1, 'Camiseta Nike-(M)', 'otro-artuculo', 'Nike\r\nCamiseta Nike Dry Run - Blanco\r\nVendido y entregado por Pacific Sport\r\n$ 129.900', 0, '2020-09-16 23:27:29', '2020-09-23 20:54:04'),
(4, 1, 'Nike Camiseta-(M)', 'otro-articulo', 'Nike\r\nCamiseta Deportiva Nike Dry Academy-Rojo\r\nVendido y entregado por Global Logistic Services S.A.\r\n$ 111.530', 0, '2020-09-16 23:28:13', '2020-09-23 20:55:33'),
(5, 1, 'Medias Deportivas(U)', 'producto-de-muestras', 'Nike\r\nMedias Nike Plus Cushion Training - Negro\r\nVendido y entregado por Pacific Sport\r\n$ 64.900', 0, '2020-09-17 22:35:54', '2020-09-23 20:57:34'),
(6, 1, 'Medias Deportivas(U)', 'Medias-Deportivas-U', 'Nike\r\nMedias Nike Plus Cushion Training - blancas\r\nVendido y entregado por Pacific Sport\r\n$ 64.900', 0, '2020-09-23 21:00:53', '2020-09-23 21:00:53'),
(7, 1, 'Bandas de cabeza(U)', 'Bandas-de-cabeza-U', 'Inicio  Masculino  Deportes  Equipamiento  Fitness Gym  Banda De Cabeza Nike AC2285-101-Blanco\r\nBanda De Cabeza Nike AC2285-101-Blanco de Nike\r\nBanda De Cabeza Nike AC2285-101-Blanco de Nike\r\nBanda De Cabeza Nike AC2285-101-Blanco\r\nNike\r\nBanda De Cabeza Nike AC2285-101-Blanco\r\nVendido y entregado por Global Logistic Services S.A.\r\n$ 84.320', 0, '2020-09-23 21:09:15', '2020-09-23 21:09:15'),
(8, 1, 'zapatos nike-(M)', 'zapatos-nike-M', 'Nike Zapato Quest Hombre - Azul/blanco\r\n$215.600', 0, '2020-09-23 21:11:58', '2020-09-23 21:11:58'),
(9, 1, 'adidas Zapato(M)', 'adidas-Zapato-M', 'adidas Zapato Duramo 9 Mujer - Azul Oscuro/rosa\r\n$220.000', 0, '2020-09-23 21:12:39', '2020-09-23 21:12:39'),
(10, 1, 'zapatos Tenis-(F)', 'zapatos-Tenis-F', 'Zapatos De Moda Femenina Tenis Mujer Doble Piso\r\n$54.900', 0, '2020-09-23 21:15:36', '2020-09-23 21:15:36'),
(11, 1, 'pantaloneta corta(M)', 'pantaloneta-corta-M', 'Pantaloneta, Short Corto De Gym, Casual De Hombre\r\n 57 opiniones\r\n$37.900', 0, '2020-09-23 21:17:41', '2020-09-23 21:17:41'),
(14, 1, 'pantaloneta (M)', 'pantaloneta-M', 'Boxer / Pantaloneta Para Hombre (económico)\r\n 9 opiniones\r\n$14.500', 0, '2020-09-23 21:19:20', '2020-09-23 21:19:20'),
(15, 1, 'conjuntos (F)', 'conjuntos-F', 'Conjunto Femenino Trio Top Tanga Short Deportivo Gimmasio\r\n 1 opinión\r\n$25.900', 0, '2020-09-23 21:20:15', '2020-09-23 21:20:15'),
(16, 1, 'interiores (F)', 'interiores-F', 'Tanga Femenina Algodon Lycrado Ropa Interior Mujer S M L\r\n 1 opinión\r\n$8.900', 0, '2020-09-23 21:21:12', '2020-09-23 21:21:12'),
(17, 1, 'PIJAMAS (F)', 'PIJAMAS-F', 'Pijama En Satin, Short Mujer Sexi, Pijama Por Mayor\r\n$33.900', 0, '2020-09-23 21:22:10', '2020-09-23 21:22:10'),
(18, 1, 'Guante Mujer Gimnasi', 'Guante-Mujer-Gimnasi', 'Guante Mujer Gimnasio Gym Deportes Pesas Ciclismo Fitness\r\n$30.000', 0, '2020-09-23 21:30:12', '2020-09-23 21:30:12'),
(19, 1, 'Guante Mujer Gym', 'Guante-Mujer-Gym', 'Guante Mujer Gym Gimnasio Deportes Pesas Ciclismo Fitness\r\n$30.000', 0, '2020-09-23 21:30:43', '2020-09-23 21:30:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_tags`
--

CREATE TABLE `articles_tags` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articles_tags`
--

INSERT INTO `articles_tags` (`article_id`, `tag_id`) VALUES
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 4),
(8, 4),
(9, 3),
(10, 4),
(11, 3),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `title`, `created`, `modified`) VALUES
(3, 'excelente', '2020-09-23 02:10:59', '2020-09-23 02:10:59'),
(4, 'bueno', '2020-09-23 20:59:01', '2020-09-23 20:59:01'),
(5, 'regular', '2020-09-23 20:59:18', '2020-09-23 20:59:18'),
(6, 'malo', '2020-09-23 20:59:29', '2020-09-23 20:59:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`) VALUES
(1, 'cakephp@example.com', '$2y$10$q5ENK0iefhuLVO/yVuwq/OkaCpUd3gSp15F0LAwgI9XqOwl.36tm2', '2020-09-16 17:10:49', '2020-09-24 18:45:38'),
(6, 'miguelromero@gmail.com', '$2y$10$3OibE25QyHhePNdNwSVGAuyVGSbG5Bl8D7hzEDmyVMbDRwtMyiXaG', '2020-09-22 00:17:20', '2020-09-24 18:45:00'),
(8, 'gemanice01@gmail.com', '$2y$10$nNayUO0p2aOZBJmi3FyH4ervC5tXgm0bxHIms.etsAJV0bzWjnPYm', '2020-09-24 18:36:34', '2020-09-24 18:36:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_key` (`user_id`);

--
-- Indices de la tabla `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `tag_key` (`tag_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `article_key` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `tag_key` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
