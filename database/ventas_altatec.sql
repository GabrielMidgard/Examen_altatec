-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2020 a las 01:23:32
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas_altatec`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `email_1` text NOT NULL,
  `email_2` text DEFAULT NULL,
  `street` text NOT NULL,
  `colony` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `cp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `email_1`, `email_2`, `street`, `colony`, `city`, `state`, `country`, `cp`, `created_at`, `updated_at`) VALUES
(1, 'Jóse Pérez', '3356896320', 'Jose.perez@gmail.com', NULL, 'Av. Periferico sur 2230', 'Ciudad Granja', 'Zapopan', 'Jalisco', 'México', 46983, '2020-09-02 21:33:35', '2020-09-02 22:18:55'),
(2, 'Roberto Cano', '6985741230', 'roberto@gmail.com', 'rcano@gmail.com', 'Av Cruz de sur 2560', '', 'Zapopan', 'Jalisco', 'México', 45080, '2020-09-02 21:33:35', '2020-09-02 22:19:07'),
(3, 'Riego Ramírez', '2589631470', 'drami@gmail.com', NULL, 'Av Patria 2033', 'Jardines de sur', 'Guadalajara', 'Jalisco', 'México', 44987, '2020-09-02 21:33:35', '2020-09-02 22:20:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(1, 'USB de 32 GB', 120),
(2, 'Cargador USB', 175);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `fk_client` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `fk_client`, `fk_product`, `amount`, `payment`, `created_at`) VALUES
(1, 1, 1, 1, 120, '2020-09-02 22:40:20'),
(2, 2, 2, 2, 350, '2020-09-02 22:40:20'),
(3, 2, 2, 3, 525, '2020-07-26 22:40:20'),
(4, 2, 1, 10, 1200, '2020-05-13 22:40:20'),
(5, 1, 1, 5, 600, '2020-09-02 22:40:20'),
(6, 2, 2, 8, 1400, '2020-09-09 22:40:20'),
(7, 2, 2, 3, 525, '2020-06-26 22:40:20'),
(8, 2, 1, 10, 1200, '2020-04-13 22:40:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
