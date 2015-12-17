-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2015 a las 21:03:59
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `planificador`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`tra_id`, `tra_titulo`, `tra_descripcion`, `tra_fecha`, `tra_fecha_fin`, `tra_estado`, `usr_id`, `tra_compartida`) VALUES
(1, 'Hola', 'aljasdjasdkaskfaksd david gato', '2015-09-22', '2015-09-30', 2, 1, 1),
(2, 'Hola 2', 'Hola mundo asdfasdf', '2015-09-22', '2015-11-19', 1, 2, 3),
(3, 'octubre', 'Empieza octubre...', '2015-09-26', '2015-11-04', 3, 1, 0),
(4, 'mes que viene', 'Otra tarea en el mes de octubre', '2015-09-26', '2015-11-18', 1, 2, 1),
(5, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nsdfgsdgfsgwerwerwerqweqe', '2015-10-11', '2015-11-17', 0, 1, 0),
(6, 'Tarea de prueba', 'Tarea de prueba de ingreso con el ID del usuario', '2015-11-10', '2015-11-17', 1, 2, 0),
(7, 'Tarea de prueba', 'Tarea de prueba de ingreso con el ID del usuario', '2015-11-10', '2015-11-12', 2, 2, 1),
(8, 'Tarea de prueba 2', 'otra prueba', '2015-11-10', '2015-11-18', 1, 2, 0),
(9, 'Tarea de prueba', 'se realiza la prueba de ingreso de una tarea de un usuario', '2015-11-10', '2015-11-20', 1, 2, 0),
(10, 'Tarea de prueba', 'asasd erery ertety 231313', '2015-11-10', '2015-11-19', 1, 1, 1),
(11, 'Tarea de fecha', 'Se va a validar el ingreso de una fecha', '2015-11-10', '2015-11-17', 2, 1, 0),
(12, 'prueba fecha actual', 'Hoy es el dia de la entrega....', '2015-11-17', '2015-11-18', 2, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usr_id`, `usr_nombre`, `usr_apellido`, `usr_email`, `usr_pass`) VALUES
(1, 'juan', 'ibarra', 'ibarraedu@gmail.com', 'admin'),
(2, 'Nacho', 'Arce', 'nacho@gmail.com', '1234'),
(5, 'lola', 'mendoza', 'lolita@hotmail.com', '1234'),
(6, 'Arnold', 'Schwarzenegger', 'terminator@mail.com', '666');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
