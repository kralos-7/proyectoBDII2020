-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2020 at 09:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sociedadmedica`
--

-- --------------------------------------------------------

--
-- Table structure for table `centro`
--

CREATE TABLE `centro` (
  `idCentro` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `centro`
--

INSERT INTO `centro` (`idCentro`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Oficina Central', 'Puerto Escondido,Oaxaca', '9541274856'),
(2, 'Centro 2', 'Oaxaca Oaxaca,Mexico', '2527453645'),
(3, 'Centro 3', 'Puebla Puebla,Mexico', '2223647564');

-- --------------------------------------------------------

--
-- Table structure for table `consulta`
--

CREATE TABLE `consulta` (
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `idCentro` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idEspecialidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `salario` float NOT NULL,
  `fechaIngreso` date NOT NULL,
  `idCentro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombre`, `direccion`, `salario`, `fechaIngreso`, `idCentro`) VALUES
(1, 'Roberto', 'Av.prueba1', 12500, '2019-08-17', 1),
(2, 'Artur', 'Av.prueba2', 5300, '2019-07-15', 1),
(3, 'Goziel', 'Av.prueba2', 3000, '2020-06-24', 1),
(4, 'William', 'Av.prueba4', 4000, '2006-04-27', 1),
(5, 'Rosalia', 'Av.prueba5', 2000, '2014-11-24', 1),
(6, 'Franco', 'Av.prueba6', 4000, '2006-02-04', 1),
(7, 'Samuel', 'Av.prueba7', 5000, '2007-03-18', 1),
(8, 'Mario', 'Av.prueba8', 5000, '2016-10-02', 1),
(9, 'Jafet', 'Av.prueba9', 2000, '2003-08-20', 1),
(10, 'Fatima', 'Av.prueba10', 5000, '2003-02-06', 1),
(11, 'Rosario', 'Av.prueba11', 3000, '2018-06-16', 1),
(12, 'Estefania', 'Av.prueba12', 2000, '2002-10-24', 1),
(13, 'Pablo', 'Av.prueba13', 5000, '2004-04-24', 1),
(14, 'Ulises', 'Av.prueba14', 6000, '2005-10-03', 1),
(15, 'Augusto', 'Av.prueba15', 5000, '2004-07-18', 1),
(16, 'Richart', 'Av.prueba16', 2000, '2003-03-09', 1),
(17, 'Samanta', 'Av.prueba17', 3000, '2000-02-08', 1),
(18, 'Carla', 'Av.prueba18', 2000, '2009-07-19', 1),
(19, 'Carlos', 'Av.prueba19', 3000, '2009-11-23', 1),
(20, 'Carime', 'Av.prueba20', 5000, '2014-08-15', 1),
(21, 'Esteban', 'Av.prueba21', 4000, '2002-10-18', 1),
(22, 'Eliot', 'Av.prueba22', 2000, '2013-10-15', 1),
(23, 'Abisael', 'Av.prueba23', 2000, '2016-01-04', 1),
(24, 'Adward', 'Av.prueba24', 6000, '2012-06-17', 1),
(25, 'Esther', 'Av.prueba25', 2000, '2000-09-11', 1),
(26, 'Erto', 'Av.prueba26', 3000, '2013-05-13', 1),
(27, 'Isaias', 'Av.prueba27', 4000, '2011-07-05', 1),
(28, 'Sara', 'Av.prueba28', 3000, '2010-05-06', 1),
(29, 'Ronaldo', 'Av.prueba29', 4000, '2017-02-20', 1),
(30, 'Luz', 'Av.prueba30', 3000, '2012-05-19', 1),
(31, 'Albina', 'Av.prueba31', 6000, '2002-04-24', 1),
(32, 'Eduardo', 'Av.prueba32', 5000, '2006-05-10', 1),
(33, 'Celina', 'Av.prueba33', 2000, '2006-01-17', 1),
(34, 'Erika', 'Av.prueba34', 2000, '2017-11-17', 1),
(35, 'Maru', 'Av.prueba35', 2000, '2007-02-11', 2),
(36, 'Aneel', 'Av.prueba36', 4000, '2014-04-07', 2),
(37, 'Paco', 'Av.prueba37', 2000, '2017-11-18', 2),
(38, 'Carole', 'Av.prueba38', 3000, '2013-08-11', 2),
(39, 'Gael', 'Av.prueba39', 3000, '2010-05-19', 2),
(40, 'Josafat', 'Av.prueba40', 3000, '2011-07-01', 2),
(41, 'Atenas', 'Av.prueba41', 2000, '2002-07-27', 2),
(42, 'Gabriel', 'Av.prueba42', 3000, '2007-10-09', 2),
(43, 'Rosario', 'Av.prueba43', 5000, '2009-09-23', 2),
(44, 'Manuel', 'Av.prueba44', 5000, '2007-04-17', 2),
(45, 'Mora', 'Av.prueba45', 5000, '2014-03-10', 2),
(46, 'Martin', 'Av.prueba46', 3000, '2008-03-27', 2),
(47, 'Serafin', 'Av.prueba47', 6000, '2012-09-03', 2),
(48, 'Elir', 'Av.prueba48', 6000, '2009-08-12', 2),
(49, 'Jair', 'Av.prueba49', 5000, '2011-07-13', 2),
(50, 'Juan', 'Av.prueba50', 2000, '2010-11-27', 2),
(51, 'Jose Luis', 'Av.prueba51', 2000, '2005-10-16', 2),
(52, 'Jose', 'Av.prueba52', 5000, '2001-10-21', 2),
(53, 'Maria Guadalupe', 'Av.prueba53', 4000, '2000-06-10', 2),
(54, 'Francisco', 'Av.prueba54', 5000, '2001-05-24', 2),
(55, 'Guadalupe', 'Av.prueba55', 2000, '2007-09-06', 2),
(56, 'Mariar', 'Av.prueba56', 2000, '2003-07-21', 2),
(57, 'Juana', 'Av.prueba57', 3000, '2000-04-25', 2),
(58, 'Antonio', 'Av.prueba58', 6000, '2000-05-11', 2),
(59, 'Jesus', 'Av.prueba59', 4000, '2008-01-19', 2),
(60, 'Miguel Angel', 'Av.prueba60', 3000, '2013-07-06', 2),
(61, 'Pedro', 'Av.prueba61', 6000, '2014-02-13', 2),
(62, 'Alejandro', 'Av.prueba62', 3000, '2006-03-23', 2),
(63, 'Manuel', 'Av.prueba63', 6000, '2018-05-23', 2),
(64, 'Margarita', 'Av.prueba64', 6000, '2007-05-14', 2),
(65, 'Maria del Carmen', 'Av.prueba65', 3000, '2011-08-01', 3),
(66, 'Juan Carlos', 'Av.prueba66', 3000, '2010-03-23', 3),
(67, 'Roberto', 'Av.prueba67', 2000, '2018-11-16', 3),
(68, 'Fernando', 'Av.prueba68', 4000, '2017-10-17', 3),
(69, 'Daniel', 'Av.prueba69', 4000, '2005-03-22', 3),
(70, 'Carlos', 'Av.prueba70', 5000, '2003-01-09', 3),
(71, 'Jorge', 'Av.prueba71', 5000, '2013-04-06', 3),
(72, 'Ricardo', 'Av.prueba72', 4000, '2006-07-19', 3),
(73, 'Miguel', 'Av.prueba73', 4000, '2011-06-09', 3),
(74, 'Eduardo', 'Av.prueba74', 3000, '2011-05-27', 3),
(75, 'Javier', 'Av.prueba75', 6000, '2016-10-22', 3),
(76, 'Rafael', 'Av.prueba76', 6000, '2003-10-03', 3),
(77, 'Martinn', 'Av.prueba77', 3000, '2018-06-01', 3),
(78, 'Raul', 'Av.prueba78', 6000, '2010-08-24', 3),
(79, 'David', 'Av.prueba79', 2000, '2012-08-02', 3),
(80, 'Josefina', 'Av.prueba80', 5000, '2009-06-13', 3),
(81, 'Jose Antonio', 'Av.prueba81', 3000, '2002-07-20', 3),
(82, 'Arturo', 'Av.prueba82', 5000, '2006-04-09', 3),
(83, 'Marco Antonio', 'Av.prueba83', 6000, '2006-10-13', 3),
(84, 'Jose Manuel', 'Av.prueba84', 3000, '2005-07-23', 3),
(85, 'Francisco Javier', 'Av.prueba85', 3000, '2003-02-20', 3),
(86, 'Enrique', 'Av.prueba86', 4000, '2006-05-20', 3),
(87, 'Veronica', 'Av.prueba87', 3000, '2013-02-22', 3),
(88, 'Gerardo', 'Av.prueba88', 4000, '2016-05-12', 3),
(89, 'Maria Elena', 'Av.prueba89', 2000, '2006-09-03', 3),
(90, 'Leticia', 'Av.prueba90', 5000, '2017-07-23', 3),
(91, 'Rosa', 'Av.prueba91', 4000, '2005-08-21', 3),
(92, 'Mario', 'Av.prueba92', 3000, '2017-01-04', 3),
(93, 'Francisca', 'Av.prueba93', 5000, '2018-07-03', 3),
(94, 'Alfredo', 'Av.prueba94', 3000, '2002-03-01', 3),
(95, 'Teresa', 'Av.prueba95', 2000, '2004-03-27', 3),
(96, 'Alicia', 'Av.prueba96', 6000, '2005-09-22', 3),
(97, 'Sergio', 'Av.prueba97', 5000, '2010-06-21', 3),
(98, 'Alberto', 'Av.prueba98', 4000, '2007-04-14', 3),
(99, 'Luis', 'Av.prueba99', 5000, '2009-09-10', 3),
(100, 'Armando', 'Av.prueba100', 6000, '2015-02-25', 3);

-- --------------------------------------------------------

--
-- Table structure for table `especialidad`
--

CREATE TABLE `especialidad` (
  `idEspecialidad` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `especialidad`
--

INSERT INTO `especialidad` (`idEspecialidad`, `nombre`, `descripcion`) VALUES
(1, 'Dermatologo', 'Una descripcion de que es un Dermatologo'),
(2, 'Dermatologo', 'Una descripcion de que es un Dermatologo'),
(3, 'Gastroenterologo', 'Una descripcion de que es un Gastroenterologo'),
(4, 'Hematologo', 'Una descripcion de que es un Hematologo'),
(5, 'Neumologo', 'Una descripcion de que es un Neumologo'),
(6, 'Dermatologo', 'Una descripcion de que es un Dermatologo'),
(7, 'Otorringolaringologo', 'Una descripcion de que es un Otorringolaringologo'),
(8, 'Urologo', 'Una descripcion de que es un Urologo'),
(9, 'Hematologo', 'Una descripcion de que es un Hematologo'),
(10, 'Dermatologo', 'Una descripcion de que es un Dermatologo'),
(11, 'Oftalmologo', 'Una descripcion de que es un Oftalmologo'),
(12, 'Gastroenterologo', 'Una descripcion de que es un Gastroenterologo'),
(13, 'Hematologo', 'Una descripcion de que es un Hematologo'),
(14, 'Otorringolaringologo', 'Una descripcion de que es un Otorringolaringologo'),
(15, 'Neurologo', 'Una descripcion de que es un Neurologo'),
(16, 'Oftalmologo', 'Una descripcion de que es un Oftalmologo'),
(17, 'Psicologo', 'Una descripcion de que es un Psicologo'),
(18, 'Hematologo', 'Una descripcion de que es un Hematologo'),
(19, 'Urologo', 'Una descripcion de que es un Urologo'),
(20, 'Oftalmologo', 'Una descripcion de que es un Oftalmologo'),
(21, 'Oftalmologo', 'Una descripcion de que es un Oftalmologo'),
(22, 'Cardiologo', 'Una descripcion de que es un Cardiologo'),
(23, 'Oftalmologo', 'Una descripcion de que es un Oftalmologo'),
(24, 'Urologo', 'Una descripcion de que es un Urologo'),
(25, 'Hematologo', 'Una descripcion de que es un Hematologo'),
(26, 'Gastroenterologo', 'Una descripcion de que es un Gastroenterologo'),
(27, 'Pediatra', 'Una descripcion de que es un Pediatra'),
(28, 'Psicologo', 'Una descripcion de que es un Psicologo'),
(29, 'Dermatologo', 'Una descripcion de que es un Dermatologo'),
(30, 'Oftalmologo', 'Una descripcion de que es un Oftalmologo');

-- --------------------------------------------------------

--
-- Table structure for table `medico`
--

CREATE TABLE `medico` (
  `funcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `experiencia` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `centro`
--
ALTER TABLE `centro`
  ADD PRIMARY KEY (`idCentro`);

--
-- Indexes for table `consulta`
--
ALTER TABLE `consulta`
  ADD UNIQUE KEY `idCentro` (`idCentro`),
  ADD UNIQUE KEY `idEmpleado` (`idEmpleado`),
  ADD UNIQUE KEY `idEspecialidad` (`idEspecialidad`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idCentro` (`idCentro`);

--
-- Indexes for table `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`idEspecialidad`);

--
-- Indexes for table `medico`
--
ALTER TABLE `medico`
  ADD UNIQUE KEY `idEmpleado` (`idEmpleado`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`idCentro`) REFERENCES `centro` (`idCentro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idCentro`) REFERENCES `centro` (`idCentro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
