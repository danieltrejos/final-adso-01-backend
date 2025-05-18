-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2025 a las 17:47:19
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
-- Base de datos: `biblioapp`
--
CREATE DATABASE IF NOT EXISTS `biblioapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioapp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `author`
--

INSERT INTO `author` (`id`, `name`, `state`) VALUES
(1, 'Inmaculada Benavides Ros', 1),
(2, 'Micaela Vall-Téllez', 1),
(3, 'Socorro Pozuelo Menendez', 1),
(4, 'Toribio Planas Mendez', 1),
(5, 'Julie Roig Borrego', 1),
(6, 'Joan del Sanmiguel', 1),
(7, 'Eufemia Navarro-Hierro', 1),
(8, 'Pablo Bustamante-Saldaña', 1),
(9, 'Herminia Lozano Tejero', 1),
(10, 'Chema Corbacho Morcillo', 1),
(11, 'Nilo Pancho Sarmiento Alfonso', 1),
(12, 'Alfredo Rojas Mayoral', 1),
(13, 'Severo Gutierrez-Montserrat', 1),
(14, 'Cintia Menéndez Rosado', 1),
(15, 'Amelia Vega Orozco', 1),
(16, 'Maricela Mayol Sedano', 1),
(17, 'Florentino Lerma Pino', 1),
(18, 'Cristian Millán Tenorio', 1),
(19, 'Pastora María Luisa Girón Mena', 1),
(20, 'Chucho Quero-Calderón', 1),
(21, 'Macarena Galvez Duque', 1),
(22, 'Arcelia Cabezas Falcó', 1),
(23, 'Quique Castelló Palomar', 1),
(24, 'Albina Hoz Bermúdez', 1),
(25, 'David Águila-Daza', 1),
(26, 'Juan Bautista Isern Alfonso', 1),
(27, 'Erasmo Eladio Solé Lobato', 1),
(28, 'Amor Verdejo-Carrasco', 1),
(29, 'Chelo Tur Figuerola', 1),
(30, 'Trini Falcó Piñol', 1),
(31, 'Maricruz Cánovas Vera', 1),
(32, 'Ruy Salinas Cerro', 1),
(33, 'Adora Andrade Jaén', 1),
(34, 'América Armengol', 1),
(35, 'Gonzalo Valero Cantero', 1),
(36, 'Selena Catalán Bravo', 1),
(37, 'Raimundo Galiano-Arteaga', 1),
(38, 'Albano Parejo', 1),
(39, 'Reyna Clavero Díez', 1),
(40, 'María José Diaz Cortés', 1),
(41, 'Kike Ortiz Blanch', 1),
(42, 'Febe Briones Casal', 1),
(43, 'Mario Quirino Santamaria Acosta', 1),
(44, 'Pelayo Lluch', 1),
(45, 'Hector del Bastida', 1),
(46, 'Sara de Asenjo', 1),
(47, 'Balduino Oliva Pomares', 1),
(48, 'Eva Figueras Valcárcel', 1),
(49, 'Xiomara Hidalgo Gálvez', 1),
(50, 'Martirio Gracia Morata', 1),
(51, 'Inmaculada Benavides Ros', 1),
(52, 'Micaela Vall-Téllez', 1),
(53, 'Socorro Pozuelo Menendez', 1),
(54, 'Toribio Planas Mendez', 1),
(55, 'Julie Roig Borrego', 1),
(56, 'Joan del Sanmiguel', 1),
(57, 'Eufemia Navarro-Hierro', 1),
(58, 'Pablo Bustamante-Saldaña', 1),
(59, 'Herminia Lozano Tejero', 1),
(60, 'Chema Corbacho Morcillo', 1),
(61, 'Nilo Pancho Sarmiento Alfonso', 1),
(62, 'Alfredo Rojas Mayoral', 1),
(63, 'Severo Gutierrez-Montserrat', 1),
(64, 'Cintia Menéndez Rosado', 1),
(65, 'Amelia Vega Orozco', 1),
(66, 'Maricela Mayol Sedano', 1),
(67, 'Florentino Lerma Pino', 1),
(68, 'Cristian Millán Tenorio', 1),
(69, 'Pastora María Luisa Girón Mena', 1),
(70, 'Chucho Quero-Calderón', 1),
(71, 'Macarena Galvez Duque', 1),
(72, 'Arcelia Cabezas Falcó', 1),
(73, 'Quique Castelló Palomar', 1),
(74, 'Albina Hoz Bermúdez', 1),
(75, 'David Águila-Daza', 1),
(76, 'Juan Bautista Isern Alfonso', 1),
(77, 'Erasmo Eladio Solé Lobato', 1),
(78, 'Amor Verdejo-Carrasco', 1),
(79, 'Chelo Tur Figuerola', 1),
(80, 'Trini Falcó Piñol', 1),
(81, 'Maricruz Cánovas Vera', 1),
(82, 'Ruy Salinas Cerro', 1),
(83, 'Adora Andrade Jaén', 1),
(84, 'América Armengol', 1),
(85, 'Gonzalo Valero Cantero', 1),
(86, 'Selena Catalán Bravo', 1),
(87, 'Raimundo Galiano-Arteaga', 1),
(88, 'Albano Parejo', 1),
(89, 'Reyna Clavero Díez', 1),
(90, 'María José Diaz Cortés', 1),
(91, 'Kike Ortiz Blanch', 1),
(92, 'Febe Briones Casal', 1),
(93, 'Mario Quirino Santamaria Acosta', 1),
(94, 'Pelayo Lluch', 1),
(95, 'Hector del Bastida', 1),
(96, 'Sara de Asenjo', 1),
(97, 'Balduino Oliva Pomares', 1),
(98, 'Eva Figueras Valcárcel', 1),
(99, 'Xiomara Hidalgo Gálvez', 1),
(100, 'Martirio Gracia Morata', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `isbn` varchar(191) NOT NULL,
  `yearPublished` int(11) NOT NULL,
  `numPages` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `authorId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `publisherId` int(11) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `book`
--

INSERT INTO `book` (`id`, `name`, `isbn`, `yearPublished`, `numPages`, `state`, `authorId`, `categoryId`, `publisherId`, `createdAt`, `updatedAt`) VALUES
(1, 'Odio sequi qui vero iure', '9780615661261', 1963, 442, 1, 45, 18, 11, '2025-05-18 15:02:20.036', '2025-05-18 15:02:20.036'),
(2, 'Delectus dignissimos nam ex quas', '9780032540255', 2023, 455, 1, 43, 17, 11, '2025-05-18 15:02:20.040', '2025-05-18 15:02:20.040'),
(3, 'Rerum temporibus soluta perferendis nemo', '9780606415675', 2013, 535, 1, 9, 1, 5, '2025-05-18 15:02:20.044', '2025-05-18 15:02:20.044'),
(4, 'Impedit qui corporis nam', '9780927906173', 1969, 373, 1, 27, 14, 10, '2025-05-18 15:02:20.048', '2025-05-18 15:02:20.048'),
(5, 'Possimus in distinctio reiciendis', '9781003589525', 1971, 675, 1, 50, 2, 11, '2025-05-18 15:02:20.050', '2025-05-18 15:02:20.050'),
(6, 'Debitis dolorum', '9780526676477', 1964, 543, 1, 17, 13, 14, '2025-05-18 15:02:20.053', '2025-05-18 15:02:20.053'),
(7, 'Libero soluta dolorum adipisci', '9780013172741', 2002, 562, 1, 50, 6, 19, '2025-05-18 15:02:20.056', '2025-05-18 15:02:20.056'),
(8, 'Sapiente et', '9780442286392', 2005, 691, 1, 4, 7, 20, '2025-05-18 15:02:20.058', '2025-05-18 15:02:20.058'),
(9, 'Necessitatibus beatae', '9781883037147', 1960, 359, 1, 28, 6, 7, '2025-05-18 15:02:20.061', '2025-05-18 15:02:20.061'),
(10, 'Quam soluta repellendus cum', '9780411198923', 1999, 774, 1, 50, 5, 16, '2025-05-18 15:02:20.063', '2025-05-18 15:02:20.063'),
(11, 'Asperiores accusamus omnis consequatur', '9781756531888', 1963, 607, 1, 19, 3, 15, '2025-05-18 15:02:20.066', '2025-05-18 15:02:20.066'),
(12, 'At numquam', '9781887022828', 1982, 262, 1, 3, 11, 13, '2025-05-18 15:02:20.068', '2025-05-18 15:02:20.068'),
(13, 'Quidem expedita nisi exercitationem', '9781414835785', 1967, 640, 1, 1, 13, 9, '2025-05-18 15:02:20.070', '2025-05-18 15:02:20.070'),
(14, 'Est facere quidem', '9780072997712', 1994, 251, 1, 16, 11, 16, '2025-05-18 15:02:20.073', '2025-05-18 15:02:20.073'),
(15, 'Aliquid quos', '9781714121465', 2020, 781, 1, 45, 19, 12, '2025-05-18 15:02:20.075', '2025-05-18 15:02:20.075'),
(16, 'Assumenda veniam', '9780616155134', 1956, 405, 1, 25, 18, 11, '2025-05-18 15:02:20.077', '2025-05-18 15:02:20.077'),
(17, 'Quod earum', '9780357321072', 1980, 352, 1, 5, 4, 3, '2025-05-18 15:02:20.080', '2025-05-18 15:02:20.080'),
(18, 'Quibusdam cumque', '9780610983870', 2022, 198, 1, 25, 17, 9, '2025-05-18 15:02:20.082', '2025-05-18 15:02:20.082'),
(19, 'Sed totam deleniti dolorem placeat', '9781602610743', 1999, 270, 1, 45, 18, 3, '2025-05-18 15:02:20.084', '2025-05-18 15:02:20.084'),
(20, 'Iste cumque aspernatur libero', '9781828888353', 2020, 347, 1, 7, 16, 8, '2025-05-18 15:02:20.086', '2025-05-18 15:02:20.086'),
(21, 'Neque alias placeat', '9780854558070', 1970, 751, 1, 17, 1, 15, '2025-05-18 15:02:20.088', '2025-05-18 15:02:20.088'),
(22, 'Debitis tempora eveniet', '9781662180736', 2011, 760, 1, 15, 14, 9, '2025-05-18 15:02:20.090', '2025-05-18 15:02:20.090'),
(23, 'Harum aut aliquid', '9781326504045', 2019, 497, 1, 38, 8, 10, '2025-05-18 15:02:20.093', '2025-05-18 15:02:20.093'),
(24, 'Excepturi illum minima', '9780045648788', 1970, 181, 1, 41, 7, 1, '2025-05-18 15:02:20.095', '2025-05-18 15:02:20.095'),
(25, 'Pariatur quia ratione pariatur', '9781262176061', 2009, 107, 1, 19, 7, 14, '2025-05-18 15:02:20.097', '2025-05-18 15:02:20.097'),
(26, 'Esse tenetur', '9780710975362', 1985, 184, 1, 12, 18, 14, '2025-05-18 15:02:20.099', '2025-05-18 15:02:20.099'),
(27, 'Culpa nostrum beatae', '9780945100768', 1965, 653, 1, 30, 15, 11, '2025-05-18 15:02:20.101', '2025-05-18 15:02:20.101'),
(28, 'Illo vero aliquam culpa', '9780636634503', 1962, 145, 1, 31, 2, 15, '2025-05-18 15:02:20.104', '2025-05-18 15:02:20.104'),
(29, 'Odio aliquam totam eius', '9780987378842', 1953, 266, 1, 7, 15, 20, '2025-05-18 15:02:20.106', '2025-05-18 15:02:20.106'),
(30, 'Minima unde error', '9781660108923', 1976, 688, 1, 6, 18, 11, '2025-05-18 15:02:20.108', '2025-05-18 15:02:20.108'),
(31, 'Ab sint rerum', '9780219075419', 1960, 686, 1, 14, 1, 16, '2025-05-18 15:02:20.110', '2025-05-18 15:02:20.110'),
(32, 'Nisi quibusdam illum', '9781429021425', 1960, 529, 1, 12, 14, 2, '2025-05-18 15:02:20.112', '2025-05-18 15:02:20.112'),
(33, 'Adipisci alias', '9780397880799', 1990, 497, 1, 15, 8, 10, '2025-05-18 15:02:20.115', '2025-05-18 15:02:20.115'),
(34, 'Voluptas ratione temporibus', '9781626034068', 1996, 449, 1, 23, 15, 3, '2025-05-18 15:02:20.117', '2025-05-18 15:02:20.117'),
(35, 'Ratione reiciendis ducimus eius pariatur', '9780118199513', 1975, 599, 1, 27, 16, 9, '2025-05-18 15:02:20.119', '2025-05-18 15:02:20.119'),
(36, 'Provident consequuntur', '9781214200561', 2012, 298, 1, 7, 5, 5, '2025-05-18 15:02:20.122', '2025-05-18 15:02:20.122'),
(37, 'Dolore reprehenderit', '9780192841544', 2016, 525, 1, 11, 13, 10, '2025-05-18 15:02:20.124', '2025-05-18 15:02:20.124'),
(38, 'Debitis modi', '9780809882069', 1965, 248, 1, 48, 13, 5, '2025-05-18 15:02:20.126', '2025-05-18 15:02:20.126'),
(39, 'Minima dolore', '9781473693807', 1968, 158, 1, 36, 10, 16, '2025-05-18 15:02:20.128', '2025-05-18 15:02:20.128'),
(40, 'Dolorum fugit asperiores consequatur aliquid', '9781374237131', 1950, 242, 1, 19, 7, 5, '2025-05-18 15:02:20.131', '2025-05-18 15:02:20.131'),
(41, 'Consequatur magni non', '9781453503287', 2003, 442, 1, 7, 11, 4, '2025-05-18 15:02:20.133', '2025-05-18 15:02:20.133'),
(42, 'Magni odit aliquid dolorum hic', '9780800334475', 1978, 562, 1, 10, 1, 2, '2025-05-18 15:02:20.135', '2025-05-18 15:02:20.135'),
(43, 'Quaerat aliquid iste', '9781533832580', 2010, 358, 1, 43, 7, 4, '2025-05-18 15:02:20.137', '2025-05-18 15:02:20.137'),
(44, 'Mollitia quam reiciendis fuga', '9781679611612', 2017, 556, 1, 49, 17, 15, '2025-05-18 15:02:20.140', '2025-05-18 15:02:20.140'),
(45, 'Aliquid accusamus sint', '9781752109760', 1984, 500, 1, 11, 14, 18, '2025-05-18 15:02:20.142', '2025-05-18 15:02:20.142'),
(46, 'Assumenda culpa pariatur repudiandae aperiam', '9781175121738', 1997, 414, 1, 33, 5, 5, '2025-05-18 15:02:20.144', '2025-05-18 15:02:20.144'),
(47, 'Eum veniam consequatur consequatur', '9780701776220', 2010, 437, 1, 37, 16, 17, '2025-05-18 15:02:20.147', '2025-05-18 15:02:20.147'),
(48, 'Voluptates molestias laudantium veritatis sapiente', '9781799383024', 1999, 798, 1, 44, 2, 7, '2025-05-18 15:02:20.149', '2025-05-18 15:02:20.149'),
(49, 'Soluta exercitationem dicta', '9780599390553', 1999, 204, 1, 38, 4, 7, '2025-05-18 15:02:20.151', '2025-05-18 15:02:20.151'),
(50, 'Nobis iusto', '9781737587309', 1982, 344, 1, 18, 20, 11, '2025-05-18 15:02:20.153', '2025-05-18 15:02:20.153'),
(51, 'Odio sequi qui vero iure', '9780615661261', 1963, 442, 1, 45, 18, 11, '2025-05-18 15:04:05.160', '2025-05-18 15:04:05.160'),
(52, 'Delectus dignissimos nam ex quas', '9780032540255', 2023, 455, 1, 43, 17, 11, '2025-05-18 15:04:05.164', '2025-05-18 15:04:05.164'),
(53, 'Rerum temporibus soluta perferendis nemo', '9780606415675', 2013, 535, 1, 9, 1, 5, '2025-05-18 15:04:05.168', '2025-05-18 15:04:05.168'),
(54, 'Impedit qui corporis nam', '9780927906173', 1969, 373, 1, 27, 14, 10, '2025-05-18 15:04:05.172', '2025-05-18 15:04:05.172'),
(55, 'Possimus in distinctio reiciendis', '9781003589525', 1971, 675, 1, 50, 2, 11, '2025-05-18 15:04:05.175', '2025-05-18 15:04:05.175'),
(56, 'Debitis dolorum', '9780526676477', 1964, 543, 1, 17, 13, 14, '2025-05-18 15:04:05.179', '2025-05-18 15:04:05.179'),
(57, 'Libero soluta dolorum adipisci', '9780013172741', 2002, 562, 1, 50, 6, 19, '2025-05-18 15:04:05.182', '2025-05-18 15:04:05.182'),
(58, 'Sapiente et', '9780442286392', 2005, 691, 1, 4, 7, 20, '2025-05-18 15:04:05.186', '2025-05-18 15:04:05.186'),
(59, 'Necessitatibus beatae', '9781883037147', 1960, 359, 1, 28, 6, 7, '2025-05-18 15:04:05.189', '2025-05-18 15:04:05.189'),
(60, 'Quam soluta repellendus cum', '9780411198923', 1999, 774, 1, 50, 5, 16, '2025-05-18 15:04:05.193', '2025-05-18 15:04:05.193'),
(61, 'Asperiores accusamus omnis consequatur', '9781756531888', 1963, 607, 1, 19, 3, 15, '2025-05-18 15:04:05.197', '2025-05-18 15:04:05.197'),
(62, 'At numquam', '9781887022828', 1982, 262, 1, 3, 11, 13, '2025-05-18 15:04:05.200', '2025-05-18 15:04:05.200'),
(63, 'Quidem expedita nisi exercitationem', '9781414835785', 1967, 640, 1, 1, 13, 9, '2025-05-18 15:04:05.204', '2025-05-18 15:04:05.204'),
(64, 'Est facere quidem', '9780072997712', 1994, 251, 1, 16, 11, 16, '2025-05-18 15:04:05.208', '2025-05-18 15:04:05.208'),
(65, 'Aliquid quos', '9781714121465', 2020, 781, 1, 45, 19, 12, '2025-05-18 15:04:05.211', '2025-05-18 15:04:05.211'),
(66, 'Assumenda veniam', '9780616155134', 1956, 405, 1, 25, 18, 11, '2025-05-18 15:04:05.215', '2025-05-18 15:04:05.215'),
(67, 'Quod earum', '9780357321072', 1980, 352, 1, 5, 4, 3, '2025-05-18 15:04:05.219', '2025-05-18 15:04:05.219'),
(68, 'Quibusdam cumque', '9780610983870', 2022, 198, 1, 25, 17, 9, '2025-05-18 15:04:05.223', '2025-05-18 15:04:05.223'),
(69, 'Sed totam deleniti dolorem placeat', '9781602610743', 1999, 270, 1, 45, 18, 3, '2025-05-18 15:04:05.226', '2025-05-18 15:04:05.226'),
(70, 'Iste cumque aspernatur libero', '9781828888353', 2020, 347, 1, 7, 16, 8, '2025-05-18 15:04:05.230', '2025-05-18 15:04:05.230'),
(71, 'Neque alias placeat', '9780854558070', 1970, 751, 1, 17, 1, 15, '2025-05-18 15:04:05.234', '2025-05-18 15:04:05.234'),
(72, 'Debitis tempora eveniet', '9781662180736', 2011, 760, 1, 15, 14, 9, '2025-05-18 15:04:05.237', '2025-05-18 15:04:05.237'),
(73, 'Harum aut aliquid', '9781326504045', 2019, 497, 1, 38, 8, 10, '2025-05-18 15:04:05.241', '2025-05-18 15:04:05.241'),
(74, 'Excepturi illum minima', '9780045648788', 1970, 181, 1, 41, 7, 1, '2025-05-18 15:04:05.244', '2025-05-18 15:04:05.244'),
(75, 'Pariatur quia ratione pariatur', '9781262176061', 2009, 107, 1, 19, 7, 14, '2025-05-18 15:04:05.248', '2025-05-18 15:04:05.248'),
(76, 'Esse tenetur', '9780710975362', 1985, 184, 1, 12, 18, 14, '2025-05-18 15:04:05.252', '2025-05-18 15:04:05.252'),
(77, 'Culpa nostrum beatae', '9780945100768', 1965, 653, 1, 30, 15, 11, '2025-05-18 15:04:05.255', '2025-05-18 15:04:05.255'),
(78, 'Illo vero aliquam culpa', '9780636634503', 1962, 145, 1, 31, 2, 15, '2025-05-18 15:04:05.259', '2025-05-18 15:04:05.259'),
(79, 'Odio aliquam totam eius', '9780987378842', 1953, 266, 1, 7, 15, 20, '2025-05-18 15:04:05.262', '2025-05-18 15:04:05.262'),
(80, 'Minima unde error', '9781660108923', 1976, 688, 1, 6, 18, 11, '2025-05-18 15:04:05.266', '2025-05-18 15:04:05.266'),
(81, 'Ab sint rerum', '9780219075419', 1960, 686, 1, 14, 1, 16, '2025-05-18 15:04:05.269', '2025-05-18 15:04:05.269'),
(82, 'Nisi quibusdam illum', '9781429021425', 1960, 529, 1, 12, 14, 2, '2025-05-18 15:04:05.273', '2025-05-18 15:04:05.273'),
(83, 'Adipisci alias', '9780397880799', 1990, 497, 1, 15, 8, 10, '2025-05-18 15:04:05.277', '2025-05-18 15:04:05.277'),
(84, 'Voluptas ratione temporibus', '9781626034068', 1996, 449, 1, 23, 15, 3, '2025-05-18 15:04:05.280', '2025-05-18 15:04:05.280'),
(85, 'Ratione reiciendis ducimus eius pariatur', '9780118199513', 1975, 599, 1, 27, 16, 9, '2025-05-18 15:04:05.284', '2025-05-18 15:04:05.284'),
(86, 'Provident consequuntur', '9781214200561', 2012, 298, 1, 7, 5, 5, '2025-05-18 15:04:05.287', '2025-05-18 15:04:05.287'),
(87, 'Dolore reprehenderit', '9780192841544', 2016, 525, 1, 11, 13, 10, '2025-05-18 15:04:05.291', '2025-05-18 15:04:05.291'),
(88, 'Debitis modi', '9780809882069', 1965, 248, 1, 48, 13, 5, '2025-05-18 15:04:05.294', '2025-05-18 15:04:05.294'),
(89, 'Minima dolore', '9781473693807', 1968, 158, 1, 36, 10, 16, '2025-05-18 15:04:05.298', '2025-05-18 15:04:05.298'),
(90, 'Dolorum fugit asperiores consequatur aliquid', '9781374237131', 1950, 242, 1, 19, 7, 5, '2025-05-18 15:04:05.302', '2025-05-18 15:04:05.302'),
(91, 'Consequatur magni non', '9781453503287', 2003, 442, 1, 7, 11, 4, '2025-05-18 15:04:05.305', '2025-05-18 15:04:05.305'),
(92, 'Magni odit aliquid dolorum hic', '9780800334475', 1978, 562, 1, 10, 1, 2, '2025-05-18 15:04:05.309', '2025-05-18 15:04:05.309'),
(93, 'Quaerat aliquid iste', '9781533832580', 2010, 358, 1, 43, 7, 4, '2025-05-18 15:04:05.312', '2025-05-18 15:04:05.312'),
(94, 'Mollitia quam reiciendis fuga', '9781679611612', 2017, 556, 1, 49, 17, 15, '2025-05-18 15:04:05.316', '2025-05-18 15:04:05.316'),
(95, 'Aliquid accusamus sint', '9781752109760', 1984, 500, 1, 11, 14, 18, '2025-05-18 15:04:05.319', '2025-05-18 15:04:05.319'),
(96, 'Assumenda culpa pariatur repudiandae aperiam', '9781175121738', 1997, 414, 1, 33, 5, 5, '2025-05-18 15:04:05.323', '2025-05-18 15:04:05.323');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `createdAt`, `state`) VALUES
(1, 'Drama', '2025-05-18 15:02:19.805', 1),
(2, 'Misterio', '2025-05-18 15:02:19.809', 1),
(3, 'Ciencia ficción', '2025-05-18 15:02:19.813', 1),
(4, 'Novela', '2025-05-18 15:02:19.817', 1),
(5, 'Ensayo', '2025-05-18 15:02:19.821', 1),
(6, 'Biografía', '2025-05-18 15:02:19.824', 1),
(7, 'Suspenso', '2025-05-18 15:02:19.827', 1),
(8, 'Autobiografía', '2025-05-18 15:02:19.829', 1),
(9, 'Mitología', '2025-05-18 15:02:19.831', 1),
(10, 'Humor', '2025-05-18 15:02:19.833', 1),
(11, 'Crónica', '2025-05-18 15:02:19.835', 1),
(12, 'Policíaco', '2025-05-18 15:02:19.837', 1),
(13, 'Poesía', '2025-05-18 15:02:19.839', 1),
(14, 'Distopía', '2025-05-18 15:02:19.841', 1),
(15, 'Cuento', '2025-05-18 15:02:19.843', 1),
(16, 'Romance', '2025-05-18 15:02:19.845', 1),
(17, 'Aventura', '2025-05-18 15:02:19.847', 1),
(18, 'Terror', '2025-05-18 15:02:19.849', 1),
(19, 'Fantasía', '2025-05-18 15:02:19.851', 1),
(20, 'Viajes', '2025-05-18 15:02:19.853', 1),
(21, 'Drama', '2025-05-18 15:04:04.988', 1),
(22, 'Misterio', '2025-05-18 15:04:04.992', 1),
(23, 'Ciencia ficción', '2025-05-18 15:04:04.996', 1),
(24, 'Novela', '2025-05-18 15:04:04.999', 1),
(25, 'Ensayo', '2025-05-18 15:04:05.003', 1),
(26, 'Biografía', '2025-05-18 15:04:05.006', 1),
(27, 'Suspenso', '2025-05-18 15:04:05.010', 1),
(28, 'Autobiografía', '2025-05-18 15:04:05.014', 1),
(29, 'Mitología', '2025-05-18 15:04:05.018', 1),
(30, 'Humor', '2025-05-18 15:04:05.021', 1),
(31, 'Crónica', '2025-05-18 15:04:05.025', 1),
(32, 'Policíaco', '2025-05-18 15:04:05.028', 1),
(33, 'Poesía', '2025-05-18 15:04:05.032', 1),
(34, 'Distopía', '2025-05-18 15:04:05.036', 1),
(35, 'Cuento', '2025-05-18 15:04:05.039', 1),
(36, 'Romance', '2025-05-18 15:04:05.043', 1),
(37, 'Aventura', '2025-05-18 15:04:05.046', 1),
(38, 'Terror', '2025-05-18 15:04:05.050', 1),
(39, 'Fantasía', '2025-05-18 15:04:05.053', 1),
(40, 'Viajes', '2025-05-18 15:04:05.057', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `loanDate` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `returnDue` datetime(3) NOT NULL,
  `returned` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `returnedAt` datetime(3) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `loan`
--

INSERT INTO `loan` (`id`, `userId`, `bookId`, `loanDate`, `returnDue`, `returned`, `createdAt`, `returnedAt`, `state`) VALUES
(1, 24, 13, '2025-04-12 00:00:00.000', '2025-04-29 00:00:00.000', 1, '2025-05-18 15:04:05.341', '2025-04-22 00:00:00.000', 1),
(2, 45, 13, '2025-03-25 00:00:00.000', '2025-04-07 00:00:00.000', 1, '2025-05-18 15:04:05.346', '2025-04-04 00:00:00.000', 1),
(3, 31, 39, '2025-05-07 00:00:00.000', '2025-05-20 00:00:00.000', 1, '2025-05-18 15:04:05.355', '2025-05-13 00:00:00.000', 1),
(4, 28, 32, '2025-02-28 00:00:00.000', '2025-03-13 00:00:00.000', 1, '2025-05-18 15:04:05.359', '2025-03-24 00:00:00.000', 1),
(5, 36, 15, '2025-04-10 00:00:00.000', '2025-04-28 00:00:00.000', 1, '2025-05-18 15:04:05.362', '2025-04-26 00:00:00.000', 1),
(6, 33, 45, '2025-02-25 00:00:00.000', '2025-03-06 00:00:00.000', 0, '2025-05-18 15:04:05.366', NULL, 1),
(7, 50, 12, '2025-03-07 00:00:00.000', '2025-03-27 00:00:00.000', 0, '2025-05-18 15:04:05.369', NULL, 1),
(8, 32, 45, '2025-05-03 00:00:00.000', '2025-05-16 00:00:00.000', 0, '2025-05-18 15:04:05.373', NULL, 1),
(9, 7, 26, '2025-05-16 00:00:00.000', '2025-05-26 00:00:00.000', 0, '2025-05-18 15:04:05.376', NULL, 1),
(10, 8, 39, '2025-04-16 00:00:00.000', '2025-04-25 00:00:00.000', 1, '2025-05-18 15:04:05.380', '2025-04-24 00:00:00.000', 1),
(11, 9, 1, '2025-04-13 00:00:00.000', '2025-05-01 00:00:00.000', 1, '2025-05-18 15:04:05.383', '2025-05-07 00:00:00.000', 1),
(12, 2, 25, '2025-03-06 00:00:00.000', '2025-03-18 00:00:00.000', 0, '2025-05-18 15:04:05.387', NULL, 1),
(13, 42, 23, '2025-03-03 00:00:00.000', '2025-03-21 00:00:00.000', 1, '2025-05-18 15:04:05.390', '2025-03-15 00:00:00.000', 1),
(14, 23, 19, '2025-03-15 00:00:00.000', '2025-03-25 00:00:00.000', 1, '2025-05-18 15:04:05.394', '2025-03-30 00:00:00.000', 1),
(15, 33, 5, '2025-03-07 00:00:00.000', '2025-03-24 00:00:00.000', 1, '2025-05-18 15:04:05.398', '2025-03-12 00:00:00.000', 1),
(16, 27, 16, '2025-02-22 00:00:00.000', '2025-03-14 00:00:00.000', 0, '2025-05-18 15:04:05.401', NULL, 1),
(17, 34, 47, '2025-04-19 00:00:00.000', '2025-05-09 00:00:00.000', 1, '2025-05-18 15:04:05.405', '2025-05-10 00:00:00.000', 1),
(18, 29, 30, '2025-04-08 00:00:00.000', '2025-04-23 00:00:00.000', 1, '2025-05-18 15:04:05.409', '2025-05-01 00:00:00.000', 1),
(19, 15, 12, '2025-02-18 00:00:00.000', '2025-03-01 00:00:00.000', 0, '2025-05-18 15:04:05.413', NULL, 1),
(20, 44, 36, '2025-04-21 00:00:00.000', '2025-04-29 00:00:00.000', 1, '2025-05-18 15:04:05.416', '2025-04-29 00:00:00.000', 1),
(21, 15, 16, '2025-04-03 00:00:00.000', '2025-04-21 00:00:00.000', 0, '2025-05-18 15:04:05.420', NULL, 1),
(22, 5, 29, '2025-04-07 00:00:00.000', '2025-04-24 00:00:00.000', 0, '2025-05-18 15:04:05.423', NULL, 1),
(23, 10, 1, '2025-03-14 00:00:00.000', '2025-03-28 00:00:00.000', 1, '2025-05-18 15:04:05.427', '2025-03-26 00:00:00.000', 1),
(24, 16, 38, '2025-04-30 00:00:00.000', '2025-05-19 00:00:00.000', 0, '2025-05-18 15:04:05.431', NULL, 1),
(25, 35, 12, '2025-05-11 00:00:00.000', '2025-05-29 00:00:00.000', 0, '2025-05-18 15:04:05.434', NULL, 1),
(26, 23, 49, '2025-05-12 00:00:00.000', '2025-05-30 00:00:00.000', 1, '2025-05-18 15:04:05.438', '2025-05-31 00:00:00.000', 1),
(27, 28, 9, '2025-03-20 00:00:00.000', '2025-04-09 00:00:00.000', 1, '2025-05-18 15:04:05.442', '2025-04-02 00:00:00.000', 1),
(28, 22, 45, '2025-04-20 00:00:00.000', '2025-04-30 00:00:00.000', 0, '2025-05-18 15:04:05.445', NULL, 1),
(29, 6, 12, '2025-04-10 00:00:00.000', '2025-04-22 00:00:00.000', 0, '2025-05-18 15:04:05.449', NULL, 1),
(30, 8, 23, '2025-04-18 00:00:00.000', '2025-04-27 00:00:00.000', 0, '2025-05-18 15:04:05.453', NULL, 1),
(31, 27, 1, '2025-04-26 00:00:00.000', '2025-05-16 00:00:00.000', 1, '2025-05-18 15:04:05.456', '2025-05-12 00:00:00.000', 1),
(32, 47, 28, '2025-05-02 00:00:00.000', '2025-05-10 00:00:00.000', 1, '2025-05-18 15:04:05.460', '2025-05-23 00:00:00.000', 1),
(33, 7, 26, '2025-03-19 00:00:00.000', '2025-03-30 00:00:00.000', 0, '2025-05-18 15:04:05.463', NULL, 1),
(34, 32, 28, '2025-03-23 00:00:00.000', '2025-04-09 00:00:00.000', 1, '2025-05-18 15:04:05.467', '2025-04-08 00:00:00.000', 1),
(35, 14, 47, '2025-05-04 00:00:00.000', '2025-05-23 00:00:00.000', 0, '2025-05-18 15:04:05.470', NULL, 1),
(36, 26, 17, '2025-04-08 00:00:00.000', '2025-04-27 00:00:00.000', 1, '2025-05-18 15:04:05.474', '2025-04-25 00:00:00.000', 1),
(37, 15, 38, '2025-02-25 00:00:00.000', '2025-03-07 00:00:00.000', 0, '2025-05-18 15:04:05.478', NULL, 1),
(38, 44, 44, '2025-03-09 00:00:00.000', '2025-03-20 00:00:00.000', 1, '2025-05-18 15:04:05.481', '2025-03-30 00:00:00.000', 1),
(39, 48, 31, '2025-04-26 00:00:00.000', '2025-05-11 00:00:00.000', 0, '2025-05-18 15:04:05.485', NULL, 1),
(40, 32, 22, '2025-03-22 00:00:00.000', '2025-04-11 00:00:00.000', 1, '2025-05-18 15:04:05.488', '2025-03-29 00:00:00.000', 1),
(41, 44, 34, '2025-04-17 00:00:00.000', '2025-05-04 00:00:00.000', 0, '2025-05-18 15:04:05.492', NULL, 1),
(42, 42, 29, '2025-03-08 00:00:00.000', '2025-03-27 00:00:00.000', 0, '2025-05-18 15:04:05.496', NULL, 1),
(43, 40, 34, '2025-04-27 00:00:00.000', '2025-05-14 00:00:00.000', 1, '2025-05-18 15:04:05.499', '2025-05-14 00:00:00.000', 1),
(44, 40, 22, '2025-04-23 00:00:00.000', '2025-05-01 00:00:00.000', 1, '2025-05-18 15:04:05.503', '2025-05-01 00:00:00.000', 1),
(45, 20, 45, '2025-03-05 00:00:00.000', '2025-03-16 00:00:00.000', 0, '2025-05-18 15:04:05.506', NULL, 1),
(46, 47, 2, '2025-04-05 00:00:00.000', '2025-04-14 00:00:00.000', 0, '2025-05-18 15:04:05.510', NULL, 1),
(47, 13, 32, '2025-03-14 00:00:00.000', '2025-03-30 00:00:00.000', 1, '2025-05-18 15:04:05.514', '2025-03-26 00:00:00.000', 1),
(48, 44, 18, '2025-03-09 00:00:00.000', '2025-03-26 00:00:00.000', 1, '2025-05-18 15:04:05.517', '2025-03-26 00:00:00.000', 1),
(49, 15, 5, '2025-03-06 00:00:00.000', '2025-03-27 00:00:00.000', 0, '2025-05-18 15:04:05.521', NULL, 1),
(50, 10, 7, '2025-04-12 00:00:00.000', '2025-04-26 00:00:00.000', 0, '2025-05-18 15:04:05.524', '2025-04-20 00:00:00.000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `createdAt`, `state`) VALUES
(1, 'Salamandra', '2025-05-18 15:02:19.855', 1),
(2, 'Planeta', '2025-05-18 15:02:19.858', 1),
(3, 'Penguin Random House', '2025-05-18 15:02:19.860', 1),
(4, 'Espasa', '2025-05-18 15:02:19.863', 1),
(5, 'Tusquets', '2025-05-18 15:02:19.865', 1),
(6, 'Anagrama', '2025-05-18 15:02:19.867', 1),
(7, 'Acantilado', '2025-05-18 15:02:19.869', 1),
(8, 'Alianza', '2025-05-18 15:02:19.871', 1),
(9, 'Debolsillo', '2025-05-18 15:02:19.873', 1),
(10, 'Destino', '2025-05-18 15:02:19.876', 1),
(11, 'Paidós', '2025-05-18 15:02:19.878', 1),
(12, 'Ariel', '2025-05-18 15:02:19.880', 1),
(13, 'Alfaguara', '2025-05-18 15:02:19.882', 1),
(14, 'Castalia', '2025-05-18 15:02:19.884', 1),
(15, 'Océano', '2025-05-18 15:02:19.886', 1),
(16, 'Siruela', '2025-05-18 15:02:19.888', 1),
(17, 'SM', '2025-05-18 15:02:19.891', 1),
(18, 'Norma', '2025-05-18 15:02:19.893', 1),
(19, 'Ediciones B', '2025-05-18 15:02:19.895', 1),
(20, 'Seix Barral', '2025-05-18 15:02:19.897', 1),
(21, 'Salamandra', '2025-05-18 15:04:05.060', 1),
(22, 'Planeta', '2025-05-18 15:04:05.064', 1),
(23, 'Penguin Random House', '2025-05-18 15:04:05.068', 1),
(24, 'Espasa', '2025-05-18 15:04:05.071', 1),
(25, 'Tusquets', '2025-05-18 15:04:05.081', 1),
(26, 'Anagrama', '2025-05-18 15:04:05.085', 1),
(27, 'Acantilado', '2025-05-18 15:04:05.088', 1),
(28, 'Alianza', '2025-05-18 15:04:05.092', 1),
(29, 'Debolsillo', '2025-05-18 15:04:05.095', 1),
(30, 'Destino', '2025-05-18 15:04:05.099', 1),
(31, 'Paidós', '2025-05-18 15:04:05.102', 1),
(32, 'Ariel', '2025-05-18 15:04:05.106', 1),
(33, 'Alfaguara', '2025-05-18 15:04:05.109', 1),
(34, 'Castalia', '2025-05-18 15:04:05.112', 1),
(35, 'Océano', '2025-05-18 15:04:05.116', 1),
(36, 'Siruela', '2025-05-18 15:04:05.119', 1),
(37, 'SM', '2025-05-18 15:04:05.123', 1),
(38, 'Norma', '2025-05-18 15:04:05.126', 1),
(39, 'Ediciones B', '2025-05-18 15:04:05.129', 1),
(40, 'Seix Barral', '2025-05-18 15:04:05.133', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` enum('ADMIN','CLIENT') NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `createdAt`, `state`) VALUES
(1, 'África Cáceres Jódar', 'wnunez@yahoo.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.901', 1),
(2, 'Abel Ferrando Jover', 'pmaldonado@nicolas-mas.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.904', 1),
(3, 'Zaida Comas Barco', 'ceciliagalan@barral.es', '12345678', 'ADMIN', '2025-05-18 15:02:19.906', 1),
(4, 'María Dolores España Lledó', 'tpeiro@correa.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.909', 1),
(5, 'Juan Antonio Pineda Alfonso', 'lolasegura@jara.es', '12345678', 'ADMIN', '2025-05-18 15:02:19.911', 1),
(6, 'Marcelo Alcántara Sanmartín', 'canovaseutimio@yahoo.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.914', 1),
(7, 'Ximena Valderrama Clemente', 'lpalomar@coello.es', '12345678', 'CLIENT', '2025-05-18 15:02:19.917', 1),
(8, 'Rocío Almagro-Campo', 'umorales@yahoo.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.919', 1),
(9, 'Marita Almazán Múgica', 'iglesiayessica@yahoo.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.922', 1),
(10, 'Leoncio Carballo Rebollo', 'genovevaarenas@yahoo.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.924', 1),
(11, 'Noelia del Ugarte', 'tolosacarmelo@yahoo.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.927', 1),
(12, 'Eva Estévez Roldán', 'ursulavaquero@rozas.net', '12345678', 'ADMIN', '2025-05-18 15:02:19.929', 1),
(13, 'Calixta Contreras Vives', 'celso84@jorda-palomo.es', '12345678', 'ADMIN', '2025-05-18 15:02:19.932', 1),
(14, 'Abilio Calderon Gonzalez', 'humberto32@becerra-duarte.org', '12345678', 'CLIENT', '2025-05-18 15:02:19.934', 1),
(15, 'Ibán Salas-Santamaría', 'jbueno@yahoo.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.937', 1),
(16, 'Ofelia Arregui Mendez', 'yestrada@vigil-garcia.es', '12345678', 'CLIENT', '2025-05-18 15:02:19.939', 1),
(17, 'Isabel Ribera Vara', 'qtrillo@hotmail.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.942', 1),
(18, 'Bartolomé del Pol', 'upuente@ruano.net', '12345678', 'ADMIN', '2025-05-18 15:02:19.945', 1),
(19, 'Vito Olmo', 'bterron@gmail.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.947', 1),
(20, 'Ruy Gil Batlle', 'plinioizaguirre@yahoo.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.950', 1),
(21, 'Trini Valencia Cal', 'bcoll@franco.es', '12345678', 'ADMIN', '2025-05-18 15:02:19.952', 1),
(22, 'Feliciana Company', 'jodargalo@nadal.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.955', 1),
(23, 'Macaria López Mur', 'romulo33@casals.es', '12345678', 'ADMIN', '2025-05-18 15:02:19.957', 1),
(24, 'Abilio Vicens Oller', 'botelladominga@hotmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.960', 1),
(25, 'Celestina Beltrán', 'rosalvacasas@montero.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.962', 1),
(26, 'Miguela Piña Anguita', 'sandalio07@valera.es', '12345678', 'CLIENT', '2025-05-18 15:02:19.965', 1),
(27, 'Gervasio Quero-Jaume', 'eblanch@yahoo.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.968', 1),
(28, 'Dafne Robledo', 'ulises94@yahoo.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.970', 1),
(29, 'Anna del Gascón', 'ypardo@roig.org', '12345678', 'CLIENT', '2025-05-18 15:02:19.973', 1),
(30, 'Luna Larrea Benavides', 'cginer@yahoo.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.975', 1),
(31, 'María Luisa Boada', 'alcazarofelia@hotmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.978', 1),
(32, 'Margarita Espada-Serna', 'victoria96@cervantes-uriarte.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.981', 1),
(33, 'Cloe Bayona Elorza', 'sanjuandani@gmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.984', 1),
(34, 'Agapito Bertrán-Mayoral', 'floresciriaco@gmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.987', 1),
(35, 'Leocadia Villa', 'quirogaluciano@hotmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.989', 1),
(36, 'Macario Pelayo Guijarro Taboada', 'martineloisa@manzanares-saez.com', '12345678', 'ADMIN', '2025-05-18 15:02:19.992', 1),
(37, 'Almudena Alarcón Rivas', 'flavio20@ordonez.es', '12345678', 'CLIENT', '2025-05-18 15:02:19.995', 1),
(38, 'Ligia Marí-Pujadas', 'gabino38@hotmail.com', '12345678', 'CLIENT', '2025-05-18 15:02:19.998', 1),
(39, 'Saturnino Manrique-Guijarro', 'evitamontoya@yahoo.com', '12345678', 'ADMIN', '2025-05-18 15:02:20.000', 1),
(40, 'Reyna Catalán Marí', 'amandacalzada@hotmail.com', '12345678', 'CLIENT', '2025-05-18 15:02:20.003', 1),
(41, 'Gracia Patricia Casal Pomares', 'ximena21@gmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:20.006', 1),
(42, 'Vidal Morera Cruz', 'dmorales@hotmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:20.009', 1),
(43, 'Wálter Bárcena Aroca', 'imulet@martinez.es', '12345678', 'ADMIN', '2025-05-18 15:02:20.012', 1),
(44, 'Esteban Uriarte', 'natanael13@carlos-fuentes.com', '12345678', 'CLIENT', '2025-05-18 15:02:20.015', 1),
(45, 'Adolfo Caro Zabala', 'angelicaizaguirre@oliver-vargas.es', '12345678', 'ADMIN', '2025-05-18 15:02:20.018', 1),
(46, 'Ángeles de Solana', 'mazaafrica@gmail.com', '12345678', 'CLIENT', '2025-05-18 15:02:20.021', 1),
(47, 'Luciano Bayo Fábregas', 'pfarre@gmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:20.024', 1),
(48, 'Basilio Íñigo Amigó Menéndez', 'gutierrezdonato@reig.com', '12345678', 'CLIENT', '2025-05-18 15:02:20.027', 1),
(49, 'Rafaela Ordóñez Roma', 'brigida01@gmail.com', '12345678', 'ADMIN', '2025-05-18 15:02:20.030', 1),
(50, 'Mirta Paredes Pi', 'jovita54@macias.org', '12345678', 'CLIENT', '2025-05-18 15:02:20.033', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('20086ac7-26f6-4894-95dd-4f8deafb3f0c', '1b6c229d0ac00570df825446649c3b087cb65be7bc69f374606d351bff5e36b0', '2025-05-18 15:02:09.702', '20250517123357_add_state', NULL, NULL, '2025-05-18 15:02:09.637', 1),
('a205188b-2a76-440f-b994-29daff1dc470', 'ba8ff71cc797987188635a3919bf291927999584d3d4b6dd6ea97b939f9221cf', '2025-05-18 15:02:09.634', '20250517122403_init', NULL, NULL, '2025-05-18 15:02:09.153', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Book_authorId_fkey` (`authorId`),
  ADD KEY `Book_categoryId_fkey` (`categoryId`),
  ADD KEY `Book_publisherId_fkey` (`publisherId`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Loan_userId_fkey` (`userId`),
  ADD KEY `Loan_bookId_fkey` (`bookId`);

--
-- Indices de la tabla `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indices de la tabla `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `Book_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `author` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Book_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Book_publisherId_fkey` FOREIGN KEY (`publisherId`) REFERENCES `publisher` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `Loan_bookId_fkey` FOREIGN KEY (`bookId`) REFERENCES `book` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Loan_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
--
-- Base de datos: `db_books`
--
CREATE DATABASE IF NOT EXISTS `db_books` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_books`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authors`
--

CREATE TABLE `authors` (
  `id_author` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_author` int(11) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `year_published` year(4) DEFAULT NULL,
  `num_pages` int(11) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `id_publisher` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `state` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publishers`
--

CREATE TABLE `publishers` (
  `id_publisher` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id_author`);

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `fk_author` (`id_author`),
  ADD KEY `fk_category` (`id_category`),
  ADD KEY `fk_publisher` (`id_publisher`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id_publisher`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authors`
--
ALTER TABLE `authors`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id_publisher` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_author` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_publisher` FOREIGN KEY (`id_publisher`) REFERENCES `publishers` (`id_publisher`) ON UPDATE CASCADE;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"biblioapp\",\"table\":\"author\"},{\"db\":\"biblioapp\",\"table\":\"loan\"},{\"db\":\"biblioapp\",\"table\":\"_prisma_migrations\"},{\"db\":\"biblioapp\",\"table\":\"user\"},{\"db\":\"biblioapp\",\"table\":\"publisher\"},{\"db\":\"biblioapp\",\"table\":\"book\"},{\"db\":\"biblioapp\",\"table\":\"category\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-05-18 15:02:22', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
