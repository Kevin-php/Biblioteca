-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2020 a las 10:09:24
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bitacoracomputo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computadora`
--

CREATE TABLE `computadora` (
  `id_pc` int(10) NOT NULL,
  `nombre` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `computadora`
--

INSERT INTO `computadora` (`id_pc`, `nombre`, `estado`) VALUES
(1, 'PC-01', 'disponible'),
(2, 'PC-02', 'disponible'),
(3, 'PC-03', 'disponible'),
(4, 'PC-04', 'disponible'),
(5, 'PC-05', 'disponible'),
(6, 'PC-06', 'disponible'),
(7, 'PC-07', 'disponible'),
(8, 'PC-08', 'disponible'),
(9, 'PC-09', 'disponible'),
(10, 'PC-10', 'disponible'),
(11, 'PC-11', 'disponible'),
(12, 'PC-12', 'disponible'),
(13, 'PC-13', 'disponible'),
(14, 'PC-14', 'disponible'),
(15, 'PC-15', 'disponible'),
(16, 'PC-16', 'disponible'),
(17, 'PC-17', 'disponible'),
(18, 'PC-18', 'disponible'),
(19, 'PC-19', 'disponible'),
(20, 'PC-20', 'disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE `encargado` (
  `matricula` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `encargado`
--

INSERT INTO `encargado` (`matricula`, `nombre`, `apellidos`, `contraseña`) VALUES
('UTP0055825', 'Kevin Aaron', 'Flores Hernandez', '12345'),
('UTP0055826', 'Keira', 'Flores', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(50) NOT NULL,
  `matricula` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_ini` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_fin` timestamp NOT NULL DEFAULT current_timestamp(),
  `observaciones` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_pc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `matricula`, `nombre`, `apellidos`, `fecha_ini`, `fecha_fin`, `observaciones`, `id_pc`) VALUES
(13, 'UTP0055829', 'Kevin Aaron', 'Flores Hernandez', '2020-08-25 03:37:02', '2020-08-25 04:36:48', 'Sin detalles', 7),
(19, 'UTP0055829', 'Kevin Aaron', 'Flores Hernandez', '2020-08-25 08:55:44', '2020-08-25 09:54:22', 'Sin detalles', 2),
(24, 'UTP1234567', 'Francisco', 'Perez', '2020-08-25 10:05:35', '2020-08-25 10:12:45', 'Sin detalles', 5),
(27, 'UTP0055822', 'Benito', 'Paredes', '2020-08-25 10:09:09', '2020-08-25 11:06:25', 'Sin detalles', 1),
(28, 'UTP1122334', 'Pamela', 'Sanchez', '2020-08-25 10:13:47', '2020-08-25 10:45:27', 'Sin detalles', 4),
(29, 'UTP0055826', 'Keira', 'Flores', '2020-08-25 11:13:48', '2020-08-25 11:35:38', 'Sin detalles', 1),
(30, 'UTP0055829', 'Kevin Aaron', 'Flores Hernandez', '2020-08-25 21:00:15', '2020-08-25 21:31:34', 'Migajas de alimentos', 2),
(31, 'UTP1122334', 'Pamela', 'Sanchez', '2020-08-25 21:22:02', '2020-08-26 07:34:24', 'Sin detalles', 1),
(32, 'UTP0055829', 'Kevin Aaron', 'Flores Hernandez', '2020-08-25 22:01:46', '2020-08-26 07:54:00', 'Sin detalles', 3),
(33, 'UTP1234567', 'Francisco', 'Perez', '2020-08-25 22:02:29', '2020-08-26 07:54:07', 'Teclas manchadas de alimentos', 2),
(34, 'UTP0055826', 'Keira', 'Flores', '2020-08-25 22:02:51', '2020-08-26 07:54:31', 'Sin detalles', 4),
(35, 'UTP1122334', 'Pamela', 'Sanchez', '2020-08-26 08:08:04', '2020-08-26 08:08:19', 'Sin detalles', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `computadora`
--
ALTER TABLE `computadora`
  ADD PRIMARY KEY (`id_pc`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `computadora`
--
ALTER TABLE `computadora`
  MODIFY `id_pc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
