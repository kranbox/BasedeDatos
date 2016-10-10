-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-09-2015 a las 18:37:59
-- Versión del servidor: 5.0.67
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuario`
--

CREATE TABLE IF NOT EXISTS `tblusuario` (
  `DOCUMENTO` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `APELLIDO` varchar(100) NOT NULL,
  `DIRECCION` varchar(100) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  `CELULAR` varchar(20) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `CONTACTO` varchar(100) NOT NULL,
  `DATECREACION` date NOT NULL,
  `NICK` varchar(20) default NULL,
  `CLAVE` varchar(200) default NULL,
  PRIMARY KEY  (`DOCUMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tblusuario`
--

INSERT INTO `tblusuario` (`DOCUMENTO`, `NOMBRE`, `APELLIDO`, `DIRECCION`, `TELEFONO`, `CELULAR`, `EMAIL`, `CONTACTO`, `DATECREACION`, `NICK`, `CLAVE`) VALUES
(880706, 'jimmy', 'romero', 'calle 45', '3222222', '3215478585', 'htolosam@gmail.com', 'jimmy', '2012-07-23', 'jimmy', '1qaz2wsx'),
(11223344, 'andres', 'padilla', 'calle 45', '3222222', '3112234455', 'anelpa@hotmail.com', 'andres padilla', '2012-07-25', 'andres', '1qaz2wsx'),
(72051587, 'ho chi minh', 'tolosa', 'calle 90', '7423999', '3102410729', 'htolosam@gmail.com', 'ares', '2012-07-21', 'aresx', '1234qwer'),
(860000230, 'colombian tourist', 's.a.s', 'calle 90 no 13 - 40', '6445820', '3117894560', 'sistemas@colombiantourist.com', 'mireya barbosa', '2012-07-23', 'mireya', '1qaz2wsx'),
(890230450, 'ropshon terapeutics', 'ltda', 'calle 49', '2494949', '3211212122', 'algo@tales.com', 'sistemas', '2012-07-25', 'sistemas', '1qaz2wsx'),
(1032407310, 'leanys', 'pineda ortega', 'calle 88 c', '4445566', '3145896363', 'leanysp@gmail.com', 'leanys pineda', '2012-07-25', 'leanysp', '1qaz2wsx');
