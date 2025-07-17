-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2025 a las 01:35:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prestamo_herramientas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE `herramientas` (
  `codigo_herramienta` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `cantidad_disponible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`codigo_herramienta`, `nombre`, `descripcion`, `cantidad_disponible`) VALUES
('HERR001', 'Taladro Bosch', 'Taladro eléctrico industrial', 1),
('HERR002', 'Llave Inglesa', 'Llave ajustable 10 pulgadas', 7),
('HERR003', 'Destornillador', 'Set de destornilladores de precisión', 8),
('HERR004', 'Juego de herramientas', 'Juego de herramientas 42 piezas', 8),
('HERR005', 'Martillo ', 'Martillo 5 pulgadas', 2),
('HERR006', 'Rotomartillo', 'Rotomartillo Dewalk', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `codigo_prestamo` varchar(10) NOT NULL,
  `codigo_usuario` varchar(10) DEFAULT NULL,
  `codigo_herramienta` varchar(10) DEFAULT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `fecha_devolucion_real` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`codigo_prestamo`, `codigo_usuario`, `codigo_herramienta`, `fecha_prestamo`, `fecha_devolucion`, `fecha_devolucion_real`) VALUES
('PRE003', 'USR004', 'HERR003', '2025-07-16', '2025-07-30', '2025-07-16'),
('PRE004', 'USR004', 'HERR002', '2025-07-16', '2025-07-18', '2025-07-16'),
('PRE005', 'USR004', 'HERR004', '2025-07-16', '2025-07-31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codigo_usuario` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rol` enum('admin','usuario') NOT NULL,
  `password` varchar(255) NOT NULL,
  `estado` enum('activo','inactivo') NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codigo_usuario`, `nombre`, `apellido`, `email`, `rol`, `password`, `estado`) VALUES
('USR004', 'Julian', 'Perez ', 'julian@empresa.com', 'admin', '$2y$10$eN1k2S5FJx8jAHzEOb2iR.lPirFpVF.aon2klXh6vUD3yYoAsNEaK', 'activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  ADD PRIMARY KEY (`codigo_herramienta`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`codigo_prestamo`),
  ADD KEY `codigo_usuario` (`codigo_usuario`),
  ADD KEY `codigo_herramienta` (`codigo_herramienta`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuarios` (`codigo_usuario`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`codigo_herramienta`) REFERENCES `herramientas` (`codigo_herramienta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
