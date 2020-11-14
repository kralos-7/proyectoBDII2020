-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2020 at 08:55 PM
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
-- Database: `libros`
--

-- --------------------------------------------------------

--
-- Table structure for table `almacen`
--

CREATE TABLE `almacen` (
  `idAlmacen` int(11) NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `provincia` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `valor` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `almacen`
--

INSERT INTO `almacen` (`idAlmacen`, `ciudad`, `provincia`, `cp`, `valor`) VALUES
(1, 'Oaxaca', 'Puerto Escondido', '71980', 0),
(2, 'Puebla', 'Cholula', '21980', 0),
(3, 'Mexico', 'Tepito', '57420', 0);

-- --------------------------------------------------------

--
-- Table structure for table `existencias`
--

CREATE TABLE `existencias` (
  `idLibro` int(11) NOT NULL,
  `idAlmacen` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `libro`
--

CREATE TABLE `libro` (
  `idLibro` int(11) NOT NULL,
  `autor` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `existencias` int(11) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `libro`
--

INSERT INTO `libro` (`idLibro`, `autor`, `titulo`, `existencias`, `precio`) VALUES
(1, 'JUAN', 'La libertad', 0, 123),
(2, 'JESÚS', 'El círculo de la vida', 0, 258),
(3, 'GUSTAVO', 'La vanidad', 0, 112),
(4, 'MARIA CARMEN', 'La muerte', 3, 184),
(5, 'MARIA', 'Poesía', 2, 199),
(6, 'CARMEN', 'La inocencia', 4, 296),
(7, 'ANA MARIA', 'Poesía', 1, 112),
(8, 'JOSEFA', 'El círculo de la vida', 4, 282),
(9, 'ISABEL', 'La libertad', 1, 241),
(10, 'MARIA PILAR', 'La infancia', 2, 106),
(11, 'MARIA DOLORES', 'El amor', 2, 226),
(12, 'LAURA', 'El racismo', 2, 193),
(13, 'MIGUEL ÁNGEL', 'El verdadero heroísmo', 0, 272),
(14, 'MARIA TERESA', 'El miedo', 1, 195),
(15, 'ANA', 'Los peligros de la ignorancia', 3, 190),
(16, 'CRISTINA', 'Relato', 3, 205),
(17, 'MARTA', 'Los peligros de la ignorancia', 4, 239),
(18, 'MARIA ANGELES', 'Ensayo', 4, 220),
(19, 'FRANCISCA', 'Novela', 1, 110),
(20, 'LUCIA', 'La maldad', 3, 123),
(21, 'MARIA ISABEL', 'El paso del tiempo', 3, 134),
(22, 'MARIA JOSE', 'Los humanos frente a la naturaleza', 2, 209),
(23, 'ANTONIA', 'El verdadero heroísmo', 4, 103),
(24, 'PEDRO', 'La pérdida de la inocencia', 0, 160),
(25, 'DOLORES', 'El honor', 3, 239),
(26, 'SARA', 'Dramático', 2, 270),
(27, 'PAULA', 'La fuerza de voluntad', 3, 276),
(28, 'ELENA', 'La discriminación', 2, 116),
(29, 'MARIA LUISA', 'El individuo frente a la sociedad', 1, 286),
(30, 'RAQUEL', 'La lucha contra el mal', 1, 125),
(31, 'ROSA MARIA', 'La traición', 3, 269),
(32, 'PILAR', 'Épico o narrativo', 2, 293),
(33, 'CONCEPCION', 'La fe', 3, 235),
(34, 'MANUELA', 'La discriminación', 2, 214),
(35, 'ALEJANDRO', 'El destino', 0, 221),
(36, 'MARIA JESUS', 'El honor', 3, 242),
(37, 'MERCEDES', 'La injusticia', 4, 165),
(38, 'JULIA', 'La maldad', 2, 233),
(39, 'BEATRIZ', 'La fe', 1, 262),
(40, 'NURIA', 'La infancia perdida', 4, 191),
(41, 'SILVIA', 'Cambio frente a tradición', 3, 170),
(42, 'ROSARIO', 'Los humanos frente a las máquinas', 3, 197),
(43, 'JUANA', 'Los nacionalismos', 2, 252),
(44, 'ALBA', 'Novela', 2, 121),
(45, 'IRENE', 'La infancia', 2, 207),
(46, 'MANUEL', 'La fama', 0, 193),
(47, 'TERESA', 'La violencia', 3, 197),
(48, 'ENCARNACION', 'Épico o narrativo', 2, 236),
(49, 'PATRICIA', 'historico', 2, 135),
(50, 'MONTSERRAT', 'historico', 3, 260),
(51, 'ANDREA', 'El poder', 1, 154),
(52, 'ROCIO', 'Ensayo', 1, 235),
(53, 'MONICA', 'La venganza', 4, 207),
(54, 'ROSA', 'La fuerza de voluntad', 3, 120),
(55, 'ALICIA', 'La realización personal', 4, 242),
(56, 'MARIA MAR', 'La tecnología en la sociedad ', 1, 181),
(57, 'MARGARITA', 'Épico o narrativo', 0, 215),
(58, 'SONIA', 'El equilibrio de las fuerzas de la naturaleza', 1, 184),
(59, 'SANDRA', 'El miedo', 1, 108),
(60, 'ANGELA', 'El círculo de la vida', 2, 251),
(61, 'MARINA', 'La tentación', 2, 227),
(62, 'SUSANA', 'La opresión', 2, 161),
(63, 'NATALIA', 'historico', 1, 234),
(64, 'YOLANDA', 'La muerte', 2, 260),
(65, 'MARGARITA', 'El paso del tiempo', 4, 292),
(66, 'MARIA JOSEFA', 'La maldad', 1, 103),
(67, 'CLAUDIA', 'El vacío al alcanzar una meta insustancial', 1, 240),
(68, 'MARÍA DEL CARMEN', 'La violencia', 0, 237),
(69, 'EVA', 'El círculo de la vida', 2, 250),
(70, 'MARIA ROSARIO', 'La maldad', 2, 226),
(71, 'INMACULADA', 'La maternidad', 4, 209),
(72, 'SOFIA', 'historico', 3, 253),
(73, 'MARIA MERCEDES', 'La esperanza', 1, 242),
(74, 'CARLA', 'La esperanza', 2, 275),
(75, 'ANA ISABEL', 'ficcion', 3, 295),
(76, 'ESTHER', 'Dramático', 1, 297),
(77, 'NOELIA', 'Los humanos frente a las máquinas', 2, 274),
(78, 'VERONICA', 'El poder', 4, 153),
(79, 'JUAN CARLOS', 'La venganza', 0, 242),
(80, 'ANGELES', 'El círculo de la vida', 4, 117),
(81, 'NEREA', 'La realización personal', 2, 157),
(82, 'CAROLINA', 'La familia', 2, 266),
(83, 'MARIA VICTORIA', 'La lucha por la supervivencia', 3, 293),
(84, 'EVA MARIA', 'Dramático', 2, 203),
(85, 'INES', 'La tentación', 4, 148),
(86, 'MIRIAM', 'La tecnología en la sociedad ', 4, 268),
(87, 'MARIA ROSA', 'La infancia perdida', 4, 186),
(88, 'DANIELA', 'El círculo de la vida', 2, 202),
(89, 'LORENA', 'La lucha contra el mal', 2, 289),
(90, 'ROBERTO', 'Los humanos frente a las máquinas', 0, 132),
(91, 'ANA BELEN', 'El honor', 3, 296),
(92, 'MARIA ELENA', 'La fama', 1, 131),
(93, 'MARIA CONCEPCION', 'Novela', 2, 275),
(94, 'VICTORIA', 'La lucha por la supervivencia', 4, 220),
(95, 'AMPARO', 'El verdadero heroísmo', 2, 275),
(96, 'MARIA ANTONIA', 'Ideales versus dogmas', 2, 204),
(97, 'CATALINA', 'La inmortalidad', 3, 131),
(98, 'MARTINA', 'Ideales versus dogmas', 2, 283),
(99, 'LIDIA', 'Ensayo', 2, 144),
(100, 'ALEJANDRA', 'Novela', 4, 168),
(101, 'FERNANDO', 'La maldad', 0, 122),
(102, 'CELIA', 'ficcion', 1, 239),
(103, 'MARIA NIEVES', 'La pérdida de la inocencia', 4, 117),
(104, 'CONSUELO', 'La lucha contra el mal', 1, 133),
(105, 'OLGA', 'El individuo frente a la sociedad', 2, 135),
(106, 'AINHOA', 'La soledad', 3, 287),
(107, 'FATIMA', 'La venganza', 1, 184),
(108, 'ANTONIO', 'Cambio frente a tradición', 4, 197),
(109, 'MANUEL', 'La familia', 1, 167),
(110, 'JOSE', 'La fama', 1, 113),
(111, 'FRANCISCO', 'Los nacionalismos', 3, 105),
(112, 'JOSÉ LUIS', 'La venganza', 0, 114),
(113, 'DANIEL', 'La maternidad', 0, 243),
(114, 'DAVID', 'La realización personal', 1, 183),
(115, 'JUAN', 'El miedo', 2, 274),
(116, 'JOSE ANTONIO', 'La maternidad', 1, 126),
(117, 'JAVIER', 'La inocencia', 3, 273),
(118, 'DANIEL', 'La injusticia', 4, 127),
(119, 'JOSE LUIS', 'El equilibrio de las fuerzas de la naturaleza', 2, 184),
(120, 'FRANCISCO JAVIER', 'La familia', 2, 194),
(121, 'CARLOS', 'El dolor de crecer', 2, 207),
(122, 'JESUS', 'Cambio frente a tradición', 4, 275),
(123, 'ALEJANDRO', 'Ideales versus dogmas', 3, 249),
(124, 'CARLOS', 'El racismo', 0, 114),
(125, 'MIGUEL', 'Épico o narrativo', 3, 233),
(126, 'JOSE MANUEL', 'La guerra ', 2, 254),
(127, 'RAFAEL', 'La fuerza de voluntad', 3, 122),
(128, 'MIGUEL ANGEL', 'El racismo', 4, 100),
(129, 'PEDRO', 'El círculo de la vida', 2, 141),
(130, 'PABLO', 'El destino', 4, 181),
(131, 'ANGEL', 'La confianza', 1, 187),
(132, 'SERGIO', 'La lucha por la supervivencia', 4, 221),
(133, 'JOSE MARIA', 'El individuo frente a la sociedad', 1, 170),
(134, 'FERNANDO', 'La tentación', 3, 249),
(135, 'JORGE', 'La vanidad', 0, 129),
(136, 'JORGE', 'El racismo', 1, 144),
(137, 'LUIS', 'La tecnología en la sociedad ', 4, 172),
(138, 'ALBERTO', 'El honor', 1, 110),
(139, 'JUAN CARLOS', 'La inmortalidad', 2, 269),
(140, 'ALVARO', 'La infancia', 4, 241),
(141, 'ADRIAN', 'El orgullo', 3, 289),
(142, 'JUAN JOSE', 'El matrimonio', 1, 147),
(143, 'DIEGO', 'La pérdida de la inocencia', 3, 118),
(144, 'RAUL', 'La esperanza', 4, 244),
(145, 'IVAN', 'La vanidad', 2, 210),
(146, 'RICARDO', 'La inmortalidad', 0, 219),
(147, 'JUAN ANTONIO', 'Épico o narrativo', 2, 152),
(148, 'RUBEN', 'El orgullo', 2, 228),
(149, 'ENRIQUE', 'La amistad', 4, 111),
(150, 'OSCAR', 'Los humanos frente a las máquinas', 4, 166),
(151, 'RAMON', 'La tentación', 1, 112),
(152, 'VICENTE', 'La ambición', 3, 273),
(153, 'ANDRES', 'La libertad', 4, 144),
(154, 'JUAN MANUEL', 'El dolor de crecer', 1, 284),
(155, 'JOAQUIN', 'La amistad', 2, 123),
(156, 'SANTIAGO', 'La venganza', 2, 275),
(157, 'MIGUEL', 'Poesía', 0, 252),
(158, 'VICTOR', 'El matrimonio', 2, 127),
(159, 'EDUARDO', 'La juventud efímera', 4, 236),
(160, 'MARIO', 'Relato', 3, 165),
(161, 'ROBERTO', 'La juventud efímera', 2, 190),
(162, 'JAIME', 'El destino', 3, 228),
(163, 'FRANCISCO JOSE', 'La lucha contra el mal', 1, 257),
(164, 'MARCOS', 'La muerte', 3, 232),
(165, 'IGNACIO', 'Los peligros de la ignorancia', 1, 146),
(166, 'ALFONSO', 'La traición', 2, 161),
(167, 'JORDI', 'La realización personal', 2, 123),
(168, 'EDUARDO', 'La tecnología en la sociedad ', 0, 111),
(169, 'HUGO', 'El honor', 4, 218),
(170, 'RICARDO', 'Poesía', 4, 107),
(171, 'SALVADOR', 'Lírico', 3, 236),
(172, 'GUILLERMO', 'La lucha contra el mal', 1, 155),
(173, 'EMILIO', 'El círculo de la vida', 4, 162),
(174, 'GABRIEL', 'El dolor de crecer', 2, 193),
(175, 'MARC', 'La paternidad', 3, 300),
(176, 'GONZALO', 'El verdadero heroísmo', 2, 204),
(177, 'JULIO', 'El amor', 2, 295),
(178, 'JULIAN', 'La violencia', 1, 191),
(179, 'JAVIER', 'La fama', 0, 253),
(180, 'MOHAMED', 'La inocencia', 1, 104),
(181, 'JOSE MIGUEL', 'El paso del tiempo', 3, 173),
(182, 'TOMAS', 'La familia', 2, 203),
(183, 'MARTIN', 'La inmortalidad', 3, 227),
(184, 'AGUSTIN', 'El dolor de crecer', 3, 100),
(185, 'JOSE RAMON', 'El matrimonio', 4, 284),
(186, 'NICOLAS', 'El dolor de crecer', 1, 292),
(187, 'ISMAEL', 'El paso del tiempo', 4, 165),
(188, 'JOAN', 'La injusticia', 3, 165),
(189, 'FELIX', 'Los humanos frente a la naturaleza', 2, 203),
(190, 'RAFAEL', 'magico', 0, 261),
(191, 'SAMUEL', 'La muerte', 1, 218),
(192, 'CRISTIAN', 'El verdadero heroísmo', 4, 125),
(193, 'AITOR', 'Ensayo', 3, 117),
(194, 'LUCAS', 'Relato', 2, 162),
(195, 'HECTOR', 'El poder', 2, 295),
(196, 'JUAN FRANCISCO', 'Dramático', 1, 201),
(197, 'IKER', 'La infancia', 3, 217),
(198, 'JOSEP', 'El matrimonio', 1, 226),
(199, 'JOSE CARLOS', 'El sacrificio', 3, 187),
(200, 'ALEX', 'La fuerza de voluntad', 2, 228),
(201, 'MARTÍN', 'magico', 0, 134),
(202, 'MARIANO', 'La amistad', 4, 199),
(203, 'DOMINGO', 'La fuerza de voluntad', 1, 238),
(204, 'SEBASTIAN', 'El destino', 3, 180),
(205, 'ALFREDO', 'La búsqueda de la propia identidad', 1, 133),
(206, 'CESAR', 'La lucha por la supervivencia', 1, 209),
(207, 'JOSE ANGEL', 'La confianza', 2, 123),
(208, 'FELIPE', 'La inmortalidad', 4, 266),
(209, 'JOSE IGNACIO', 'La amistad', 1, 207),
(210, 'VICTOR MANUEL', 'La juventud efímera', 3, 160),
(211, 'RODRIGO', 'La lucha contra el mal', 3, 139),
(212, 'RAÚL', 'Los humanos frente a las máquinas', 0, 132),
(213, 'LUIS MIGUEL', 'Caos frente a orden', 1, 285),
(214, 'JOSEFINA', 'La tentación', 3, 135),
(215, 'JOSÉ ANTONIO', 'La violencia', 4, 137),
(216, 'ARTURO', 'La paternidad', 1, 148),
(217, 'MARCO ANTONIO', 'El equilibrio de las fuerzas de la naturaleza', 2, 172),
(218, 'JOSÉ MANUEL', 'La traición', 3, 166),
(219, 'FRANCISCO JAVIER', 'El orgullo', 1, 212),
(220, 'ENRIQUE', 'La esperanza', 3, 252),
(221, 'VERÓNICA', 'El orgullo', 1, 175),
(222, 'GERARDO', 'La infancia perdida', 1, 183),
(223, 'JOSÉ', 'La pérdida de la inocencia', 0, 226),
(224, 'DAVID', 'El honor', 0, 143),
(225, 'MARÍA ELENA', 'La amistad', 2, 195),
(226, 'JOSEFINA', 'La venganza', 0, 278),
(227, 'JOSÉ ANTONIO', 'La injusticia', 0, 180),
(228, 'ARTURO', 'La realización personal', 0, 102),
(229, 'MARCO ANTONIO', 'El matrimonio', 0, 142),
(230, 'JOSÉ MANUEL', 'La búsqueda de la propia identidad', 0, 284),
(231, 'FRANCISCO JAVIER', 'El dolor de crecer', 0, 248),
(232, 'ENRIQUE', 'El equilibrio de las fuerzas de la naturaleza', 0, 239),
(233, 'VERÓNICA', 'Novela', 0, 263),
(234, 'GERARDO', 'La infancia', 0, 117),
(235, 'MARÍA GUADALUPE', 'El vacío al alcanzar una meta insustancial', 0, 165),
(236, 'MARÍA ELENA', 'La familia', 0, 245),
(237, 'LETICIA', 'La guerra ', 0, 260),
(238, 'ROSA', 'La confianza', 0, 152),
(239, 'MARIO', 'La vanidad', 0, 205),
(240, 'FRANCISCA', 'El poder', 0, 227),
(241, 'ALFREDO', 'La inmortalidad', 0, 270),
(242, 'TERESA', 'La maternidad', 0, 248),
(243, 'ALICIA', 'La confianza', 0, 111),
(244, 'MARÍA FERNANDA', 'La maldad', 0, 207),
(245, 'SERGIO', 'ficcion', 0, 101),
(246, 'FRANCISCO', 'El dolor de crecer', 0, 296),
(247, 'ALBERTO', 'El racismo', 0, 144),
(248, 'LUIS', 'La fuerza de voluntad', 0, 179),
(249, 'ARMANDO', 'El individuo frente a la sociedad', 0, 267),
(250, 'ALEJANDRA', 'Los humanos frente a las máquinas', 0, 137),
(251, 'MARTHA', 'La pérdida de la inocencia', 0, 289),
(252, 'SANTIAGO', 'Los humanos frente a la naturaleza', 0, 201),
(253, 'YOLANDA', 'La tentación', 0, 167),
(254, 'PATRICIA', 'El matrimonio', 0, 292),
(255, 'MARÍA DE LOS ÁNGELES', 'Novela', 0, 128),
(256, 'JUAN MANUEL', 'El amor', 0, 148),
(257, 'GUADALUPE', 'historico', 0, 244),
(258, 'ROSA MARÍA', 'El orgullo', 0, 128),
(259, 'ELIZABETH', 'La búsqueda de la propia identidad', 0, 287),
(260, 'GLORIA', 'El sacrificio', 0, 109),
(261, 'ÁNGEL', 'Los peligros de la ignorancia', 0, 188),
(262, 'GABRIELA', 'La esperanza', 0, 110),
(263, 'SALVADOR', 'El amor', 0, 199),
(264, 'VÍCTOR MANUEL', 'La opresión', 0, 168),
(265, 'SILVIA', 'Lírico', 0, 109),
(266, 'MARÍA DE GUADALUPE', 'historico', 0, 131),
(267, 'MARÍA DE JESÚS', 'La guerra ', 0, 298),
(268, 'MARÍA', 'Ideales versus dogmas', 0, 130),
(269, 'GABRIEL', 'Caos frente a orden', 0, 196),
(270, 'ANDRÉS', 'La amistad', 0, 104),
(271, 'ÓSCAR', 'Dramático', 0, 277),
(272, 'GUILLERMO', 'La realización personal', 0, 270),
(273, 'ANA MARÍA', 'El amor', 0, 243),
(274, 'RAMÓN', 'La ambición', 0, 108),
(275, 'MARÍA ISABEL', 'La opresión', 0, 231),
(276, 'PABLO', 'El vacío al alcanzar una meta insustancial', 0, 139),
(277, 'RUBEN', 'La guerra ', 0, 218),
(278, 'ANTONIA', 'Poesía', 0, 156),
(279, 'JUANA', 'Cambio frente a tradición', 0, 279),
(280, 'MARÍA LUISA', 'Poesía', 0, 273),
(281, 'LUIS ÁNGEL', 'Novela', 0, 285),
(282, 'MARÍA DEL ROSARIO', 'Ideales versus dogmas', 0, 165),
(283, 'FELIPE', 'La confianza', 0, 256),
(284, 'JORGE JESÚS', 'La muerte', 0, 287),
(285, 'JAIME', 'Los humanos frente a las máquinas', 0, 162),
(286, 'JOSÉ GUADALUPE', 'La opresión', 0, 170),
(287, 'JULIO CESAR', 'La juventud efímera', 0, 133),
(288, 'JOSÉ DE JESÚS', 'La vanidad', 0, 216),
(289, 'DIEGO', 'La violencia', 0, 222),
(290, 'ANTONIO', 'Épico o narrativo', 0, 250),
(291, 'ARACELI', 'La fama', 0, 268),
(292, 'ANDREA', 'La lucha por la supervivencia', 0, 260),
(293, 'ISABEL', 'Dramático', 0, 213),
(294, 'MARÍA TERESA', 'La realización personal', 0, 150),
(295, 'IRMA', 'La venganza', 0, 123),
(296, 'CARMEN', 'La discriminación', 0, 196),
(297, 'LUCÍA', 'La esperanza', 0, 218),
(298, 'ADRIANA', 'La realización personal', 0, 211),
(299, 'AGUSTÍN', 'La tentación', 0, 142),
(300, 'MARÍA DE LA LUZ', 'El racismo', 0, 189);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`idAlmacen`);

--
-- Indexes for table `existencias`
--
ALTER TABLE `existencias`
  ADD KEY `idLibro` (`idLibro`),
  ADD KEY `idAlmacen` (`idAlmacen`);

--
-- Indexes for table `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`idLibro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `almacen`
--
ALTER TABLE `almacen`
  MODIFY `idAlmacen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `libro`
--
ALTER TABLE `libro`
  MODIFY `idLibro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `existencias`
--
ALTER TABLE `existencias`
  ADD CONSTRAINT `existencias_ibfk_1` FOREIGN KEY (`idLibro`) REFERENCES `libro` (`idLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `existencias_ibfk_2` FOREIGN KEY (`idAlmacen`) REFERENCES `almacen` (`idAlmacen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
