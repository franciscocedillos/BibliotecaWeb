-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2018 a las 23:41:41
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sibylbiblioteca`
--

-- -----------------------------------------------------
-- Schema sibylbiblioteca
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sibylbiblioteca`;

-- -----------------------------------------------------
-- Schema sibylbiblioteca
-- -----------------------------------------------------

CREATE DATABASE IF NOT EXISTS `sibylbiblioteca` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sibylbiblioteca`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `autId` int(11) NOT NULL,
  `autNombre` varchar(150) NOT NULL,
  `autApellido` varchar(150) NOT NULL,
  `autFechaNac` date DEFAULT NULL,
  `paiId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`autId`, `autNombre`, `autApellido`, `autFechaNac`, `paiId`) VALUES
(1, 'Miguel', 'de Cervantes', '1547-09-29', 213),
(2, 'Claudia', 'Lars', '1989-12-20', 67),
(3, 'Cornelia', 'Funke', '1982-09-24', 83),
(4, 'Stephen', 'King', '1957-09-21', 240);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

CREATE TABLE `categoriaproducto` (
  `cproId` int(11) NOT NULL,
  `cproCodigo` varchar(10) DEFAULT NULL,
  `cproNombre` varchar(150) NOT NULL,
  `cproIdPrin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoriaproducto`
--

INSERT INTO `categoriaproducto` (`cproId`, `cproCodigo`, `cproNombre`, `cproIdPrin`) VALUES
(1, '1', 'Accesorios', NULL),
(2, '2', 'Agendas y calendarios', NULL),
(3, '3', 'Conocimiento', NULL),
(4, '4', 'Ciencias', NULL),
(5, '5', 'Crecimineto', NULL),
(6, '6', 'Humana', NULL),
(7, '7', 'Infatil', NULL),
(8, '8', 'Juvenil', NULL),
(9, '9', 'Literatura', NULL),
(10, '10', 'Otros', NULL),
(11, '11', 'Artículos de oficina', 1),
(12, '12', 'Materiales varios', 1),
(13, '13', 'Papelería', 1),
(14, '31', 'Arquitectura', 3),
(15, '32', 'Arte', 3),
(16, '33', 'Guias', 3),
(17, '34', 'Mascotas', 3),
(18, '42', 'Ciencias políticas y sociales', 4),
(19, '43', 'Ciencias naturales', 4),
(20, '44', 'Ciencias económicas y empresariales', 4),
(21, '45', 'Comunicación', 4),
(22, '46', 'Filosofía', 4),
(23, '47', 'Historia', 4),
(24, '48', 'Lenguaje', 4),
(25, '49', 'Medicina', 4),
(26, '410', 'Ingeniería', 4),
(27, '411', 'Matemáticas', 4),
(28, '51', 'Consulta', 5),
(29, '52', 'Cocina', 5),
(30, '53', 'Hobbies', 5),
(31, '54', 'Juegos educativos', 5),
(32, '55', 'Libros de texto y formación', 5),
(33, '56', 'Manualidades', 5),
(34, '57', 'Salud y dieta', 5),
(35, '58', 'Música', 5),
(36, '61', 'Autoayuda y espiritualidad', 6),
(37, '62', 'Amor', 6),
(38, '63', 'Derecho', 6),
(39, '64', 'Psicología y pedagogía', 6),
(40, '65', 'Temas de actualidad', 6),
(41, '66', 'Temas controversiales', 6),
(42, '71', 'Adivinanzas y trabalenguas', 7),
(43, '72', 'Cuentos', 7),
(44, '73', 'Infantiles', 7),
(45, '74', 'Libros de colorear', 7),
(46, '75', 'Primeros lectores', 7),
(47, '81', 'Comics', 8),
(48, '82', 'Juvenil', 8),
(49, '83', 'Manga', 8),
(50, '91', 'Clásicos', 9),
(51, '92', 'Nacionales', 9),
(52, '93', 'Fábulas y cuentos', 9),
(53, '94', 'Novelas', 9),
(54, '95', 'Poesía', 9),
(55, '96', 'Literatura contemporánea', 9),
(56, '97', 'Literatura en inglés', 9),
(57, '98', 'Literatura erótica', 9),
(58, '99', 'Literatura narrativa', 9),
(59, '910', 'Literatura romántica', 9),
(60, '911', 'Literatura en francés', 9),
(61, '912', 'Literatura fantástica', 9),
(62, '913', 'Literatura de humor', 9),
(63, '914', 'Literatura policial', 9),
(64, '915', 'Literatura terror y suspenso', 9),
(65, '916', 'Literatura ficción', 9),
(66, '917', 'Ensayo', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `copia`
--

CREATE TABLE `copia` (
  `cpId` int(11) NOT NULL,
  `proId` int(11) DEFAULT NULL,
  `cpUbicacion` varchar(150) DEFAULT NULL,
  `stpId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `copia`
--

INSERT INTO `copia` (`cpId`, `proId`, `cpUbicacion`, `stpId`) VALUES
(1, 5, 'BiblioCentral', 5),
(2, 5, 'BiblioCentral', 1),
(3, 5, 'BiblioCentral', 1),
(4, 6, 'BiblioCentral', 5),
(5, 6, 'BiblioCentral', 1),
(6, 6, 'BiblioCentral', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `edtId` int(11) NOT NULL,
  `edtNombre` varchar(150) NOT NULL,
  `edtTelefono` varchar(15) DEFAULT NULL,
  `edtDireccion` varchar(500) DEFAULT NULL,
  `paiId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`edtId`, `edtNombre`, `edtTelefono`, `edtDireccion`, `paiId`) VALUES
(1, 'Alfaguara', '+34 91 535 8190', 'Penguin Random House Grupo Editorial Calle Luchana, 23, 1ª Planta 28010 MADRID', 213),
(2, 'Santillana', '7266 727', '01800 SCOMPAR (7266 727) CIUDAD DE MEXICO', 143),
(3, 'Editoriales La Ceiba', '22222222', 'Antiguo Cuscatlan', 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoproducto`
--

CREATE TABLE `estadoproducto` (
  `stpId` int(11) NOT NULL,
  `stpNombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadoproducto`
--

INSERT INTO `estadoproducto` (`stpId`, `stpNombre`) VALUES
(1, 'Disponible'),
(2, 'En Proceso'),
(3, 'Reservado'),
(4, 'Coleccion Reserva'),
(5, 'Prestamo'),
(6, 'En Mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `langId` int(11) NOT NULL,
  `langAbrev` varchar(5) DEFAULT NULL,
  `langNombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`langId`, `langAbrev`, `langNombre`) VALUES
(1, 'es', 'ESPAÑOL'),
(2, 'en', 'INGLES'),
(3, 'fr', 'FRANCES'),
(4, 'pt', 'PORTUGUES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `paiId` int(11) NOT NULL,
  `paiAbrev` varchar(3) DEFAULT NULL,
  `paiNombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`paiId`, `paiAbrev`, `paiNombre`) VALUES
(1, 'AFG', 'Afganistán'),
(2, 'ALA', 'Islas de Åland'),
(3, 'ALB', 'Albania'),
(4, 'DZA', 'Argelia'),
(5, 'ASM', 'Samoa Americana'),
(6, 'AND', 'Andorra'),
(7, 'AGO', 'Angola'),
(8, 'AIA', 'Anguila'),
(9, 'ATA', 'Antártida'),
(10, 'ATG', 'Antigua y Barbuda'),
(11, 'ARG', 'Argentina'),
(12, 'ARM', 'Armenia'),
(13, 'ABW', 'Aruba'),
(14, 'AUS', 'Australia'),
(15, 'AUT', 'Austria'),
(16, 'AZE', 'Azerbaiyán'),
(17, 'BHS', 'Bahamas'),
(18, 'BHR', 'Baréin'),
(19, 'BGD', 'Bangladesh'),
(20, 'BRB', 'Barbados'),
(21, 'BLR', 'Bielorrusia'),
(22, 'BEL', 'Bélgica'),
(23, 'BLZ', 'Belice'),
(24, 'BEN', 'Benín'),
(25, 'BMU', 'Bermuda'),
(26, 'BTN', 'Bután'),
(27, 'BOL', 'Bolivia'),
(28, 'BES', 'Bonaire, San Eustaquio y Saba'),
(29, 'BIH', 'Bosnia y Herzegovina'),
(30, 'BWA', 'Botsuana'),
(31, 'BVT', 'Isla Bouvet'),
(32, 'BRA', 'Brasil'),
(33, 'IOT', 'Territorio Británico del Océano Índico'),
(34, 'VGB', 'Islas Vírgenes Británicas'),
(35, 'BRN', 'Brunei'),
(36, 'BGR', 'Bulgaria'),
(37, 'BFA', 'Burkina Faso'),
(38, 'BDI', 'Burundi'),
(39, 'KHM', 'Camboya'),
(40, 'CMR', 'Camerún'),
(41, 'CAN', 'Canadá'),
(42, 'CPV', 'Cabo Verde'),
(43, 'CYM', 'Islas Caimán'),
(44, 'CAF', 'República de África Central'),
(45, 'TCD', 'Chad'),
(46, 'CHL', 'Chile'),
(47, 'CHN', 'China'),
(48, 'CXR', 'Isla de Pascua'),
(49, 'CCK', 'Islas Cocos'),
(50, 'COL', 'Colombia'),
(51, 'COM', 'Comoras'),
(52, 'COK', 'Islas Cook'),
(53, 'CRI', 'Costa Rica'),
(54, 'HRV', 'Croacia'),
(55, 'CUB', 'Cuba'),
(56, 'CUW', 'Curazao'),
(57, 'CYP', 'Chipre'),
(58, 'CZE', 'República Checa'),
(59, 'COD', 'República Democrática del Congo'),
(60, 'DNK', 'Dinamarca'),
(61, 'DJI', 'Yibuti'),
(62, 'DMA', 'Dominica'),
(63, 'DOM', 'República Dominicana'),
(64, 'TLS', 'Timor Oriental'),
(65, 'ECU', 'Ecuador'),
(66, 'EGY', 'Egipto'),
(67, 'SLV', 'El Salvador'),
(68, 'GNQ', 'Guinea Ecuatorial'),
(69, 'ERI', 'Eritrea'),
(70, 'EST', 'Estonia'),
(71, 'ETH', 'Etiopía'),
(72, 'FLK', 'Islas Malvinas'),
(73, 'FRO', 'Islas Faroe'),
(74, 'FJI', 'Fiji'),
(75, 'FIN', 'Finlandia'),
(76, 'FRA', 'Francia'),
(77, 'GUF', 'Guayana Francesa'),
(78, 'PYF', 'Polinesia Francesa'),
(79, 'ATF', 'Territorios del sur Franceses'),
(80, 'GAB', 'Gabón'),
(81, 'GMB', 'Gambia'),
(82, 'GEO', 'Georgia'),
(83, 'DEU', 'Alemania'),
(84, 'GHA', 'Ghana'),
(85, 'GIB', 'Gibraltar'),
(86, 'GRC', 'Grecia'),
(87, 'GRL', 'Groenlandia'),
(88, 'GRD', 'Granada'),
(89, 'GLP', 'Guadalupe'),
(90, 'GUM', 'Guam'),
(91, 'GTM', 'Guatemala'),
(92, 'GGY', 'Guernsey'),
(93, 'GIN', 'Guinea'),
(94, 'GNB', 'Guinea Bissau'),
(95, 'GUY', 'Guyana'),
(96, 'HTI', 'Haití'),
(97, 'HMD', 'Islas Heard y McDonald'),
(98, 'HND', 'Honduras'),
(99, 'HKG', 'Hong Kong'),
(100, 'HUN', 'Hungría'),
(101, 'ISL', 'Islandia'),
(102, 'IND', 'India'),
(103, 'IDN', 'Indonesia'),
(104, 'IRN', 'Irán'),
(105, 'IRQ', 'Irak'),
(106, 'IRL', 'Irlanda'),
(107, 'IMN', 'Isla de Man'),
(108, 'ISR', 'Israel'),
(109, 'ITA', 'Italia'),
(110, 'CIV', 'Costa de Marfil'),
(111, 'JAM', 'Jamaica'),
(112, 'JPN', 'Japón'),
(113, 'JEY', 'Jersey'),
(114, 'JOR', 'Jordania'),
(115, 'KAZ', 'Kazajistán'),
(116, 'KEN', 'Kenia'),
(117, 'KIR', 'Kiribati'),
(118, 'XKX', 'Kosovo'),
(119, 'KWT', 'Kuwait'),
(120, 'KGZ', 'Kirguistán'),
(121, 'LAO', 'Laos'),
(122, 'LVA', 'Letonia'),
(123, 'LBN', 'Líbano'),
(124, 'LSO', 'Lesoto'),
(125, 'LBR', 'Liberia'),
(126, 'LBY', 'Libia'),
(127, 'LIE', 'Liechtenstein'),
(128, 'LTU', 'Lituania'),
(129, 'LUX', 'Luxemburgo'),
(130, 'MAC', 'Macao'),
(131, 'MKD', 'Macedonia'),
(132, 'MDG', 'Madagascar'),
(133, 'MWI', 'Malaui'),
(134, 'MYS', 'Malasia'),
(135, 'MDV', 'Maldivas'),
(136, 'MLI', 'Malí'),
(137, 'MLT', 'Malta'),
(138, 'MHL', 'Islas Marshall'),
(139, 'MTQ', 'Martinica'),
(140, 'MRT', 'Mauritania'),
(141, 'MUS', 'Mauricio'),
(142, 'MYT', 'Mayotte'),
(143, 'MEX', 'México'),
(144, 'FSM', 'Micronesia'),
(145, 'MDA', 'Moldavia'),
(146, 'MCO', 'Mónaco'),
(147, 'MNG', 'Mongolia'),
(148, 'MNE', 'Montenegro'),
(149, 'MSR', 'Montserrat'),
(150, 'MAR', 'Marruecos'),
(151, 'MOZ', 'Mozambique'),
(152, 'MMR', 'Myanmar'),
(153, 'NAM', 'Namibia'),
(154, 'NRU', 'Nauru'),
(155, 'NPL', 'Nepal'),
(156, 'NLD', 'Países Bajos'),
(157, 'ANT', 'Antillas Holandesas'),
(158, 'NCL', 'Nueva Caledonia'),
(159, 'NZL', 'Nueva Zelanda'),
(160, 'NIC', 'Nicaragua'),
(161, 'NER', 'Níger'),
(162, 'NGA', 'Nigeria'),
(163, 'NIU', 'Niue'),
(164, 'NFK', 'Isla Norfolk'),
(165, 'PRK', 'Corea del Norte'),
(166, 'MNP', 'Islas Marianas del Norte'),
(167, 'NOR', 'Noruega'),
(168, 'OMN', 'Omán'),
(169, 'PAK', 'Pakistán'),
(170, 'PLW', 'Palaos'),
(171, 'PSE', 'Territorios Palestinos'),
(172, 'PAN', 'Panamá'),
(173, 'PNG', 'Papúa Nueva Guinea'),
(174, 'PRY', 'Paraguay'),
(175, 'PER', 'Perú'),
(176, 'PHL', 'Filipinas'),
(177, 'PCN', 'Islas Pitcairn'),
(178, 'POL', 'Polonia'),
(179, 'PRT', 'Portugal'),
(180, 'PRI', 'Puerto Rico'),
(181, 'QAT', 'Catar'),
(182, 'COG', 'República del Congo'),
(183, 'REU', 'Reunión'),
(184, 'ROU', 'Rumanía'),
(185, 'RUS', 'Rusia'),
(186, 'RWA', 'Ruanda'),
(187, 'BLM', 'San Bartolomé'),
(188, 'SHN', 'Santa Elena'),
(189, 'KNA', 'San Cristóbal y Nieves'),
(190, 'LCA', 'Santa Lucía'),
(191, 'MAF', 'San Martín'),
(192, 'SPM', 'San Pedro y Miguelón'),
(193, 'VCT', 'San Vicente y las Granadinas'),
(194, 'WSM', 'Samoa Occidental'),
(195, 'SMR', 'San Marino'),
(196, 'STP', 'Santo Tomé y Príncipe'),
(197, 'SAU', 'Arabia Saudita'),
(198, 'SEN', 'Senegal'),
(199, 'SRB', 'Serbia'),
(200, 'SCG', 'Serbia y Montenegro'),
(201, 'SYC', 'Seychelles'),
(202, 'SLE', 'Sierra Leona'),
(203, 'SGP', 'Singapur'),
(204, 'SXM', 'San Martín'),
(205, 'SVK', 'Eslovaquia'),
(206, 'SVN', 'Eslovenia'),
(207, 'SLB', 'Islas Salomón'),
(208, 'SOM', 'Somalia'),
(209, 'ZAF', 'Sudáfrica'),
(210, 'SGS', 'Islas Georgia del Sur y Sandwich del Sur'),
(211, 'KOR', 'Corea del Sur'),
(212, 'SSD', 'Sudán del Sur'),
(213, 'ESP', 'España'),
(214, 'LKA', 'Sri Lanka'),
(215, 'SDN', 'Sudán'),
(216, 'SUR', 'Surinam'),
(217, 'SJM', 'Islas Svalbard y Jan Mayen'),
(218, 'SWZ', 'Suazilandia'),
(219, 'SWE', 'Suecia'),
(220, 'CHE', 'Suiza'),
(221, 'SYR', 'Siria'),
(222, 'TWN', 'Taiwán'),
(223, 'TJK', 'Tayikistán'),
(224, 'TZA', 'Tanzania'),
(225, 'THA', 'Tailandia'),
(226, 'TGO', 'República Togolesa'),
(227, 'TKL', 'Islas Tokelau'),
(228, 'TON', 'Tonga'),
(229, 'TTO', 'Trinidad y Tobago'),
(230, 'TUN', 'Túnez'),
(231, 'TUR', 'Turquía'),
(232, 'TKM', 'Turkmenistán'),
(233, 'TCA', 'Islas Turcos y Caicos'),
(234, 'TUV', 'Tuvalu'),
(235, 'VIR', 'Islas Vírgenes de los EE.UU.'),
(236, 'UGA', 'Uganda'),
(237, 'UKR', 'Ucrania'),
(238, 'ARE', 'Emiratos Árabes Unidos'),
(239, 'GBR', 'Reino Unido'),
(240, 'USA', 'Estados Unidos (USA)'),
(241, 'UMI', 'Islas menores alejadas de los Estados Unidos'),
(242, 'URY', 'Uruguay'),
(243, 'UZB', 'Uzbekistán'),
(244, 'VUT', 'Vanuatu'),
(245, 'VAT', 'Vaticano'),
(246, 'VEN', 'Venezuela'),
(247, 'VNM', 'Vietnam'),
(248, 'WLF', 'Wallis y Futuna'),
(249, 'ESH', 'Sahara Occidental'),
(250, 'YEM', 'Yemen'),
(251, 'ZMB', 'Zambia'),
(252, 'ZWE', 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `prstId` int(11) NOT NULL,
  `prstFechaPres` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prstFechaPrevDev` date DEFAULT NULL,
  `prstFechaDev` datetime DEFAULT NULL,
  `usrId` int(11) DEFAULT NULL,
  `proId` int(11) DEFAULT NULL,
  `prstMora` decimal(4,4) DEFAULT '0.0000',
  `prstDev` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`prstId`, `prstFechaPres`, `prstFechaPrevDev`, `prstFechaDev`, `usrId`, `proId`, `prstMora`, `prstDev`) VALUES
(1, '2018-04-03 06:00:00', '2018-04-03', NULL, NULL, 5, '0.0000', b'1111111111111111111111111111111'),
(2, '2018-04-03 06:00:00', '2018-04-03', NULL, NULL, 6, '0.0000', b'1111111111111111111111111111111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `proId` int(11) NOT NULL,
  `tproId` int(11) DEFAULT NULL,
  `cproId` int(11) DEFAULT NULL,
  `proIsbn` varchar(13) NOT NULL,
  `proNombre` varchar(150) NOT NULL,
  `edtId` int(11) DEFAULT NULL,
  `proNumPagina` int(11) DEFAULT NULL,
  `proEdicion` int(11) DEFAULT NULL,
  `proPublicLugar` varchar(150) DEFAULT NULL,
  `proPublicAnio` int(11) DEFAULT NULL,
  `proVolumen` int(11) DEFAULT NULL,
  `proPeso` int(11) DEFAULT NULL,
  `proColeccion` varchar(150) DEFAULT NULL,
  `langId` int(11) DEFAULT NULL,
  `proDescripcion` varchar(5000) DEFAULT NULL,
  `proFoto` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`proId`, `tproId`, `cproId`, `proIsbn`, `proNombre`, `edtId`, `proNumPagina`, `proEdicion`, `proPublicLugar`, `proPublicAnio`, `proVolumen`, `proPeso`, `proColeccion`, `langId`, `proDescripcion`, `proFoto`) VALUES
(1, 1, NULL, '1456875420', 'Don Quijote de la Mancha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 1, '', '', 1, 0, 0, '', 2018, 0, 0, '', 1, '', NULL),
(3, 1, 1, '', '', 1, 0, 0, '', 2018, 0, 0, '', 1, '', NULL),
(4, 1, 20, 'asrtyu', 'Libro 1', 1, 10, 3, 'Uno', 2018, 1, 7, '2', 1, 'asdfgh', NULL),
(5, 1, 58, '9788498413199', 'CORAZON DE TINTA', 1, 606, 1, 'Alemania', 2014, 1, 2, 'Mundo de tinta', 1, 'Mortimer «Mo» Folchart y su hija de 12 años, Meggie, comparten su pasión por los libros y un don: si leen en voz alta, pueden hacer aparecer en la vida real a los personajes del libro que están leyendo. Pero un peligro acecha: por cada personaje de ficción que llegue al mundo real desaparecerá una persona real, que se irá al mundo de ficción... \nHace tiempo Mo compró un ejemplar de un libro muy buscado. Se trata de Corazón de Tinta, un libro repleto de ilustraciones y de extrañas y maléficas criaturas que, desde que su hija Meggie tenía tres años, conserva escondido. Fue entonces cuando, mientras lo leía en voz alta, desapareció Resa, la madre, en ese misterioso mundo de ficción. Capricornio, el villano de Corazón de Tinta, desea hacerse con ese ejemplar único para controlar el poder sobre la encarnación del mal: la Sombra. Para ello, secuestrará a nuestros héroes y los embarcará en un peligroso viaje…', NULL),
(6, 1, 64, '9788498414530', 'RECKLESS', 3, 590, 1, '', 2016, 1, 0, '', 1, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoautor`
--

CREATE TABLE `productoautor` (
  `pautId` int(11) NOT NULL,
  `autId` int(11) DEFAULT NULL,
  `proId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productoautor`
--

INSERT INTO `productoautor` (`pautId`, `autId`, `proId`) VALUES
(1, 1, 1),
(2, 3, 5),
(3, 3, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `tproId` int(11) NOT NULL,
  `tproNombre` varchar(50) NOT NULL,
  `tproAbrev` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`tproId`, `tproNombre`, `tproAbrev`) VALUES
(1, 'LIBRO', 'LBR'),
(2, 'REVISTA', 'REV'),
(3, 'TESIS', 'TES'),
(4, 'CD', 'CD'),
(5, 'DVD', 'DVD'),
(6, 'PLANO', 'PLN'),
(7, 'MAPA', 'MAP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `tusrId` int(11) NOT NULL,
  `tusrTipo` varchar(30) DEFAULT NULL,
  `tusrMaxPrestamo` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`tusrId`, `tusrTipo`, `tusrMaxPrestamo`) VALUES
(1, 'Administrador', 3),
(2, 'Docente', 6),
(3, 'Alumno', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usrId` int(11) NOT NULL,
  `tusrId` int(11) DEFAULT NULL,
  `usrCodigo` varchar(25) DEFAULT NULL,
  `usrNombre` varchar(150) NOT NULL,
  `usrApellido` varchar(150) NOT NULL,
  `usrDireccion` varchar(500) DEFAULT NULL,
  `usrTelefono` varchar(15) DEFAULT NULL,
  `usrFechaNac` date DEFAULT NULL,
  `usrPassword` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usrId`, `tusrId`, `usrCodigo`, `usrNombre`, `usrApellido`, `usrDireccion`, `usrTelefono`, `usrFechaNac`, `usrPassword`) VALUES
(1, 1, 'aa180003', 'admin', 'admin', 'admin', 'admin', '2018-04-03', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(4, 1, 'FC180002', 'Francisco', 'Cedillos', 'San Salvador', '78945612', '1996-05-04', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9'),
(5, 3, 'JL180003', 'Juan', 'López', 'Santa Tecla', '74589623', '1995-04-20', 'b96025af1b3ce679f2f1a54db75490ecae04af12ed41a02820a279b90679c9d6'),
(7, 2, 'RT180004', 'Rafael', 'Torres', 'Ciudadela DB', '78945615', '1996-04-20', '4813494d137e1631bba301d5acab6e7bb7aa74ce1185d456565ef51d737677b2'),
(8, 1, 'CL180005', 'Carlos', 'Lopez', 'San Vicente', '74859685', '2018-04-03', '8911e4dde2823d86c987710e4df5fbd8445934279ff7f550378de5fc17f21a75'),
(9, 2, 'aa180006', 'asdfghjm', 'asdfghjm', 'asdfghnm', '78945612', '2018-04-03', 'f0e4c2f76c58916ec258f246851bea091d14d4247a2fc3e18694461b1816e13b'),
(10, 2, 'LR180007', 'Luis Eduardo', 'Rivera Martinez', 'Mi casa', '78549875', '1995-10-01', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`autId`),
  ADD KEY `FK_Pais_Autor` (`paiId`);

--
-- Indices de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  ADD PRIMARY KEY (`cproId`);

--
-- Indices de la tabla `copia`
--
ALTER TABLE `copia`
  ADD PRIMARY KEY (`cpId`),
  ADD KEY `FK_Producto_Copia` (`proId`),
  ADD KEY `FK_EstadoProducto_Producto` (`stpId`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`edtId`),
  ADD KEY `FK_Pais_Editorial` (`paiId`);

--
-- Indices de la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
  ADD PRIMARY KEY (`stpId`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`langId`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`paiId`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`prstId`),
  ADD KEY `FK_usuario_prestamo` (`usrId`),
  ADD KEY `FK_Producto_prestamo` (`proId`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`proId`),
  ADD KEY `FK_TipoProducto_Producto` (`tproId`),
  ADD KEY `FK_CategoriaProducto_Producto` (`cproId`),
  ADD KEY `FK_Editorial_Producto` (`edtId`),
  ADD KEY `FK_Idioma_Producto` (`langId`);

--
-- Indices de la tabla `productoautor`
--
ALTER TABLE `productoautor`
  ADD PRIMARY KEY (`pautId`),
  ADD KEY `FK_Autor_ProductoAutor` (`autId`),
  ADD KEY `FK_Producto_ProductoAutor` (`proId`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`tproId`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`tusrId`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usrId`),
  ADD KEY `FK_TipoUsuario_Usuario` (`tusrId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `autId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  MODIFY `cproId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `copia`
--
ALTER TABLE `copia`
  MODIFY `cpId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `edtId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
  MODIFY `stpId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `langId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `paiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `prstId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `proId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productoautor`
--
ALTER TABLE `productoautor`
  MODIFY `pautId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  MODIFY `tproId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `tusrId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usrId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `FK_Pais_Autor` FOREIGN KEY (`paiId`) REFERENCES `pais` (`paiId`);

--
-- Filtros para la tabla `copia`
--
ALTER TABLE `copia`
  ADD CONSTRAINT `FK_EstadoProducto_Producto` FOREIGN KEY (`stpId`) REFERENCES `estadoproducto` (`stpId`),
  ADD CONSTRAINT `FK_Producto_Copia` FOREIGN KEY (`proId`) REFERENCES `producto` (`proId`);

--
-- Filtros para la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD CONSTRAINT `FK_Pais_Editorial` FOREIGN KEY (`paiId`) REFERENCES `pais` (`paiId`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `FK_Producto_prestamo` FOREIGN KEY (`proId`) REFERENCES `producto` (`proId`),
  ADD CONSTRAINT `FK_usuario_prestamo` FOREIGN KEY (`usrId`) REFERENCES `usuario` (`usrId`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_CategoriaProducto_Producto` FOREIGN KEY (`cproId`) REFERENCES `categoriaproducto` (`cproId`),
  ADD CONSTRAINT `FK_Editorial_Producto` FOREIGN KEY (`edtId`) REFERENCES `editorial` (`edtId`),
  ADD CONSTRAINT `FK_Idioma_Producto` FOREIGN KEY (`langId`) REFERENCES `idioma` (`langId`),
  ADD CONSTRAINT `FK_TipoProducto_Producto` FOREIGN KEY (`tproId`) REFERENCES `tipoproducto` (`tproId`);

--
-- Filtros para la tabla `productoautor`
--
ALTER TABLE `productoautor`
  ADD CONSTRAINT `FK_Autor_ProductoAutor` FOREIGN KEY (`autId`) REFERENCES `autor` (`autId`),
  ADD CONSTRAINT `FK_Producto_ProductoAutor` FOREIGN KEY (`proId`) REFERENCES `producto` (`proId`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_TipoUsuario_Usuario` FOREIGN KEY (`tusrId`) REFERENCES `tipousuario` (`tusrId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
