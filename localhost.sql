-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-11-2014 a las 08:36:55
-- Versión del servidor: 5.5.40-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `confortaxi`
--
DROP DATABASE IF EXISTS`confortaxi`;
CREATE DATABASE IF NOT EXISTS `confortaxi` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `confortaxi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignación taxista`
--

CREATE TABLE IF NOT EXISTS `asignación taxista` (
  `id_turno` int(2) NOT NULL,
  `fecha_ asignacion` date NOT NULL,
  `cod _ruta` int(4) NOT NULL,
  `id_placa` varchar(20) NOT NULL,
  `id_licencia` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `asignación taxista`
--

TRUNCATE TABLE `asignación taxista`;
--
-- Volcado de datos para la tabla `asignación taxista`
--

INSERT INTO `asignación taxista` (`id_turno`, `fecha_ asignacion`, `cod _ruta`, `id_placa`, `id_licencia`) VALUES
(1, '2013-10-01', 1, 'dc366tm', '1231234567'),
(2, '2012-11-01', 5, 'ac656cm', '1029384756'),
(3, '2014-10-01', 4, 'cmtgbmc', '1340968qoe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE IF NOT EXISTS `auditoria` (
`id` int(10) NOT NULL,
  `fecha` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `cedula_usuario` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `auditoria`
--

TRUNCATE TABLE `auditoria`;
--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id`, `fecha`, `usuario`, `cedula_usuario`) VALUES
(14, '2014-10-29 21:22:31', '123', '123'),
(15, '2014-10-29 21:22:33', '123', '123'),
(16, '2014-10-29 21:22:53', '123', '123'),
(17, '2014-10-29 21:26:20', '123', '123'),
(18, '2014-10-29 21:26:50', '123', '123'),
(19, '2014-10-29 21:26:58', '123', '123'),
(20, '2014-10-29 21:27:25', '123', '123'),
(21, '2014-10-29 21:27:45', '123', '123'),
(22, '2014-10-29 21:28:19', '123', '123'),
(23, '2014-10-29 21:31:06', '123', '123'),
(29, '2014-10-30 07:49:21', '123', '123'),
(30, '2014-10-30 07:50:23', '123', '123'),
(31, '2014-10-30 07:51:29', '123', '123'),
(32, '2014-10-30 08:30:52', '`Jeferson Busta', '20252281'),
(33, '2014-10-30 09:11:34', '`Jeferson Busta', '20252281');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE IF NOT EXISTS `banco` (
  `id_banco` varchar(2) NOT NULL,
  `n_cuenta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `banco`
--

TRUNCATE TABLE `banco`;
--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`id_banco`, `n_cuenta`) VALUES
('1', '2147483647'),
('2', '2147483647');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_ced` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `telfn` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `apelli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `cliente`
--

TRUNCATE TABLE `cliente`;
--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_ced`, `nom`, `telfn`, `correo`, `apelli`) VALUES
(9956470, 'jose', 2147483647, 'jose-jbus@hotmail.com', 'bustamante'),
(11591296, 'edgar', 0, '', 'valentines'),
(11631656, 'amarilys', 2147483647, 'amys-8@hotmail.com', 'alvarado'),
(12336038, 'Jenat', 0, '', 'Ramos'),
(13579827, 'marleney', 0, '', 'chirinos'),
(15077084, 'kelly', 0, '', 'rodriguez'),
(15303887, 'luzmila', 0, '', 'valera'),
(16407245, 'milagros', 0, '', 'torres'),
(16407583, 'yusdeli', 0, '', 'torrealba'),
(19100459, 'yurianny', 0, '', 'galvis'),
(19217176, 'jammar', 0, '', 'petit'),
(20252281, 'jefferson', 2147483647, 'jjba-11@hotmail.com', 'bustamante'),
(20450752, 'erika', 0, '', 'rodriguez'),
(32799990, 'ingrid', 0, '', 'cañas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago de boleto`
--

CREATE TABLE IF NOT EXISTS `pago de boleto` (
  `id_ced` int(10) NOT NULL,
  `n_bauche` int(20) NOT NULL,
  `id_banco` int(2) NOT NULL,
  `fecha_depo` date NOT NULL,
  `cod_ruta` int(4) NOT NULL,
  `cant_depo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `pago de boleto`
--

TRUNCATE TABLE `pago de boleto`;
--
-- Volcado de datos para la tabla `pago de boleto`
--

INSERT INTO `pago de boleto` (`id_ced`, `n_bauche`, `id_banco`, `fecha_depo`, `cod_ruta`, `cant_depo`) VALUES
(9956470, 1, 1, '2014-10-02', 1, 90),
(11631656, 2, 2, '2014-10-29', 2, 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE IF NOT EXISTS `ruta` (
  `cod_ruta` int(4) NOT NULL,
  `nom_ruta` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(10) NOT NULL,
  `cant_cliente` int(10) NOT NULL,
  `precio` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `ruta`
--

TRUNCATE TABLE `ruta`;
--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`cod_ruta`, `nom_ruta`, `estado`, `cant_cliente`, `precio`) VALUES
(0, '', '', 0, 0),
(1, 'santa rita', 'aragua', 2, 90),
(2, 'palo negro', 'aragua', 3, 120),
(3, 'turmero', 'aragua', 4, 120),
(5, 'santa cru', 'aragua', 1, 150),
(6, 'cagua cent', 'aragua', 3, 170),
(7, 'villadecur', 'aragua', 3, 350),
(8, 'lavictoria', 'aragua', 2, 350),
(9, 'magdaleno', 'aragua', 2, 250),
(10, 'tocoron', 'aragua', 1, 250),
(11, 'SanFcoAsis', 'aragua', 2, 300),
(123, 'guacara', 'carabobo', 1, 950);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxista`
--

CREATE TABLE IF NOT EXISTS `taxista` (
  `id_ced` int(10) NOT NULL,
  `fecha_ingr` date NOT NULL,
  `carnet_circulacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `n_certficadosalud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `id_licencia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `tarifa` int(4) NOT NULL,
  `nom_ref` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telef_ref` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Truncar tablas antes de insertar `taxista`
--

TRUNCATE TABLE `taxista`;
--
-- Volcado de datos para la tabla `taxista`
--

INSERT INTO `taxista` (`id_ced`, `fecha_ingr`, `carnet_circulacion`, `n_certficadosalud`, `id_licencia`, `tarifa`, `nom_ref`, `telef_ref`) VALUES
(111, '2014-10-01', 'CARNET', 'SALUD', 'LICENCIA', 1234, 'JOSE', '243'),
(9956470, '2011-11-11', '8Z1TJ52645V326800', '3978203_5', '9956470_5', 1050, 'Macario', '2147483647'),
(18266159, '2014-01-01', 'si', 'no', '1', 2000, 'Julio Vinachi', '0426-6348190');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE IF NOT EXISTS `turno` (
  `id_turno` int(2) NOT NULL,
  `descrip_turno` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `turno`
--

TRUNCATE TABLE `turno`;
--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id_turno`, `descrip_turno`) VALUES
(1, 'mañana'),
(2, 'tarde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_ced` int(20) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `usuario`
--

TRUNCATE TABLE `usuario`;
--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_ced`, `nom`, `clave`) VALUES
(123, '123', '202cb962ac59075b964b07152d234b70'),
(1234, 'jeff', '81dc9bdb52d04dc20036dbd8313ed055'),
(11631656, 'amarilys alvarado', '9a47e51dbd25900c74e634c12da025fd'),
(18266159, 'Julio Vinachi', '202cb962ac59075b964b07152d234b70'),
(20252281, '`Jeferson Bustamante', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE IF NOT EXISTS `vehiculo` (
  `id_placa` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `n_serial` varchar(20) NOT NULL,
  `modelo` int(11) NOT NULL,
  `n_seguro` varchar(20) NOT NULL,
  `n_unidad` varchar(20) NOT NULL,
  `año` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `vehiculo`
--

TRUNCATE TABLE `vehiculo`;
--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_placa`, `color`, `n_serial`, `modelo`, `n_seguro`, `n_unidad`, `año`) VALUES
('AC656AC', 'Blanco', '', 3320, '', '66', 2005),
('ac959aa', 'blanco', '3ruer9gijriguh4834u3', 2, '1029384756', 'R', 2010),
('ag478ig', 'blanco', '', 2, '', 'X', 2005);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignación taxista`
--
ALTER TABLE `asignación taxista`
 ADD PRIMARY KEY (`id_turno`), ADD UNIQUE KEY `cod _ruta` (`cod _ruta`), ADD UNIQUE KEY `id_placa` (`id_placa`), ADD UNIQUE KEY `id_licencia` (`id_licencia`);

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
 ADD PRIMARY KEY (`id_banco`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`id_ced`);

--
-- Indices de la tabla `pago de boleto`
--
ALTER TABLE `pago de boleto`
 ADD PRIMARY KEY (`id_ced`), ADD UNIQUE KEY `id_banco` (`id_banco`), ADD UNIQUE KEY `cod_ruta` (`cod_ruta`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
 ADD PRIMARY KEY (`cod_ruta`);

--
-- Indices de la tabla `taxista`
--
ALTER TABLE `taxista`
 ADD PRIMARY KEY (`id_ced`), ADD UNIQUE KEY `id_licencia` (`id_licencia`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
 ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id_ced`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
 ADD PRIMARY KEY (`id_placa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
