-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-11-2014 a las 16:47:13
-- Versión del servidor: 5.5.40-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto`
--
CREATE DATABASE IF NOT EXISTS `proyecto` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `proyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE IF NOT EXISTS `auditoria` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ip` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `valido` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=13 ;

--
-- Truncar tablas antes de insertar `auditoria`
--

TRUNCATE TABLE `auditoria`;
--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id`, `usuario`, `password`, `ip`, `valido`, `fecha`) VALUES
(1, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 12:28:04'),
(2, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 15:41:11'),
(3, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 15:41:43'),
(4, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 15:42:14'),
(5, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 16:16:54'),
(6, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 16:17:18'),
(7, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 16:22:04'),
(8, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 16:28:01'),
(9, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 16:30:12'),
(10, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 16:33:14'),
(11, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 16:33:51'),
(12, 'julio899', 'd30effcb939057e4d959620876b6d07b', '127.0.0.1', '1', '2014-11-04 16:36:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `secciones` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `turno` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Truncar tablas antes de insertar `usuarios`
--

TRUNCATE TABLE `usuarios`;
--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `tipo`, `secciones`, `turno`) VALUES
(1, 'julio899', 'vinachi89', 'Julio', 'Vinachi', 'A', '0', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
