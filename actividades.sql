-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2025 a las 21:06:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciarsesion`
--

CREATE TABLE `iniciarsesion` (
  `Id_Usuario` int(10) NOT NULL,
  `Contrasena` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `Id_UsuarioN` int(10) NOT NULL,
  `ContrasenaN` varchar(15) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`Id_UsuarioN`, `ContrasenaN`, `correo`) VALUES
(0, '$2y$10$TJgBtetf', 'cristtell@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `iniciarsesion`
--
ALTER TABLE `iniciarsesion`
  ADD KEY `Contrasena` (`Contrasena`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`Id_UsuarioN`),
  ADD KEY `ContrasenaN` (`ContrasenaN`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `iniciarsesion`
--
ALTER TABLE `iniciarsesion`
  ADD CONSTRAINT `iniciarsesion_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `registro` (`Id_UsuarioN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iniciarsesion_ibfk_2` FOREIGN KEY (`Contrasena`) REFERENCES `registro` (`ContrasenaN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
