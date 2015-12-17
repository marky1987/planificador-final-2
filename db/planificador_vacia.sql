-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2015 a las 21:03:12
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `planificador_vacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE IF NOT EXISTS `tarea` (
  `tra_id` int(11) NOT NULL AUTO_INCREMENT,
  `tra_titulo` varchar(45) NOT NULL,
  `tra_descripcion` varchar(500) NOT NULL,
  `tra_fecha` date NOT NULL,
  `tra_fecha_fin` date NOT NULL,
  `tra_estado` tinyint(4) DEFAULT NULL,
  `usr_id` int(11) DEFAULT NULL,
  `tra_compartida` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`tra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_nombre` varchar(45) NOT NULL,
  `usr_apellido` varchar(45) NOT NULL,
  `usr_email` varchar(45) NOT NULL,
  `usr_pass` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
