-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2021 a las 16:23:00
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `telefono`, `ciudad`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'fernando', '32145', 'value2', '2021-04-30 10:47:50', '2021-04-30 10:47:50', NULL),
(3, 'fer', '312', 'value1', '2021-04-30 10:50:47', '2021-04-30 10:50:47', NULL),
(4, 'fer', '213', 'value2', '2021-04-30 10:52:47', '2021-04-30 10:52:47', NULL),
(5, 'fer', 'dsa', 'value3', '2021-04-30 11:21:25', '2021-04-30 11:21:25', NULL),
(8, 'fer', 'fre', 'value3', '2021-04-30 11:35:14', '2021-04-30 11:35:14', NULL),
(10, 'qwerty', '3214213', 'value2', '2021-04-30 11:40:16', '2021-04-30 11:40:16', NULL),
(11, 'fer', '123', 'value2', '2021-04-30 11:42:37', '2021-04-30 11:42:37', NULL),
(12, 'qwerttyu', '4213123', 'value3', '2021-04-30 11:47:48', '2021-04-30 11:47:48', NULL),
(13, '312', 'ewq', 'value2', '2021-04-30 11:54:38', '2021-04-30 11:54:38', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
