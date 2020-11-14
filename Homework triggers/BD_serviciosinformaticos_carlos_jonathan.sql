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
-- Database: `serviciosinformaticos`
--

-- --------------------------------------------------------

--
-- Table structure for table `edificio`
--

CREATE TABLE `edificio` (
  `idEdificio` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `edificio`
--

INSERT INTO `edificio` (`idEdificio`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Taj Mahal', '	AV. INDEPENDENCIA NO. 748', '1234567890'),
(2, 'Torre de Pisa', 'AV. INDEPENDENCIA NO. 985-A', '1234567891'),
(3, 'Coliseo', 'AV. 5 DE MAYO NO 1253', '1234567892');

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `idUnidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `nombre`, `apellidos`, `direccion`, `idUnidad`) VALUES
(1, 'JUAN', 'García', 'AV. 20 DE NOVIEMBRE NO.1024', 12),
(2, 'JOSÉ LUIS', 'Galindo', 'AV. 20 DE NOVIEMBRE NO. 1060', 10),
(3, 'JOSÉ', 'Gaitán', 'AV. INDEPENDENCIA NO. 985-A', 10),
(4, 'MARÍA GUADALUPE', 'Galeno', 'CARRETERA A LOMA ALTA S/N.', 10),
(5, 'FRANCISCO', 'Galindo', 'AV. 20 DE NOVIEMBRE NO. 1060', 1),
(6, 'GUADALUPE', 'Galván', 'AV.INDEPENDENCIA NO.1010', 8),
(7, 'MARÍA', 'Gaitán', 'AV. INDEPENDENCIA NO. 241', 7),
(8, 'JUANA', 'Galeano', 'AV. INDEPENDENCIA NO. 545', 6),
(9, 'ANTONIO', 'Galindo', 'CALLE AGUSTIN LARA NO. 69-B', 11),
(10, 'JESÚS', 'Gaitán', 'CALLE AGUSTIN LARA NO. 69-B', 10),
(11, 'MIGUEL ÁNGEL', 'Galán', 'AV.INDEPENDENCIA NO.1010', 11),
(12, 'PEDRO', 'Galán', 'AV. 20 DE NOVIEMBRE NO.1024', 2),
(13, 'ALEJANDRO', 'Gaitán', 'AV. INDEPENDENCIA NO. 545', 3),
(14, 'MANUEL', 'Gallegos', 'AV. INDEPENDENCIA NO. 779', 10),
(15, 'MARGARITA', 'Gaitán', 'AV. INDEPENDENCIA NO. 241', 2),
(16, 'MARÍA DEL CARMEN', 'Gaitán', 'AV. INDEPENDENCIA NO. 985-A', 7),
(17, 'JUAN CARLOS', 'Galindo', 'AV. INDEPENDENCIA NO. 545', 6),
(18, 'ROBERTO', 'Galán', 'AV. INDEPENDENCIA NO. 779', 7),
(19, 'FERNANDO', 'Galeno', 'AV. INDEPENDENCIA NO. 779', 10),
(20, 'DANIEL', 'García', 'AV. INDEPENDENCIA NO. 779', 1),
(21, 'CARLOS', 'Galeno', 'AV. INDEPENDENCIA NO. 985-A', 2),
(22, 'JORGE', 'Galeno', 'AV. INDEPENDENCIA NO. 779', 2),
(23, 'RICARDO', 'Gaitán', 'AV. INDEPENDENCIA NO. 985-A', 3),
(24, 'MIGUEL', 'Galván', 'AV. 20 DE NOVIEMBRE NO.1024', 7),
(25, 'EDUARDO', 'Galeano', 'CARRETERA A LOMA ALTA S/N.', 12),
(26, 'JAVIER', 'Gámez', 'AV. INDEPENDENCIA NO. 241', 7),
(27, 'RAFAEL', 'Gámez', 'AV. 20 DE NOVIEMBRE NO. 1060', 9),
(28, 'MARTÍN', 'Gallegos', 'AV. INDEPENDENCIA NO. 779', 8),
(29, 'RAÚL', 'Galindo', 'AV. 20 DE NOVIEMBRE NO. 1060', 8),
(30, 'DAVID', 'Gallegos', 'AV. INDEPENDENCIA NO. 545', 1),
(31, 'JOSEFINA', 'Gámez', 'AV. 20 DE NOVIEMBRE NO.1024', 10),
(32, 'JOSÉ ANTONIO', 'Galán', 'CALLE AGUSTIN LARA NO. 69-B', 9),
(33, 'ARTURO', 'Galán', 'AV. 20 DE NOVIEMBRE NO. 1060', 7),
(34, 'MARCO ANTONIO', 'Gamboa', 'AV. INDEPENDENCIA NO. 779', 10),
(35, 'JOSÉ MANUEL', 'Galán', 'AV.INDEPENDENCIA NO.1010', 1),
(36, 'FRANCISCO JAVIER', 'Gallegos', 'AV. INDEPENDENCIA NO. 545', 1),
(37, 'ENRIQUE', 'Galeano', 'AV. INDEPENDENCIA NO. 779', 11),
(38, 'VERÓNICA', 'Galeano', 'CALLE MATAMOROS NO.280', 4),
(39, 'GERARDO', 'Gallegos', 'AV. INDEPENDENCIA NO. 779', 4),
(40, 'MARÍA ELENA', 'Galindo', 'CALLE MATAMOROS NO.280', 12),
(41, 'LETICIA', 'Galván', 'CALLE MATAMOROS NO.280', 4),
(42, 'ROSA', 'Galindo', 'AV. INDEPENDENCIA NO. 779', 8),
(43, 'MARIO', 'García', 'AV. 20 DE NOVIEMBRE NO. 1060', 10),
(44, 'FRANCISCA', 'Galeno', 'AV. INDEPENDENCIA NO. 985-A', 2),
(45, 'ALFREDO', 'Galindo', 'CARRETERA A LOMA ALTA S/N.', 7),
(46, 'TERESA', 'Gámez', 'AV. INDEPENDENCIA NO. 241', 1),
(47, 'ALICIA', 'Galeano', 'CALLE AGUSTIN LARA NO. 69-B', 12),
(48, 'MARÍA FERNANDA', 'Gamboa', 'CALLE AGUSTIN LARA NO. 69-B', 12),
(49, 'SERGIO', 'Galeano', 'CARRETERA A LOMA ALTA S/N.', 6),
(50, 'ALBERTO', 'Gallegos', 'AV. INDEPENDENCIA NO. 241', 9),
(51, 'LUIS', 'Galeno', 'CALLE AGUSTIN LARA NO. 69-B', 11),
(52, 'ARMANDO', 'García', 'CALLE MATAMOROS NO.280', 5),
(53, 'ALEJANDRA', 'Galeno', 'AV. 20 DE NOVIEMBRE NO. 1060', 9),
(54, 'MARTHA', 'Galván', 'CALLE MATAMOROS NO.280', 1),
(55, 'SANTIAGO', 'Gamboa', 'AV. INDEPENDENCIA NO. 545', 12),
(56, 'YOLANDA', 'Gámez', 'CARRETERA A LOMA ALTA S/N.', 8),
(57, 'PATRICIA', 'Galeno', 'CARRETERA A LOMA ALTA S/N.', 10),
(58, 'MARÍA DE LOS ÁNGELES', 'Galán', 'CARRETERA A LOMA ALTA S/N.', 1),
(59, 'JUAN MANUEL', 'Galván', 'AV. INDEPENDENCIA NO. 241', 3),
(60, 'ROSA MARÍA', 'Gamboa', 'AV.INDEPENDENCIA NO.1010', 10),
(61, 'ELIZABETH', 'Gallegos', 'AV. INDEPENDENCIA NO. 985-A', 1),
(62, 'GLORIA', 'Galeano', 'CARRETERA A LOMA ALTA S/N.', 11),
(63, 'ÁNGEL', 'Gallegos', 'AV. INDEPENDENCIA NO. 241', 12),
(64, 'GABRIELA', 'Gamboa', 'CARRETERA A LOMA ALTA S/N.', 9),
(65, 'SALVADOR', 'Galán', 'AV. 20 DE NOVIEMBRE NO. 1060', 3),
(66, 'VÍCTOR MANUEL', 'García', 'CALLE AGUSTIN LARA NO. 69-B', 4),
(67, 'SILVIA', 'Galván', 'AV. INDEPENDENCIA NO. 241', 3),
(68, 'MARÍA DE GUADALUPE', 'Galeno', 'AV. 20 DE NOVIEMBRE NO.1024', 5),
(69, 'MARÍA DE JESÚS', 'Galindo', 'AV. 20 DE NOVIEMBRE NO. 1060', 5),
(70, 'GABRIEL', 'Galeano', 'AV. INDEPENDENCIA NO. 241', 1),
(71, 'ANDRÉS', 'Galeno', 'AV.INDEPENDENCIA NO.1010', 1),
(72, 'ÓSCAR', 'Gaitán', 'AV. INDEPENDENCIA NO. 241', 2),
(73, 'GUILLERMO', 'Galindo', 'CALLE AGUSTIN LARA NO. 69-B', 8),
(74, 'ANA MARÍA', 'Gaitán', 'AV. 20 DE NOVIEMBRE NO. 1060', 7),
(75, 'RAMÓN', 'Gamboa', 'CALLE MATAMOROS NO.280', 1),
(76, 'MARÍA ISABEL', 'Galán', 'CARRETERA A LOMA ALTA S/N.', 7),
(77, 'PABLO', 'Gámez', 'AV. 20 DE NOVIEMBRE NO.1024', 9),
(78, 'RUBEN', 'García', 'AV. INDEPENDENCIA NO. 545', 10),
(79, 'ANTONIA', 'Galeno', 'AV.INDEPENDENCIA NO.1010', 10),
(80, 'MARÍA LUISA', 'Gamboa', 'AV. INDEPENDENCIA NO. 779', 2),
(81, 'LUIS ÁNGEL', 'Gamboa', 'AV. INDEPENDENCIA NO. 779', 4),
(82, 'MARÍA DEL ROSARIO', 'Galeano', 'AV.INDEPENDENCIA NO.1010', 2),
(83, 'FELIPE', 'Gámez', 'AV. 20 DE NOVIEMBRE NO. 1060', 10),
(84, 'JORGE JESÚS', 'Galeano', 'AV. 20 DE NOVIEMBRE NO.1024', 5),
(85, 'JAIME', 'Galeno', 'AV.INDEPENDENCIA NO.1010', 4),
(86, 'JOSÉ GUADALUPE', 'García', 'AV. INDEPENDENCIA NO. 779', 7),
(87, 'JULIO CESAR', 'Galeano', 'CARRETERA A LOMA ALTA S/N.', 10),
(88, 'JOSÉ DE JESÚS', 'Galván', 'AV. 20 DE NOVIEMBRE NO. 1060', 9),
(89, 'DIEGO', 'Galindo', 'AV. INDEPENDENCIA NO. 779', 8),
(90, 'ARACELI', 'Gamboa', 'AV. 20 DE NOVIEMBRE NO.1024', 7),
(91, 'ANDREA', 'Gaitán', 'CALLE MATAMOROS NO.280', 2),
(92, 'ISABEL', 'Gámez', 'AV. INDEPENDENCIA NO. 779', 2),
(93, 'MARÍA TERESA', 'Gaitán', 'AV. 20 DE NOVIEMBRE NO. 1060', 12),
(94, 'IRMA', 'García', 'CARRETERA A LOMA ALTA S/N.', 7),
(95, 'CARMEN', 'Gamboa', 'CARRETERA A LOMA ALTA S/N.', 10),
(96, 'LUCÍA', 'Gaitán', 'AV. 20 DE NOVIEMBRE NO. 1060', 1),
(97, 'ADRIANA', 'Galeano', 'AV.INDEPENDENCIA NO.1010', 6),
(98, 'AGUSTÍN', 'Galán', 'AV. INDEPENDENCIA NO. 545', 8),
(99, 'MARÍA DE LA LUZ', 'Galindo', 'AV. INDEPENDENCIA NO. 779', 4),
(100, 'GUSTAVO', 'Gámez', 'AV. INDEPENDENCIA NO. 985-A', 4);

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `nombre`, `direccion`) VALUES
(1, 'IKEA', 'CALLE AGUSTIN LARA NO. 69-B'),
(2, 'CANON', 'AV. INDEPENDENCIA NO. 241'),
(3, 'LEGO', 'AV. INDEPENDENCIA NO. 779'),
(4, 'SONY', 'AV. 20 DE NOVIEMBRE NO.1024'),
(5, 'HAAGEN DASZ', 'CARRETERA A LOMA ALTA S/N.'),
(6, 'WD-40', 'AV. 20 DE NOVIEMBRE NO.'),
(7, 'YAHOO', 'CALLE ZARAGOZA NO. 1010'),
(8, 'PEPSI', 'CALLE MATAMOROS NO. 310'),
(9, 'GOOGLE', 'AV. 20 DE NOVIEMBRE NO.859-B'),
(10, 'VIRGIN', 'AV. 20 DE NOVIEMBRE NO 1053'),
(11, 'SPOTYFY', 'BENITO JUAREZ NO. 1466-A'),
(12, 'ORACLE', 'CALLE MATAMOROS NO.280');

-- --------------------------------------------------------

--
-- Table structure for table `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `presupuesto` text COLLATE utf8_spanish_ci NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idUnidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `proyecto`
--

INSERT INTO `proyecto` (`idProyecto`, `nombre`, `presupuesto`, `idEmpresa`, `idEmpleado`, `idUnidad`) VALUES
(1, 'Promover', '37549', 5, 45, 10),
(2, 'Visión Futuro', '682864', 5, 13, 1),
(3, 'Sopa De letras', '453767', 8, 91, 2),
(4, 'Abriendo Caminos', '324750', 10, 1, 3),
(5, 'Promoviendo El Aprendizaje Social', '104766', 8, 60, 2),
(6, 'Mente X', '904632', 11, 54, 11),
(7, 'Fomentamos', '91291', 2, 34, 3),
(8, 'Omega', '175711', 10, 48, 8),
(9, 'Proyecto Y', '271759', 5, 27, 4),
(10, 'Escape', '577558', 12, 47, 4),
(11, 'Aprender Para Crecer', '58302', 8, 68, 1),
(12, 'En Movimiento', '180525', 4, 88, 9),
(13, 'Expandiendo Mentes', '602163', 8, 88, 2),
(14, 'La Zona Del Saber', '10665', 7, 66, 8),
(15, 'Lectomanía', '792612', 5, 4, 3),
(16, 'Proyecto Corono', '503075', 8, 31, 2),
(17, 'Grandes Saberes', '531075', 5, 29, 7),
(18, 'Nutrición Educativa', '669096', 9, 11, 4),
(19, 'Plan Maestro', '239645', 11, 29, 7),
(20, 'PotenciArte', '940309', 7, 24, 5),
(21, 'Educativamente Sano', '660665', 4, 7, 2),
(22, 'EL Puente Del Saber', '999747', 10, 60, 10),
(23, 'Creciendo Juntos', '321549', 12, 7, 8),
(24, 'Al Compás', '988252', 7, 27, 9),
(25, 'Estimulando Con Amor', '166536', 10, 36, 12),
(26, 'Raíces Del Cambio', '861413', 5, 96, 6),
(27, 'Pequeños Jardines', '354546', 2, 70, 10),
(28, 'Óptica Infantil', '840012', 12, 98, 1),
(29, 'El Niño Y Su Entorno', '209820', 5, 90, 5),
(30, 'Semilla Elemental', '204406', 3, 53, 7);

-- --------------------------------------------------------

--
-- Table structure for table `trabaja_en`
--

CREATE TABLE `trabaja_en` (
  `idEmpleado` int(11) NOT NULL,
  `idProyecto` int(11) NOT NULL,
  `horas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unidad`
--

CREATE TABLE `unidad` (
  `idUnidad` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `area` text COLLATE utf8_spanish_ci NOT NULL,
  `responsable` text COLLATE utf8_spanish_ci NOT NULL,
  `idEdificio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `unidad`
--

INSERT INTO `unidad` (`idUnidad`, `nombre`, `area`, `responsable`, `idEdificio`) VALUES
(1, 'Alpha', 'Área de gestión, planificación y estrategia de servicios', 'JUAN', 2),
(2, 'Bravo', 'Área de comunicaciones', 'JOSÉ LUIS', 2),
(3, 'Charlie', 'Área de comunicaciones', 'JOSÉ', 3),
(4, 'Delta', 'Área de sistemas e infraestructuras', 'MARÍA GUADALUPE', 3),
(5, 'Echo', 'Área de gestión, planificación y estrategia de servicios', 'FRANCISCO', 2),
(6, 'Foxtrot', 'Área de gestión, planificación y estrategia de servicios', 'GUADALUPE', 3),
(7, 'Golf', 'Área de control de riesgos', 'MARÍA', 1),
(8, 'Hotel', 'Área de sistemas e infraestructuras', 'JUANA', 1),
(9, 'India', 'Área de sistemas e infraestructuras', 'ANTONIO', 3),
(10, 'Juliet', 'Área de comunicaciones', 'JESÚS', 1),
(11, 'Kilo', 'Área de Centro de atención al usuario', 'MIGUEL ÁNGEL', 1),
(12, 'Lima', 'Área de gestión, planificación y estrategia de servicios', 'PEDRO', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edificio`
--
ALTER TABLE `edificio`
  ADD PRIMARY KEY (`idEdificio`);

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idUnidad` (`idUnidad`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indexes for table `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`idProyecto`),
  ADD KEY `idEmpresa` (`idEmpresa`,`idEmpleado`,`idUnidad`),
  ADD KEY `idEmpleado` (`idEmpleado`),
  ADD KEY `idUnidad` (`idUnidad`);

--
-- Indexes for table `trabaja_en`
--
ALTER TABLE `trabaja_en`
  ADD KEY `idEmpleado` (`idEmpleado`,`idProyecto`),
  ADD KEY `idProyecto` (`idProyecto`);

--
-- Indexes for table `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`idUnidad`),
  ADD KEY `idEdificio` (`idEdificio`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idUnidad`) REFERENCES `unidad` (`idUnidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proyecto_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proyecto_ibfk_3` FOREIGN KEY (`idUnidad`) REFERENCES `unidad` (`idUnidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trabaja_en`
--
ALTER TABLE `trabaja_en`
  ADD CONSTRAINT `trabaja_en_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trabaja_en_ibfk_2` FOREIGN KEY (`idProyecto`) REFERENCES `proyecto` (`idProyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `unidad`
--
ALTER TABLE `unidad`
  ADD CONSTRAINT `unidad_ibfk_1` FOREIGN KEY (`idEdificio`) REFERENCES `edificio` (`idEdificio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
