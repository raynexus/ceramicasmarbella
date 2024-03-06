-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-03-2024 a las 11:15:44
-- Versión del servidor: 10.6.16-MariaDB-cll-lve
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jida_ceramicas_marbella`
--
-- Deshabilitar verificación de llaves foráneas
SET FOREIGN_KEY_CHECKS = 0;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_ciudades`
--

CREATE TABLE `m_ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_estados`
--

CREATE TABLE `m_estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(60) DEFAULT NULL,
  `hc_key` varchar(10) DEFAULT NULL,
  `capital` varchar(60) DEFAULT NULL,
  `estatus` int(1) DEFAULT 1,
  `lat` varchar(45) DEFAULT NULL,
  `lng` varchar(45) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `m_estados`
--

INSERT INTO `m_estados` (`id_estado`, `estado`, `hc_key`, `capital`, `estatus`, `lat`, `lng`, `id_pais`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Distrito Capital', 've-df', 'Caracas', 1, '10.41996991', '-67.02002832', 1, NULL, NULL, NULL, NULL),
(2, 'Amazonas', 've-am', 'Puerto Ayacucho', 1, '	3.173823058', '-65.54660405', 1, NULL, NULL, NULL, NULL),
(3, 'Anzo&aacute;tegui', 've-an', 'Barcelona', 1, '10.16995933', '-64.68001612', 1, NULL, NULL, NULL, NULL),
(4, 'Apure', 've-ap', 'San Fern&aacute;ndo de Apure', 1, '7.239983133', '-70.73998214', 1, NULL, NULL, NULL, NULL),
(5, 'Aragua', 've-ar', 'Maracay', 1, '10.2468797', '-67.59580713', 1, NULL, NULL, NULL, NULL),
(6, 'Barinas', 've-ba', 'Barinas', 1, '8.59997764', '-70.25001205', 1, NULL, NULL, NULL, NULL),
(7, 'Bol&iacute;var', 've-bo', 'Ciudad Bol&iacute;var', 1, '8.020426452', '-62.40999964', 1, NULL, NULL, NULL, NULL),
(8, 'Carabobo', 've-ca', 'Valencia', 1, '10.47043194', '-68.17000981', 1, NULL, NULL, NULL, NULL),
(9, 'Cojedes', 've-co', 'San Carlos', 1, '9.657999007', '-68.58999854', 1, NULL, NULL, NULL, NULL),
(10, 'Delta Amacuro', 've-da', 'Tucup&iacute;ta', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(11, 'Falc&oacute;n', 've-fa', 'Coro', 1, '11.42001223', '-69.67999516', 1, NULL, NULL, NULL, NULL),
(12, 'Gu&aacute;rico', 've-gu', 'San Juan de Los Morros', 1, '9.900999019', '-67.35400159', 1, NULL, NULL, NULL, NULL),
(13, 'Lara', 've-la', 'Barquisimeto', 1, '10.18998395', '-70.07999658', 1, NULL, NULL, NULL, NULL),
(14, 'M&eacute;rida', 've-me', 'M&eacute;rida', 1, '8.399989847', '-71.13001001', 1, NULL, NULL, NULL, NULL),
(15, 'Miranda', 've-mi', 'Los Teques', 1, '10.11998822', '-66.77999129', 1, NULL, NULL, NULL, NULL),
(16, 'Monagas', 've-mo', 'Matur&iacute;n', 1, '9.060492166', '-62.05999516', 1, NULL, NULL, NULL, NULL),
(17, 'Nueva Esparta', 've-ne', 'La Asunci&oacute;n', 1, '11.03333403', '-63.8833315', 1, NULL, NULL, NULL, NULL),
(18, 'Portuguesa', 've-po', 'Guanare', 1, '9.049976012', '-69.75001673', 1, NULL, NULL, NULL, NULL),
(19, 'Sucre', 've-su', 'Cuman&aacute;', 1, '10.67000633', '-63.23000126', 1, NULL, NULL, NULL, NULL),
(20, 'T&aacute;chira', 've-ta', 'San Crist&oacute;bal', 1, '7.770002461', '-72.24996749', 1, NULL, NULL, NULL, NULL),
(21, 'Trujillo', 've-tr', 'Trujillo', 1, '9.319959533', '-70.6200153', 1, NULL, NULL, NULL, NULL),
(22, 'Yaracuy', 've-ya', 'San Felipe', 1, '10.33599598', '-68.74599552', 1, NULL, NULL, NULL, NULL),
(23, 'Zulia', 've-zu', 'Maracaibo', 1, '10.07043052', '-72.54994918', 1, NULL, NULL, NULL, NULL),
(24, 'Vargas', 've-va', 'La Guaira', 1, '10.60039817', '-66.9699797', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_estatus_productos`
--

CREATE TABLE `m_estatus_productos` (
  `id_estatus_producto` int(11) NOT NULL,
  `estatus_producto` varchar(60) DEFAULT NULL,
  `identificador` varchar(70) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `m_estatus_productos`
--

INSERT INTO `m_estatus_productos` (`id_estatus_producto`, `estatus_producto`, `identificador`, `id_idioma`, `texto_original`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Activo', 'activo', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Inactivo', 'inactivo', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Eliminado', 'eliminado', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Agotado', 'agotado', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_lineas`
--

CREATE TABLE `m_lineas` (
  `id_linea` int(11) NOT NULL,
  `linea` varchar(60) DEFAULT NULL,
  `identificador` varchar(60) DEFAULT NULL,
  `imagen` text DEFAULT NULL,
  `padre` int(11) DEFAULT NULL,
  `hijo` int(11) DEFAULT NULL,
  `id_estatus` int(11) DEFAULT NULL,
  `carousel_index` int(11) DEFAULT NULL,
  `orden_carousel` int(11) DEFAULT NULL,
  `id_idioma` varchar(4) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `m_lineas`
--

INSERT INTO `m_lineas` (`id_linea`, `linea`, `identificador`, `imagen`, `padre`, `hijo`, `id_estatus`, `carousel_index`, `orden_carousel`, `id_idioma`, `texto_original`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Línea Piso 33x33 cm', 'linea-piso-33x33-cm', '5ddc4575e0aa3.jpeg', NULL, NULL, 1, NULL, 2, NULL, NULL, NULL, 4, NULL, NULL),
(2, 'Línea Piso 45x45 cm', 'linea-piso-45x45-cm', '5ddef7064d17e.jpeg', NULL, NULL, 1, NULL, 3, NULL, NULL, NULL, 4, NULL, NULL),
(3, 'Línea Pared 25x33 cm', 'linea-pared-25x33-cm', 'pared_ostra_25x33.jpg', NULL, NULL, 1, NULL, 5, NULL, NULL, NULL, 4, NULL, NULL),
(4, 'Línea Mosaico 25x33 cm', 'linea-mosaico-25x33-cm', 'pared_mosaico_lluvia_25x33.jpg', NULL, NULL, 1, NULL, 6, NULL, NULL, NULL, 5, NULL, NULL),
(7, 'Línea PREMIUM<br>Piso 33x33 cm', 'linea-premium-', '5ddef521c3d47.jpeg', NULL, NULL, 1, NULL, 1, NULL, NULL, 4, 4, '2019-11-25 16:43:41', '2019-11-25 16:43:41'),
(8, 'Línea PREMIUM<br>Pared 25x33 cm', 'linea-premium-pared-25x33', '5ddc46c8a662f.jpeg', NULL, NULL, 1, NULL, 4, NULL, NULL, 4, 4, '2019-11-25 17:25:28', '2019-11-25 17:25:28'),
(9, 'Línea Pared 25x50', 'linea-pared-25x50', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, 5, '2024-03-06 08:55:03', '2024-03-06 08:55:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_fotos_productos`
--

CREATE TABLE `r_fotos_productos` (
  `id_foto_producto` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `foto_producto` varchar(400) DEFAULT NULL,
  `media_principal` tinyint(4) DEFAULT NULL,
  `meta_data` varchar(300) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_productos_lineas`
--

CREATE TABLE `r_productos_lineas` (
  `id_producto_linea` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_linea` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `r_productos_lineas`
--

INSERT INTO `r_productos_lineas` (`id_producto_linea`, `id_producto`, `id_linea`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL),
(2, 2, 1, NULL, NULL, NULL, NULL),
(3, 3, 1, NULL, NULL, NULL, NULL),
(5, 5, 1, NULL, NULL, NULL, NULL),
(6, 6, 1, NULL, NULL, NULL, NULL),
(8, 8, 1, NULL, NULL, NULL, NULL),
(9, 9, 1, NULL, NULL, NULL, NULL),
(10, 10, 2, NULL, NULL, NULL, NULL),
(13, 13, 3, NULL, NULL, NULL, NULL),
(14, 14, 3, NULL, NULL, NULL, NULL),
(15, 15, 4, NULL, NULL, NULL, NULL),
(16, 16, 4, NULL, NULL, NULL, NULL),
(17, 17, 4, NULL, NULL, NULL, NULL),
(18, 18, 2, 4, 4, '2019-11-25 17:31:04', '2019-11-25 17:31:04'),
(19, 19, 2, 4, 4, '2019-11-25 17:48:09', '2019-11-25 17:48:09'),
(20, 20, 2, 4, 4, '2019-11-25 18:05:48', '2019-11-25 18:05:48'),
(24, 24, 1, 4, 4, '2019-11-25 18:37:04', '2019-11-25 18:37:04'),
(28, 28, 8, 4, 4, '2019-11-27 17:27:18', '2019-11-27 17:27:18'),
(29, 29, 8, 4, 4, '2019-11-27 17:30:25', '2019-11-27 17:30:25'),
(30, 30, 8, 4, 4, '2019-11-27 17:44:36', '2019-11-27 17:44:36'),
(31, 31, 1, 4, 4, '2019-11-27 17:54:00', '2019-11-27 17:54:00'),
(32, 32, 1, 4, 4, '2019-11-27 18:05:26', '2019-11-27 18:05:26'),
(33, 33, 1, 4, 4, '2019-11-27 18:07:49', '2019-11-27 18:07:49'),
(34, 34, 7, 4, 4, '2019-11-27 18:12:18', '2019-11-27 18:12:18'),
(35, 35, 4, 5, 5, '2021-04-26 11:55:02', '2021-04-26 11:55:02'),
(36, 36, 1, 5, 5, '2021-04-26 12:40:19', '2021-04-26 12:40:19'),
(37, 37, 1, 5, 5, '2021-04-27 06:59:28', '2021-04-27 06:59:28'),
(38, 38, 1, 5, 5, '2021-04-27 07:11:25', '2021-04-27 07:11:25'),
(39, 39, 3, 5, 5, '2022-10-04 07:14:57', '2022-10-04 07:14:57'),
(40, 40, 1, 5, 5, '2022-10-04 11:31:14', '2022-10-04 11:31:14'),
(43, 43, 2, 5, 5, '2022-10-04 11:50:21', '2022-10-04 11:50:21'),
(44, 44, 1, 5, 5, '2024-03-06 08:50:08', '2024-03-06 08:50:08'),
(45, 45, 1, 5, 5, '2024-03-06 08:53:25', '2024-03-06 08:53:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_proveedores_sedes`
--

CREATE TABLE `r_proveedores_sedes` (
  `id_proveedor_sede` int(11) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `latitud` varchar(10) DEFAULT NULL,
  `longitud` varchar(10) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_clasificaciones`
--

CREATE TABLE `s_clasificaciones` (
  `id_clasificacion` int(11) NOT NULL,
  `clasificacion` varchar(100) DEFAULT NULL,
  `identificador` varchar(100) DEFAULT NULL,
  `padre` int(11) DEFAULT NULL,
  `hijo` int(11) DEFAULT NULL,
  `nombre_clave` varchar(100) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `permiso` int(11) DEFAULT NULL,
  `total_post` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `id_estatus` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_clasificacion_posts`
--

CREATE TABLE `s_clasificacion_posts` (
  `id_clasificacion_post` int(11) NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_clasificacion` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_comentarios_posts`
--

CREATE TABLE `s_comentarios_posts` (
  `id_comentario_post` int(11) NOT NULL,
  `comentario_post` text DEFAULT NULL,
  `nombres` varchar(25) DEFAULT NULL,
  `apellidos` varchar(35) DEFAULT NULL,
  `correo` varchar(35) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_Creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_componentes`
--

CREATE TABLE `s_componentes` (
  `id_componente` int(11) NOT NULL,
  `componente` varchar(100) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `identificador` varchar(100) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modifcador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_componentes`
--

INSERT INTO `s_componentes` (`id_componente`, `componente`, `descripcion`, `identificador`, `texto_original`, `id_idioma`, `id_usuario_creador`, `id_usuario_modifcador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'principal', NULL, 'principal', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'jadmin', NULL, 'jadmin', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'admin', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_componentes_perfiles`
--

CREATE TABLE `s_componentes_perfiles` (
  `id_componente_perfil` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_componente` int(11) NOT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_componentes_perfiles`
--

INSERT INTO `s_componentes_perfiles` (`id_componente_perfil`, `id_perfil`, `id_componente`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 1, 2, NULL, NULL, NULL, NULL),
(2, 1, 3, NULL, NULL, NULL, NULL),
(3, 2, 3, NULL, NULL, NULL, NULL),
(4, 1, 1, NULL, NULL, NULL, NULL),
(5, 2, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_elementos`
--

CREATE TABLE `s_elementos` (
  `id_elemento` int(11) NOT NULL,
  `elemento` varchar(50) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `area` varchar(80) DEFAULT NULL,
  `identificador` varchar(100) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_estatus`
--

CREATE TABLE `s_estatus` (
  `id_estatus` int(11) NOT NULL,
  `estatus` varchar(40) DEFAULT NULL,
  `identificador` varchar(80) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_estatus`
--

INSERT INTO `s_estatus` (`id_estatus`, `estatus`, `identificador`, `id_idioma`, `texto_original`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Activo', 'activo', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Inactivo', 'inactivo', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Eliminado', 'eliminado', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Data Incompleta', 'data_incompleta', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_estatus_posts`
--

CREATE TABLE `s_estatus_posts` (
  `id_estatus_post` int(11) NOT NULL,
  `estatus_post` varchar(80) DEFAULT NULL,
  `identificador` varchar(80) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_idiomas`
--

CREATE TABLE `s_idiomas` (
  `id_idioma` int(11) NOT NULL,
  `idioma` varchar(20) DEFAULT NULL,
  `por_defecto` tinyint(4) DEFAULT NULL,
  `identificador` varchar(30) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_idiomas`
--

INSERT INTO `s_idiomas` (`id_idioma`, `idioma`, `por_defecto`, `identificador`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Español', 1, 'español', NULL, NULL, NULL, NULL),
(2, 'Ingles', NULL, 'ingles', NULL, NULL, NULL, NULL),
(3, 'Portugues', NULL, 'portugues', NULL, NULL, NULL, NULL),
(4, 'Italiano', NULL, 'italiano', NULL, NULL, NULL, NULL),
(5, 'Frances', NULL, 'frances', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_menus`
--

CREATE TABLE `s_menus` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `meta_data` varchar(200) DEFAULT NULL,
  `identificador` varchar(60) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modifcador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_menus`
--

INSERT INTO `s_menus` (`id_menu`, `menu`, `meta_data`, `identificador`, `texto_original`, `id_idioma`, `id_usuario_creador`, `id_usuario_modifcador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Principal', NULL, 'principal', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Administrador', NULL, 'administrador', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'topCliente', NULL, 'topcliente', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_metodos`
--

CREATE TABLE `s_metodos` (
  `id_metodo` int(11) NOT NULL,
  `id_objeto` int(11) DEFAULT NULL,
  `metodo` varchar(150) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `identificador` varchar(160) DEFAULT NULL,
  `loggin` int(11) DEFAULT 0,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_metodos`
--

INSERT INTO `s_metodos` (`id_metodo`, `id_objeto`, `metodo`, `descripcion`, `identificador`, `loggin`, `id_idioma`, `texto_original`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(38, 22, 'index', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 23, 'index', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_metodos_perfiles`
--

CREATE TABLE `s_metodos_perfiles` (
  `id_metodo_perfil` int(11) NOT NULL,
  `id_metodo` int(11) DEFAULT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_objetos`
--

CREATE TABLE `s_objetos` (
  `id_objeto` int(11) NOT NULL,
  `id_componente` int(11) DEFAULT NULL,
  `objeto` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `identificador` varchar(120) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_objetos`
--

INSERT INTO `s_objetos` (`id_objeto`, `id_componente`, `objeto`, `descripcion`, `identificador`, `texto_original`, `id_idioma`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(22, 2, 'Jadmin', NULL, 'jadmin', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 3, 'Admin', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_objetos_media`
--

CREATE TABLE `s_objetos_media` (
  `id_objeto_media` int(11) NOT NULL,
  `objeto_media` varchar(100) NOT NULL,
  `directorio` varchar(100) DEFAULT NULL,
  `tipo_media` int(11) DEFAULT NULL COMMENT '1= imagen; 2 = Video',
  `interno` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `leyenda` varchar(150) DEFAULT NULL,
  `alt` varchar(45) DEFAULT NULL,
  `meta_data` varchar(500) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_objetos_media`
--

INSERT INTO `s_objetos_media` (`id_objeto_media`, `objeto_media`, `directorio`, `tipo_media`, `interno`, `descripcion`, `leyenda`, `alt`, `meta_data`, `id_idioma`, `texto_original`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'c8ee254a8fe7b483e3e41c9399a614bc260098.jpeg', '/cargas/2017/01/', 0, 1, NULL, NULL, NULL, '{\"img\":\"c8ee254a8fe7b483e3e41c9399a614bc260098.jpeg\",\"sm\":\"c8ee254a8fe7b483e3e41c9399a614bc260098-sm.jpeg\",\"min\":\"c8ee254a8fe7b483e3e41c9399a614bc260098-min.jpeg\",\"md\":\"c8ee254a8fe7b483e3e41c9399a614bc260098-md.jpeg\",\"lg\":\"c8ee254a8fe7b483e3e41c9399a614bc260098-lg.jpeg\"}', NULL, NULL, 3, 3, '2017-01-12 17:40:42', '2017-01-12 17:40:42'),
(2, 'b52d4f0dbade433a5bc5c9227202a6fa330575.jpeg', '/cargas/2017/01/', 0, 1, NULL, NULL, NULL, '{\"img\":\"b52d4f0dbade433a5bc5c9227202a6fa330575.jpeg\",\"sm\":\"b52d4f0dbade433a5bc5c9227202a6fa330575-sm.jpeg\",\"min\":\"b52d4f0dbade433a5bc5c9227202a6fa330575-min.jpeg\",\"md\":\"b52d4f0dbade433a5bc5c9227202a6fa330575-md.jpeg\",\"lg\":\"b52d4f0dbade433a5bc5c9227202a6fa330575-lg.jpeg\"}', NULL, NULL, 3, 3, '2017-01-12 17:59:39', '2017-01-12 17:59:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_objetos_perfiles`
--

CREATE TABLE `s_objetos_perfiles` (
  `id_objeto_perfil` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_objeto` int(11) NOT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_opciones_menu`
--

CREATE TABLE `s_opciones_menu` (
  `id_opcion_menu` int(11) NOT NULL,
  `opcion_menu` varchar(100) NOT NULL,
  `url_opcion` varchar(100) DEFAULT NULL,
  `identificador` varchar(120) DEFAULT NULL,
  `padre` int(11) DEFAULT NULL,
  `hijo` tinyint(1) DEFAULT NULL,
  `icono` varchar(100) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `id_estatus` int(11) DEFAULT NULL,
  `selector_icono` int(11) DEFAULT NULL,
  `id_metodo` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_opciones_menu`
--

INSERT INTO `s_opciones_menu` (`id_opcion_menu`, `opcion_menu`, `url_opcion`, `identificador`, `padre`, `hijo`, `icono`, `orden`, `id_menu`, `id_estatus`, `selector_icono`, `id_metodo`, `texto_original`, `id_idioma`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creador`, `id_usuario_modificador`) VALUES
(3, 'ACL', NULL, NULL, 0, 1, 'fa fa-dashboard', 1, 1, 1, 1, NULL, NULL, NULL, '2014-02-13 13:01:11', NULL, NULL, NULL),
(4, 'Objetos', '/jadmin/objetos/', NULL, 3, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2014-02-13 13:01:11', NULL, NULL, NULL),
(5, 'Componentes', '/jadmin/componentes/', NULL, 3, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2014-02-13 13:01:11', NULL, NULL, NULL),
(9, 'Perfiles', '/jadmin/perfiles/', NULL, 3, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Cerrar Sesión', '/jadmin/users/cierresesion/', NULL, 0, 0, 'fa fa-power-off', 100, 1, 1, 1, NULL, NULL, NULL, NULL, '2014-09-02 22:30:26', NULL, 3),
(11, 'Usuarios', '/jadmin/users/', NULL, 3, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Jida', '/jadmin/forms/jida-forms', NULL, 1, 0, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2014-08-04 05:31:21', '2014-08-08 10:37:52', NULL, NULL),
(28, 'Aplicaci&oacute;n', '/jadmin/forms/filter/aplicacion', NULL, 1, 0, 'fa-plus-square-o', 2, 1, 1, 1, NULL, NULL, NULL, '2014-08-04 05:54:06', '2014-08-04 05:54:06', NULL, NULL),
(29, '1', '/algo-distinto/', NULL, 1, 0, NULL, 10, 1, 1, 1, NULL, NULL, NULL, '2014-08-08 10:57:10', '2014-08-08 10:57:10', NULL, NULL),
(30, 'Formularios', '/jadmin/formularios', NULL, 0, NULL, 'fa fa-edit', 10, 1, 1, 1, NULL, NULL, NULL, '2017-06-18 12:33:57', '2017-06-18 12:33:57', 1, 1),
(33, 'Menues', '/jadmin/menus', NULL, 0, NULL, 'fa fa-bars', 20, 1, 1, 1, NULL, NULL, NULL, '2017-06-18 16:34:33', '2017-06-18 16:34:33', 1, 1),
(34, 'Líneas', '/jadmin/lineas', NULL, 0, NULL, 'fa fa-briefcase', 2, 1, 1, 1, NULL, NULL, NULL, '2017-06-18 16:35:57', '2017-06-18 16:35:57', 1, 3),
(36, 'Dashboard', '/jadmin/dashboard', NULL, 0, NULL, 'fa fa-dashboard', 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-20 19:56:31', '2017-06-20 19:56:31', 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_opciones_menu_perfiles`
--

CREATE TABLE `s_opciones_menu_perfiles` (
  `id_opcion_menu_perfil` int(11) NOT NULL,
  `id_opcion_menu` int(11) DEFAULT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_opciones_menu_perfiles`
--

INSERT INTO `s_opciones_menu_perfiles` (`id_opcion_menu_perfil`, `id_opcion_menu`, `id_perfil`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(3, 3, 1, NULL, NULL, NULL, NULL),
(4, 4, 1, NULL, NULL, NULL, NULL),
(5, 5, 1, NULL, NULL, NULL, NULL),
(6, 9, 1, NULL, NULL, NULL, NULL),
(8, 11, 1, NULL, NULL, NULL, NULL),
(9, 27, 1, NULL, NULL, NULL, NULL),
(10, 28, 1, NULL, NULL, NULL, NULL),
(11, 29, 1, NULL, NULL, NULL, NULL),
(15, 3, 1, NULL, NULL, NULL, NULL),
(16, 30, 1, NULL, NULL, NULL, NULL),
(32, 36, 1, NULL, NULL, NULL, NULL),
(33, 36, 2, NULL, NULL, NULL, NULL),
(34, 34, 1, NULL, NULL, NULL, NULL),
(35, 34, 2, NULL, NULL, NULL, NULL),
(36, 33, 1, NULL, NULL, NULL, NULL),
(37, 10, 1, NULL, NULL, NULL, NULL),
(38, 10, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_perfiles`
--

CREATE TABLE `s_perfiles` (
  `id_perfil` int(11) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `clave_perfil` varchar(100) NOT NULL,
  `identificador` varchar(60) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_perfiles`
--

INSERT INTO `s_perfiles` (`id_perfil`, `perfil`, `fecha_creado`, `clave_perfil`, `identificador`, `id_idioma`, `texto_original`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'Jida Administrador', '2014-02-13 13:01:11', 'JidaAdministrador', 'jidaadministrador', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Administrador', '2014-02-13 13:01:11', 'Administrador', 'administrador', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Usuario Publico', '2014-02-13 13:01:11', 'UsuarioPublico', 'usuariopublico', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_posts`
--

CREATE TABLE `s_posts` (
  `id_post` int(11) NOT NULL,
  `post` varchar(160) DEFAULT NULL,
  `resumen` varchar(600) DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `meta_descripcion` varchar(200) DEFAULT NULL,
  `identificador` varchar(180) DEFAULT NULL,
  `relevancia` int(11) DEFAULT NULL,
  `id_media_principal` int(11) DEFAULT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `fecha_publicacion` datetime DEFAULT NULL,
  `numero_visitas` int(11) DEFAULT NULL,
  `id_estatus_post` int(11) DEFAULT NULL,
  `visibilidad` int(11) DEFAULT NULL,
  `nombre_post` varchar(100) DEFAULT NULL,
  `tipo` varchar(25) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_usuarios`
--

CREATE TABLE `s_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `clave_usuario` varchar(50) NOT NULL,
  `identificador` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `id_estatus` int(11) NOT NULL,
  `ultima_session` datetime DEFAULT NULL,
  `validacion` varchar(500) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `codigo_recuperacion` varchar(80) DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `img_perfil` varchar(100) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_usuarios`
--

INSERT INTO `s_usuarios` (`id_usuario`, `nombre_usuario`, `clave_usuario`, `identificador`, `activo`, `id_estatus`, `ultima_session`, `validacion`, `nombres`, `apellidos`, `correo`, `codigo_recuperacion`, `sexo`, `img_perfil`, `fecha_creacion`, `fecha_modificacion`, `id_usuario_creador`, `id_usuario_modificador`) VALUES
(1, 'jadmin', '3711be79067177199efb2589054a6894', NULL, 1, 1, '2017-06-18 10:33:25', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-13 13:01:12', NULL, NULL, NULL),
(2, 'jeanpierre', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 1, NULL, '1', NULL, NULL, 'jeacontreras2009@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'felix', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 1, '2017-11-14 07:25:16', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'dayan', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 1, '2019-11-28 10:29:23', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 1, '2024-03-06 11:01:52', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `s_usuarios_perfiles`
--

CREATE TABLE `s_usuarios_perfiles` (
  `id_usuario_perfil` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `s_usuarios_perfiles`
--

INSERT INTO `s_usuarios_perfiles` (`id_usuario_perfil`, `id_usuario`, `id_perfil`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL),
(2, 1, 2, NULL, NULL, NULL, NULL),
(3, 2, 1, NULL, NULL, NULL, NULL),
(4, 2, 2, NULL, NULL, NULL, NULL),
(5, 3, 1, NULL, NULL, NULL, NULL),
(6, 3, 2, NULL, NULL, NULL, NULL),
(7, 4, 1, NULL, NULL, NULL, NULL),
(8, 4, 2, NULL, NULL, NULL, NULL),
(9, 5, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_clientes`
--

CREATE TABLE `t_clientes` (
  `id_cliente` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `telefono_contacto` varchar(30) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `ciudad` varchar(60) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `correo_contacto` varchar(50) DEFAULT NULL,
  `pagina_web` varchar(45) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `portada` varchar(150) DEFAULT NULL,
  `id_estatus` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `t_clientes`
--

INSERT INTO `t_clientes` (`id_cliente`, `id_empresa`, `cliente`, `telefono_contacto`, `id_estado`, `ciudad`, `direccion`, `descripcion`, `correo_contacto`, `pagina_web`, `facebook`, `twitter`, `instagram`, `portada`, `id_estatus`, `id_idioma`, `texto_original`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 65, 'CERAMICONI AYACUCHO', '0248 5214456', 2, 'PTO. AYACUCHO', 'CALLE CATANIPO, SECTOR BARRIO CATANIAPA, PTO. AYACUCHO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, 'INDUSTRIAS DE AISLANTES Y ACERO I.A.A.', '0414 5022459', 3, 'BARCELONA', 'CALLE CONSTANTINO MARADEI, SECTOR 1, LA PONDEROSA, BARCELONA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 48, 'CERAMIKOZ', '0293 4512510', 3, 'CUMANA', 'AV. LAS INDUSTRIAS, CONGLOMERADO IND. MELANIA CANELONES (ZONA INDUSTRIAL SAN LUIS). CUMANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 55, 'PURACEMAMICA', '0414 2921967', 3, 'BARCELONA', 'AV. RAUL LEONI, EDIF. PURACERAMICA, PB. SECTOR IND. LOS MONTONES, BARCELONA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 59, 'DISTRIBUIDORA CERAMICA', '0414 8446880', 3, 'BARCELONA', 'Av. Jorge Rodríguez. CC. Vittoria Center, PB, Local 1. Sector Colinas del Neverí, Barcelona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 69, 'CORPORACION VIDOSO', '0281 2774020', 3, 'BARCELONA', '1ra. Av., ZONA INDUSTRIAL LOS MONTONES, Nro. 195. BARCELONA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 16, 'SUPER LIDER CAGUA', '0414  450 75 49', 5, 'TURMERO', 'Carretera NACIONAL, LA ENCRICIJADA, TURMERO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 30, 'MIGO VICTORIA', '0244 3213777', 5, 'LA VICTORIA', 'CALLE PAEZ ESTE, EDIF. MIGO N° 143-3, URB LAS MERCEDES, LA VICTORIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 33, 'MIGO TEJERIAS', '0244 3343131 / 3341710', 5, 'TEJERIAS', 'CARRETERA PANAMERICANA, SECTOR LA PRADERA, LAS TEJERIAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 34, 'MIGO PALONEGRO', '0243 2002500', 5, 'PALO NEGRO', 'CARRETERA PALO NEGRO VÍA MAGDALENO, GALPÓN A, CENTRO COMERCIAL SUPER LÍDER, PALO NEGRO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 39, 'HYPERCERAMICA', '0243 2357478', 5, 'MARACAY', 'AV. LOS CEDROS NRO. 154, EDIF. PROSEIN, MARACAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 45, 'CERAMICAS PRECIO DE FABRICA', '0243 2357478', 5, 'MARACAY', 'Av. Los Cedros, N° 154, Edf. Prosein. Maracay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 49, 'CITY CERAMICAS', '0243 2695297/ 2692 64', 5, 'TURMERO', 'AV. INTERCOMUNAL TURMERO, LOCAL N° 26, SECTOR LA PROVIDENCIA. TURMERO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 61, 'DOMOSA DECORACIONES', '0414 7894553', 6, 'BARINAS', 'CARRETERA NACIONAL, GALPON CADELMA, SECTOR LOS GUASIMITOS, DTTO. LOS OBISPOS, BARINAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 62, 'DECORACION CERAMICA', '0414 7894553', 6, 'BARINAS', 'AV. INDUSTRIAL, LOCAL DECOCECA, PB. SECTOR LA INDUSTRIAL. BARINAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 63, 'CADELMA BARINAS', '0414 7894553', 6, 'BARINAS', 'AV. 23 DE ENERO, PARCELA 182 Y 183 URB. LA FLORESTA, BARINAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 14, 'MUNDO CERAMICO PRINCIPAL', '0286 9342790/ 9344352', 7, 'SAN FELIX', 'AV. MANUEL PIAR, SECTOR 1ro. DE MAYO, SAN FELIX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 42, 'PROSEIN', '0285 6323613', 7, 'CIUDAD BOLIVAR', 'SECTOR PLAZA, PASEO MORENO DE MENDOZA, EDIF. EL MINERO, LOCAL 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 3, 'CERAMIOFERTA', '0424 4303269', 8, 'VALENCIA', 'AV. LISANDRO ALVARADO, GALPON 3 Y 4, N° 105-101. ZONA INDUSTRIAL GUACAMAYA, VALENCIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 4, 'INSUMACA HOGAR', '0424 4303269', 8, 'VALENCIA', 'AV. LISANDRO ALVARADO, LOCAL N° 119-121, URB. IND. LA GUACAMAYA, VALENCIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 18, 'FERRETERIA EPA', '0241 8582833', 8, 'VALENCIA', 'AV. USLAR C/C MICHELENA N° 89-72 URB. MICHELENA. VALENCIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 47, 'ARCOSAN VALENCIA', '0424 4566375', 8, 'NAGUANAGUA', 'CALLEJON MOÑONGO, LOCAL N° 164-186, SECTOR MOÑONGO, NAGUANAGUA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 67, 'MIGO SAN DIEGO', '0251 2667366', 8, 'VALENCIA', 'AV. INTERCOMUNAL DON JULIO CENTENO, CC HIPERLIDER, LOCAL No D-1, SAN DIEGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 25, 'TABOADA HERMANOS', '0212 4622580', 1, 'CARACAS', 'AV. SAN MARTIN, CASA N°323. CARACAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 43, 'VENEMATERIALES', '0212 8700042', 1, 'CARACAS', 'CALLE PANAMERICANA, ENTRE CHILE Y BOLIVAR, GALPON No 30 CATIA, CARACAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 60, 'COMERCIAL CERAMIGANGA II', '0212 4626849', 1, 'CARACAS', 'Av. San Martín, esquina Alcabala a Palo Grande. Local 07-19. Caracas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 26, 'CERAMICAS IMPORTADAS FALCON', '0269 2468312', 11, 'PUNTO FIJO', 'Av. FCO. DE MIRANDA, EDIF. Prosein, parcelamiento el jardin. Punto Fijo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 5, 'ARTIFUEGO', '0251 269.15.35', 13, 'BARQUISIMETO', 'CARRERA A1, ENTRE CALLES A2 Y A3, PARCELA N° 48-4. ZONA INDUSTRIAL II, BARQUISIMETO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 6, 'CELOSIAS SPAIN- VEN', '0251 2373907', 13, 'BARQUISIMETO', 'CARRERA 5, esq. Calle 27, zona industrial 1, Barquisimeto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 8, 'MATERIALES LIFECA', '0252 4210180', 13, 'CARORA', 'Calle Bolívar, entre Callejón Salamanca y Callle Jose Luis Andrade. Sector Centro, Carora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 13, 'VICTOR JOSE RODRIGUEZ C. A.', '0251 2692758/ 2692171', 13, 'BARQUISIMETO', 'CALLE 41, ENTRE CARRERA 29 Y 30, N°29- 49, SECTOR CENTRO OESTE, BARQUISIMETO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 17, 'PLYPLAST 2004', '0424 5380352', 13, 'QUIBOR', 'CARRETERA KM 11, QUIBOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 19, 'PROCERAMIC', '0251 2319110', 13, 'BARQUISIMETO', 'Carrera 23, Esquina Calle 31, N. 30-116. Sector Centro. Barquisimeto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 24, 'AGENCIA ROYAL 33', '0251 2329080', 13, 'BARQUISIMETO', 'Av. 20, Esquina Calle 33, Local 32-76, Sector Centro, Barquisimeto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 31, 'MIGO LARA', '0251 4451423', 13, 'BARQUISIMETO', 'ZONA IND. 1, CALLE 7, CARRERA 4 Y AV. LIBERTADOR, BARQUISIMETO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 32, 'MIGO LARA II', '0251 2667366', 13, 'BARQUISIMETO', 'AV. FLORENCIO JIMENEZ, ENTRE CALLE 4 Y 6 (AL LADO DE ESTC. TAMUNANGUE), PUEBLO NUEVO, BARQUISIMETO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 36, 'PRECA', '0251 4201000', 13, 'BARQUISIMETO', 'AV. FERROCARIL CON CARRERA 3, EDIF. PROSIDER. ZONA INDUSTRIAL COMDIBAR I. BARQUISIMETO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 52, 'FERRE-GRES', '0253 6632596', 13, 'EL TOCUYO', 'CALLE 19, ESQUINA CARRERA 11, SECTOR SANTO DOMINGO. EL TOCUYO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 68, 'BALDOSAS OCCIDENTE', '0414 5032404', 13, 'BARQUISIMETO', 'Carrera 23, entre calles 31 y 32 (diagonal a la iglesia el cristo) edf. baldosas occidente, Barquisimeto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 20, 'FADIMAC', '0275 8815164', 14, 'EL VIGIA', 'URB. LOS PARQUES , CALLE LOS MANGOS , NRO 57 , SECTOR PARAISO, EL VIGIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 27, 'MIGO TORONDOY', '0271 7721357 / 7721785', 14, 'MERIDA', 'CARRETERA PANAMERICANA, SECTOR SAN RAFAEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 37, 'MIL CERÁMICAS', '0275 8810922', 14, 'EL VIGIA', 'FINAL AV. BOLIVAR, SECTOR COCO FRIO (VIA STA. BARBARA) , EDIF. MIL CERÁMICAS, EL VIGIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 50, 'MIL CERÁMICAS', '0414 0823011', 14, 'MERIDA', 'AV. DON TULIO,  NUMERO 30-40. MERIDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 51, 'CASA CERAMICA', '0414 0823011', 14, 'MERIDA', 'ZONA INDUSTRIAL LOS CUROS, CALLE 1, GALPON A-2. MERIDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 56, 'CERAMICAS EL VIGIA', '0275 8820115 / 8820600', 14, 'EL VIGIA', 'Av. Don Pepe Rojas, Sector La Creole, Local N° 927-A, El Vigía', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 1, 'MIL CERÁMICAS', '0212 3214717', 15, 'LOS TEQUES', 'AV. WILLIAN TORBAY, SECTOR LA LOMITA, GALPON N. 2. LOS TEQUES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 35, 'MIGO CHARALLAVE', '0239 2489619', 15, 'CHARALLAVE', 'AV. TRICENTENARIO (AL LADO DE SUPERLIDER), SECTOR MADOSA, CHARALLAVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 40, 'FORMAS CERAMICAS 9540', '212 3420832', 15, 'GUATIRE', 'AV. VILLA HEROICA, FRENTE A URB. TERRINCA, GALPON PROSEIN, GUATIRE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 41, 'PRODUCTOS CERAMICOS 4040', '0212 3420160', 15, 'GUATIRE', 'AV. VILLA HEROICA, FRENTE A URB. TERRINCA, GALPON PROSEIN, GUATIRE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 58, 'CERAMICAS LA TINAJA', '0212 2581430', 15, 'CARACAS', 'CALLE LA TINAJA, PETARE, CARACAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 53, 'GLOBAL GRES', '0295 2636101', 17, 'PORLAMAR', ' Av. Llano Alto, entre Av. Terranova y Circunvalación, Sector Archipano, Edif. Global Gres. Porlamar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 7, 'SIRVEN', '0212 8700042', 18, 'GUANARE', 'CARRERA 4, ESQUINA CALLE 19, LOCAL S/N, BARRIO CURAZAO, GUANARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 64, 'MAQUINARIAS CADELMA ACARIGUA', '0414 7894553', 18, 'ARAURE', 'AV. LOS PIONEROS, EDF. MARGARITA, PB, LOCAL 1. ARAURE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 10, 'CIRO CERAMI', '0414 0750853', 20, 'SAN CRISTOBAL', 'CALLE 10 CON CARRERA 10, EDIF. PRO CONSTRUCCION, SAN CRISTOBAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 23, 'FERRECERAMICAS BELMAR', '0277 7230775', 20, 'EL PIÑAL', 'CALLE PRINCIPAL, NRO 1-74, P.B. HOTEL CHARLES, EL PIÑAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 28, 'MIGO SABANA', '0271 6694312', 21, 'MENDOZA', 'CARRETERA PANAMERICANA, SABANA DE MENDOZA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 38, 'EL MUNDO DE LA CERAMICA', '0271 2311203', 21, 'VALERA', 'AV. 5 CON CALLE 14, EDF. SANTA RITA, LOCAL 2, SECTOR LAS ACACIAS, VALERA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 44, 'INVERSIONES CISA', '0212 3316818', 24, 'MAIQUETIA', 'Calle Real de Montesano, Galpon 8. Maiquetia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 46, 'MIL CERÁMICAS', '0212 3521088', 24, 'LA GUAIRA', 'AV. LA ARMADA (FRENTE A FARMATODO) SECTOR LA LUCHA. LA GUAIRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 54, 'CENTRO CERAMICO LITOMAR', '0212 3324860', 24, 'LA GUAIRA', 'CALLE REAL DE MONTESANO, GALPON Nº,5 LA GAUIRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 57, 'PURACERAMICA LITORAL', '0212 3524205', 24, 'CATIA LA MAR', 'Av. La Armada, Edif. Puraceramica, Catia La Mar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 12, 'FERRETERIA LA NUEVA ECONOMICA', '0254 5725262', 22, 'NIRGUA', 'Calle 5ta. con Av. 7ma. Nirgua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 21, 'MATERIALES SANTA LUCIA', '0251 4820558', 22, 'YARITAGUA', 'CALLE CANAL DE SERVICIO NORTE, ENTRE CALLES 8 Y 9, SECTOR SAN JOSE. YARITAGUA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 22, 'CONCRETERA OL-BLO-CO', '0251 8881242', 22, 'YARITAGUA', 'Autopista CIMARRÓN ANDRESOTE, Entrada via Apayare, Local 46, Barrio Nuevo, Sabana de Parra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 66, 'ACEROS YARACUY', '0254 2343682', 22, 'SAN FELIPE', '2DA. AVENIDA CON CALLE 21, SAN FELIPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 2, 'CONSTRUCENTRO NUEVA ROSA', '0264 3712858', 23, 'CABIMAS', 'CARRETERA JM. 370 SECTOR NUEVA ROSA. CABIMAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 9, 'DECOINTER', '0424 2485059', 23, 'SANTA CRUZ DE MARA', 'Calle Ppal., Sector Catatumbo Internacional, Santa Cruz de Mara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 11, 'DECOSERVICES', '0414 7191615', 23, 'MARACAIBO', 'AV. 17, CC ALCHESA, NIVEL PB, GALPON N°2, SECTOR LOS HATICOS, MARACAIBO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 29, 'MIGO LAGO', '0271 7721527/1530', 23, 'CAJA SECA', 'CARRETERA VIA BOBURES, FRENTE AL SECTOR LA CONQUISTA, CAJA SECA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 70, 'FERROCERAMICA VALCRO, C. A.', '0241-8358488 / 8610640', 8, 'VALENCIA', 'Autopista Valencia, Campo de Carabobo, galpón B-17, sector el socorro, Valencia, Edo. Carabobo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 71, 'CATALANO HOME CENTER, C.A.', '0295-287.05.51', 17, 'EL VALLE', 'Av. 31 de Julio, Edif. Catalano Home Center, PB. Local 1, Sector Guatamare-García. El Valle, Edo. Nueva Esparta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 72, 'CERAMICMANIA, C.A.', '0291-286.30.80', 3, 'LECHERIAS', 'Av. Intercomunal, Centro Empresarial Las Garzas, Nivel Pb. Locales 3,4,5 y 6. Sector Las Garzas, Lecherías Edo. Anzoátegui ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 73, 'FERRETERIA CHAPELLIN, C.A', '0212-730.97.12', 1, 'CARACAS', 'Calle Real de Chapellín, Casa Nro. 88, Sector Chapellín, Caracas Dtto. Capital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 74, 'CERAMICAS LA SANTINA, C.A.', '0412-934.38.53', 1, 'CARACAS', 'Av. San Martin, Entre Albanales y Cruz De La Vega, Casa N° 284, Caracas Dtto. Capital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 75, 'DECOCERAMICA EL VIGIA, C.A.', '0275-881.69.35', 14, 'EL VIGIA', 'Av. 15 Núm. 9-3. Sector La Inmaculada, El Vigía, Edo. Mérida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 76, 'SIMPOLO, C.A.', '0243-269.11.11', 5, 'TURMERO', 'Av. Intercomunal Santiago Mariño, CC Parcela, N.38 Nivel 1, Ofic.1. Sector La Providencia, Turmero Edo. Aragua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 77, 'INVERSIONES PROCORA IMPORT, C.A.', '0291-643.92.75', 16, 'MATURIN', 'Av. Alirio Ugarte Pelayo, Galpón N.47, Sector Bajo Guarapiche. Maturín Edo. Monagas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 78, 'CENTRO CERAMICO GARCIA I, C.A.', '0212-481.49.80', 1, 'CARACAS', 'Av. San MartÍn, entre Albanales y Cruz De la Vega, Casa N° 284. Caracas Dtto. Capital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 79, 'CENTRO CERAMICO LA FUERTE, C.A.', '0424 928.08.97', 7, 'PUERTO ORDAZ', 'Av. Principal De Castillito, frente a la Bomba PDV. Puerto Ordaz, Edo. Bolívar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 80, 'BALDOZULIA, C.A.', '0414 - 526.37.01', 23, 'MARACAIBO', 'Calle 82 Local No 2-B, Conjunto Residencial Doña Paula, Sector Belloso. Maracaibo, Edo. Zulia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 82, 'INVERSIONES ROSDANY, C.A.', '0283 - 241.63.95/14.80', 3, 'EL TIGRE', '3ra. Carrera Sur, entre Calles 23 y 24 Edif. Los Chaguaramos, PB. Sector Pueblo Nuevo. El Tigre Edo. Anzoátegui.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 83, 'DECOSANITARIOS, C.A.', '0414-745.50.23', 14, 'MERIDA', 'Carretera Panamericana, Sector El Llano del Anís -entrada Chiguará- Mérida,  Edo. Mérida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 84, 'CERAMICAS Y REVESTIMIENTOS, C.A.', '0416-502.24.31', 21, 'VALERA', 'Av. Independencia, Sector Plata, Galpón 1. Valera, Edo. Trujillo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 85, 'BALDOLARA, C.A.', '0251-253.60.32', 13, 'BARQUISIMETO', 'Carrera 7, entre Av. Lara y Carrera 1, Urb. Nueva Segovia, Barquisimeto Edo. Lara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 86, 'DISTRIBUIDORA MULTIMAT, C.A.', '0244-995.40.13', 5, 'LA VICTORIA', 'Calle B, Parcela 8, Zona Industrial 2121. La Victoria, Edo. Aragua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 87, 'CENTRO CERAMICA TREBOL, C.A.', '0243-234.01.24', 5, 'MARACAY', 'Av. Los Cedros, c/c calle caldas, No 22 -diagonal a la prefectura Crespo- sector Santa Ana. Maracay. Edo. Aragua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 88, 'CONSTRU CERAMICA LOS CEDROS, C.A.', '0414-345.65.85', 5, 'MARACAY', 'Av. Los Cedros, Local N°49, Sector Libertad. Maracay, Edo. Aragua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 90, 'EL GALPON DE LA CERAMICA, C.A', '0414-210.84.21', 15, 'SAN ANTONIO DE LOS ALTOS', 'Av. Las Industrias, Galpón de la Cerámica, zona industrial Las Minas, San Antonio de Los Altos, Edo. Miranda.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 91, 'BALDORUSTICOS, C.A.', '0414-522.33.47', 13, 'BARQUISIMETO', 'Av. Carabobo con Esq. Calle 25. Barquisimeto, Edo. Lara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 92, 'EL PALACIO DEL CAICO, C. A.', '0264 -371.80.96', 23, 'CABIMAS', 'Av. 32 con Calle San Luis, Local N° 01, Sector Democracia. Cabimas, Edo. Zulia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 93, 'DECOARTE HOGAR, C.A.', '0414-374.68.73', 14, 'TOVAR', 'Av. Ppal. El Llano, Carrera 4ta., Res. Las Galerías, N° 01. Sector El Llano. Tovar, Edo. Mérida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 94, 'MATERIALES DE CONSTRUCCION BRAHERCA III, C. A.', '0424-116.65.78', 15, 'SANTA TERESA DEL TUY', 'Carretera Sta. Teresa - Sta Lucia,  Edf. Mil Cerámicas, PB. Local A y A1, Urb. Sta Teresa del Tuy,  Edo. Miranda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 95, 'BALDOCERAMIC, C.A.', '0251-273.12.22', 13, 'BARQUISIMETO', 'Av. Carabobo, Esquina Carrera 33. Barquisimeto Edo. Lara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 96, 'BALDOCENTRO, C.A.', '0414-955.38.97', 13, 'BARQUISIMETO', 'Av. Carabobo, entre carrera 33 y 24, Centro. Barquisimeto , Edo. Lara.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 97, 'CONSTRU HOGAR ZONA SUR, C.A.', '0414-796.84.66', 3, 'EL TIGRE', 'Av. Intercomunal, Galpón N°3, Sector Intercomunal El Tigre, Edo. Anzoátegui', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 98, 'CERAMIC PLAZA, C.A.', '0414-789.88.76', 17, 'PORLAMAR', 'Redoma de Los Robles. Porlamar Edo. Nueva Esparta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_productos`
--

CREATE TABLE `t_productos` (
  `id_producto` int(11) NOT NULL,
  `identificador` varchar(80) DEFAULT NULL,
  `nombre_comercial` varchar(80) DEFAULT NULL,
  `uso` varchar(45) DEFAULT NULL,
  `formato` varchar(14) DEFAULT NULL,
  `producto` varchar(45) DEFAULT NULL,
  `absorcion_agua` varchar(100) DEFAULT NULL,
  `resistencia_mecanica` varchar(15) DEFAULT NULL,
  `resistencia_rayado` varchar(14) DEFAULT NULL,
  `aplicacion_esmalte` varchar(30) DEFAULT NULL,
  `aplicacion_gotas` varchar(30) DEFAULT NULL,
  `serigrafia` varchar(30) DEFAULT NULL,
  `esfumatura` varchar(30) DEFAULT NULL,
  `presentacion` varchar(30) DEFAULT NULL,
  `peso` varchar(15) DEFAULT NULL,
  `paleta` varchar(30) DEFAULT NULL,
  `metros2_paleta` varchar(30) DEFAULT NULL,
  `id_estatus_producto` int(11) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  `texto_original` int(11) DEFAULT NULL,
  `id_usuario_creador` int(11) DEFAULT NULL,
  `id_usuario_modificador` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `t_productos`
--

INSERT INTO `t_productos` (`id_producto`, `identificador`, `nombre_comercial`, `uso`, `formato`, `producto`, `absorcion_agua`, `resistencia_mecanica`, `resistencia_rayado`, `aplicacion_esmalte`, `aplicacion_gotas`, `serigrafia`, `esfumatura`, `presentacion`, `peso`, `paleta`, `metros2_paleta`, `id_estatus_producto`, `id_idioma`, `texto_original`, `id_usuario_creador`, `id_usuario_modificador`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'apure', ' APURE ', ' PAVIMENTO ', ' 33 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', NULL, ' CABINA A DOBLE DISCO ', ' CABINA A DOBLE DISCO ', NULL, NULL, ' CAJA DE 1,66 M2 ', ' 14 KG /  M2 ', ' 81 CAJAS ', ' 134,46  M2 ', 1, NULL, NULL, NULL, 0, NULL, NULL),
(2, 'canaima', ' CANAIMA ', ' PAVIMENTO ', ' 33 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', ' CABINA A DOBLE DISCO ', NULL, NULL, ' CAJA DE 1,66 M2 ', ' 14 KG /  M2 ', ' 81 CAJAS ', ' 134,46  M2 ', 1, NULL, NULL, NULL, 0, NULL, NULL),
(3, 'caoba', ' CAOBA ', ' PAVIMENTO ', ' 33 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', NULL, NULL, NULL, ' CAJA DE 1,66 M2 ', ' 14 KG /  M2 ', ' 81 CAJAS ', ' 134,46  M2 ', 1, NULL, NULL, NULL, 0, NULL, NULL),
(5, 'mochima', ' MOCHIMA ', ' PAVIMENTO ', ' 33 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', ' CABINA A DOBLE DISCO ', NULL, NULL, ' CAJA DE 1,66 M2 ', ' 14 KG /  M2 ', ' 81 CAJAS ', ' 134,46  M2 ', 1, NULL, NULL, NULL, 0, NULL, NULL),
(6, 'ostra', 'BLANCO OSTRA', ' PAVIMENTO ', ' 33 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', NULL, NULL, NULL, ' CAJA DE 1,66 M2 ', ' 14 KG /  M2 ', ' 81 CAJAS ', ' 134,46  M2 ', 1, NULL, NULL, NULL, 3, NULL, NULL),
(8, 'terepaima', ' TEREPAIMA ', ' PAVIMENTO ', ' 33 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', ' CABINA A DOBLE DISCO ', NULL, NULL, ' CAJA DE 1,66 M2 ', ' 14 KG /  M2 ', ' 81 CAJAS ', ' 134,46  M2 ', 1, NULL, NULL, NULL, 0, NULL, NULL),
(9, 'yurubi', ' YURUBI ', ' PAVIMENTO ', ' 33 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', '3', ' CABINA A DOBLE DISCO ', ' CABINA A DOBLE DISCO ', NULL, NULL, ' CAJA DE 1,66 M2 ', ' 14 KG /  M2 ', ' 81 CAJAS ', ' 134,46  M2 ', 1, NULL, NULL, NULL, 5, NULL, NULL),
(10, 'caoba', ' CAOBA ', ' PAVIMENTO ', ' 45 X 45 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', NULL, NULL, NULL, ' CAJA DE 1,82 M2 ', ' 16 KG /  M2 ', ' 48 CAJAS ', '91,2', 1, NULL, NULL, NULL, 5, NULL, NULL),
(13, 'merida', ' BLANCO MÉRIDA ', ' REVESTIMIENTO ', ' 25 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', NULL, NULL, NULL, ' CAJA DE 1,70 M2 ', ' 13 KG /  M2 ', ' 72 CAJAS ', ' 122,4  M2 ', 1, NULL, NULL, NULL, 5, NULL, NULL),
(14, 'ostra', 'BLANCO OSTRA', ' REVESTIMIENTO ', ' 25 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', NULL, NULL, NULL, ' CAJA DE 1,70 M2 ', ' 13 KG /  M2 ', ' 72 CAJAS ', ' 122,4  M2 ', 1, NULL, NULL, NULL, 3, NULL, NULL),
(15, 'mosaico-lluvia', ' MOSAICO LLUVIA ', ' REVESTIMIENTO ', ' 25 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', NULL, NULL, NULL, ' CAJA DE 1,70 M2 ', ' 13 KG /  M2 ', ' 72 CAJAS ', ' 122,4  M2 ', 1, NULL, NULL, NULL, 0, NULL, NULL),
(16, 'mosaico-medano', ' MOSAICO MÉDANO ', ' REVESTIMIENTO ', ' 25 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', NULL, NULL, NULL, ' CAJA DE 1,70 M2 ', ' 13 KG /  M2 ', ' 72 CAJAS ', ' 122,4  M2 ', 1, NULL, NULL, NULL, 5, NULL, NULL),
(17, 'mosaico-ostra', ' MOSAICO OSTRA ', ' REVESTIMIENTO ', ' 25 X 33 CM ', ' MONOCOCCIÓN GRESIFICADA ', ' 3% ', ' 250 KG / CM2 ', ' 3 ', ' CABINA A DOBLE DISCO ', NULL, NULL, NULL, ' CAJA DE 1,70 M2 ', ' 13 KG /  M2 ', ' 72 CAJAS ', ' 122,4  M2 ', 1, NULL, NULL, NULL, 0, NULL, NULL),
(18, 'nova', 'NOVA', 'PAVIMENTO', '45 X 45 CM', 'MONOCCIÓN GRESIFICADA', '3,5% -4,5%', '130,5 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,9 M2', '16 KG / M2', '48 CAJAS', '91,2', 1, NULL, NULL, 4, 5, '2019-11-25 17:31:04', '2019-11-25 17:31:04'),
(19, 'oporto', 'OPORTO', 'PAVIMENTO', '45 X 45 CM', 'MONOCCIÓN GRESIFICADA', '3,5% - 4,5%', '130,5 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,9 M2', '16 KG / M2', '48 CAJAS', '91,2', 1, NULL, NULL, 4, 5, '2019-11-25 17:48:09', '2019-11-25 17:48:09'),
(20, 'blanco-marfil', 'BLANCO MARFIL', 'PAVIMENTO', '45 X 45 CM', 'MONOCCIÓN GRESIFICADA', '3,5% - 4,5%', '130,5 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,9 M2', '16 KG / M2', '48 CAJAS', '91,2', 1, NULL, NULL, 4, 5, '2019-11-25 18:05:48', '2019-11-25 18:05:48'),
(24, 'blanco-merida-33x33', 'BLANCO MÉRIDA', 'PAVIMENTO', '33 X 33 CM', 'MONOCCIÓN GRESIFICADA', '4% – ', '103.8 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,66 M2', '14 KG / M2', '81 CAJAS', '134, 46 M2', 1, NULL, NULL, 4, 5, '2019-11-25 18:37:04', '2019-11-25 18:37:04'),
(28, 'blanco-merida', 'IGUAZÚ MÉRIDA', 'REVESTIMIENTO', '25 X 33 CM', 'MONOCCIÓN GRESIFICADA', '4% – 5%', '60 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,70 M2', '13 KG / M2', '72 CAJAS', '122, 4 M2', 1, NULL, NULL, 4, 5, '2019-11-27 17:27:18', '2019-11-27 17:27:18'),
(29, 'mosaico-merida', 'MOSAICO MÉRIDA', 'REVESTIMIENTO', '25 X 33 CM', 'MONOCCIÓN GRESIFICADA', '4% – 6%', '55 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,70 M2', '13 KG / M2', '72 CAJAS', '122, 4 M2', 1, NULL, NULL, 4, 4, '2019-11-27 17:30:25', '2019-11-27 17:30:25'),
(30, 'blanco-dubai', 'BLANCO DUBAI', 'REVESTIMIENTO', '25 X 33 CM', 'MONOCCIÓN GRESIFICADA', '4% – 6%', '55 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,70 M2', '13 KG / M2', '72 CAJAS', '122, 4 M2', 1, NULL, NULL, 4, 4, '2019-11-27 17:44:36', '2019-11-27 17:44:36'),
(31, 'mosaico-ostra', 'MOSAICO OSTRA', 'PAVIMENTO', '33 X 33 CM', 'MONOCCIÓN GRESIFICADA', '5% – 7%', '100.1 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,66 M2', '14 KG / M2', '81 CAJAS', '134, 46 M2', 1, NULL, NULL, 4, 5, '2019-11-27 17:54:00', '2019-11-27 17:54:00'),
(32, 'mosaico-imataca', 'MOSAICO IMATACA', 'PAVIMENTO', '33 X 33 CM', 'MONOCCIÓN GRESIFICADA', '5% – 6%', '99.54 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,66 M2', '14 KG / M2', '81 CAJAS', '134, 46 M2', 1, NULL, NULL, 4, 5, '2019-11-27 18:05:26', '2019-11-27 18:05:26'),
(33, 'mosaico-caoba', 'MOSAICO CAOBA', 'PAVIMENTO', '33 X 33 CM', 'MONOCCIÓN GRESIFICADA', '5% – 8%', '85.4 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,66 M2', '14 KG / M2', '81 CAJAS', '134, 46 M2', 1, NULL, NULL, 4, 5, '2019-11-27 18:07:49', '2019-11-27 18:07:49'),
(34, 'blanco-merida', 'BLANCO MÉRIDA', 'PAVIMENTO', '33 X 33 CM', 'MONOCCIÓN GRESIFICADA', '4% – ', '103.8 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,66 M2', '13 KG / M2', '72 CAJAS', '122, 4 M2', 1, NULL, NULL, 4, 4, '2019-11-27 18:12:18', '2019-11-27 18:12:18'),
(35, 'mosaico-catatumbo', 'MOSAICO CATATUMBO', 'REVESTIMIENTO', '25 X 33 CM', 'MONOCOCCIÓN GRESIFICADA', '3%', '250 KG / CM2', '3', 'CABINA DOBLE DISCO', 'VELA', NULL, NULL, 'CAJA DE 1,70 M2', '14 KG / M2', '72 CAJAS', '122,4 M2', 1, NULL, NULL, 5, 5, '2021-04-26 11:55:02', '2021-04-26 11:55:02'),
(36, 'mosaico-catatumbo', 'MOSAICO CATATUMBO', 'PAVIMENTO', '33 X 33 CM', 'MONOCOCCIÓN GRESIFICADA', '5% - 8%', '250 KG / CM2', '3', 'CABINA DOBLE DISCO', 'VELA', NULL, NULL, 'CAJA DE 1,66 M2', '14 KG / M2', '81 CAJAS', '134, 46', 1, NULL, NULL, 5, 5, '2021-04-26 12:40:19', '2021-04-26 12:40:19'),
(37, 'mosaico-caroni', 'MOSAICO CARONÍ', 'PAVIMENTO', '33 X 33 CM', 'MONOCOCCIÓN GRESIFICADA', '5% - 8%', '250 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,66 M2', '14 KG / M2', '81 CAJAS', '134,46', 1, NULL, NULL, 5, 5, '2021-04-27 06:59:28', '2021-04-27 06:59:28'),
(38, 'mosaico-nevado', 'MOSAICO CARONÍ NEVADO', 'PAVIMENTO', '33 X 33 CM', 'MONOCOCCIÓN GRESIFICADA', '3% - 5%', '250 KG / CM2', '3', 'CABINA DOBLE DISCO', 'VELA', NULL, NULL, 'CAJA DE 1,66 M2', '14 KG / M2', '81 CAJAS', '134,46', 1, NULL, NULL, 5, 5, '2021-04-27 07:11:25', '2021-04-27 07:11:25'),
(39, 'blanco-nieve', 'BLANCO NIEVE', 'REVESTIMIENTO', '25X33', 'MONOCOCCIÓN GRESIFICADA', '3%', '250 KG / CM2', '3', 'CABINA A DOBLE DISCO', NULL, NULL, NULL, 'CAJA DE 1,70 M2', '13 KG / M2', '72 CAJAS', '122,4 M2', 1, NULL, NULL, 5, 5, '2022-10-04 07:14:57', '2022-10-04 07:14:57'),
(40, 'terepaima-yacambu', 'TEREPAIMA YACAMBÚ', 'PAVIMENTO', '33 X 33 CM', 'MONOCOCCIÓN GRESIFICADA', '3%', '250 KG / CM2 ', '3', 'CABINA A DOBLE DISCO ', 'CABINA A DOBLE DISCO ', NULL, NULL, 'CAJA DE 1,66 M2 ', '14 KG / M2 ', '81 CAJAS ', '134,46 M2 ', 1, NULL, NULL, 5, 5, '2022-10-04 11:31:14', '2022-10-04 11:31:14'),
(43, 'blanco-nieve', 'BLANCO NIEVE', 'PAVIMENTO', '45 X 45 CM', 'MONOCOCCIÓN GRESIFICADA', '3,5% - 4,5%', '130,5 KG / CM2', '3', 'CABINA DOBLE DISCO', NULL, NULL, NULL, NULL, '16 KG / M2', '48 CAJAS', '91,2', 1, NULL, NULL, 5, 5, '2022-10-04 11:50:21', '2022-10-04 11:50:21'),
(44, 'guayana-concreto', 'GUAYANA CONCRETO', 'PAVIMENTO', '33X33', 'MONOCOCCIÓN GRESIFICADA', '3% - 6%', '130 KG / CM2', '3', 'CABINA A DOBLE DISCO', 'CABINA A DOBLE DISCO', NULL, NULL, 'CAJA DE 1,66 M2', '14,76 KG / M2', '81 CAJAS', '134,46 M2', 2, NULL, NULL, 5, 5, '2024-03-06 08:50:08', '2024-03-06 08:50:08'),
(45, 'guayana-plomo', 'GUAYANA PLOMO', 'PAVIMENTO', '33X33', 'MONOCOCCIÓN GRESIFICADA', '3% - 6%', '130 KG / CM2', '3', 'CABINA A DOBLE DISCO', 'CABINA A DOBLE DISCO', NULL, NULL, 'CAJA DE 1,66 M2', '14,76 KG / M2', '81 CAJAS', '134,46 M2', 2, NULL, NULL, 5, 5, '2024-03-06 08:53:25', '2024-03-06 08:53:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `m_ciudades`
--
ALTER TABLE `m_ciudades`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `fk_m_ciudades_m_estados_idx` (`id_estado`);

--
-- Indices de la tabla `m_estados`
--
ALTER TABLE `m_estados`
  ADD PRIMARY KEY (`id_estado`),
  ADD KEY `fk_m_estados_m_paises_idx` (`id_pais`);

--
-- Indices de la tabla `m_estatus_productos`
--
ALTER TABLE `m_estatus_productos`
  ADD PRIMARY KEY (`id_estatus_producto`),
  ADD KEY `fk_texto_original_idx` (`texto_original`),
  ADD KEY `fk_m_estatus_producto_tex_original_idx` (`texto_original`),
  ADD KEY `fk_s_idiomas_m_estatus_prod_idx` (`id_idioma`);

--
-- Indices de la tabla `m_lineas`
--
ALTER TABLE `m_lineas`
  ADD PRIMARY KEY (`id_linea`),
  ADD KEY `fk_text_original_m_Series_idx` (`texto_original`),
  ADD KEY `fk_s_idiomas_m_series_idx` (`id_idioma`),
  ADD KEY `fk_s_estatus_m_series_idx` (`id_estatus`);

--
-- Indices de la tabla `r_fotos_productos`
--
ALTER TABLE `r_fotos_productos`
  ADD PRIMARY KEY (`id_foto_producto`),
  ADD KEY `fk_m_producto_t_fotos_productos_idx` (`id_producto`);

--
-- Indices de la tabla `r_productos_lineas`
--
ALTER TABLE `r_productos_lineas`
  ADD PRIMARY KEY (`id_producto_linea`),
  ADD KEY `fk_r_productos_series_m_productos_idx` (`id_producto`),
  ADD KEY `fk_r_productos_series_m_series_idx` (`id_linea`);

--
-- Indices de la tabla `r_proveedores_sedes`
--
ALTER TABLE `r_proveedores_sedes`
  ADD PRIMARY KEY (`id_proveedor_sede`),
  ADD KEY `fk_txt_original_sedes_idx` (`texto_original`),
  ADD KEY `fk_t_proveedores_t_sedes_idx` (`id_proveedor`),
  ADD KEY `fk_s_idiomas_r_proveedores_sedes_idx` (`id_idioma`),
  ADD KEY `fk_m_ciudades_r_prove_sedes_idx` (`id_ciudad`),
  ADD KEY `fk_m_estados_r_prove_sedes_idx` (`id_estado`);

--
-- Indices de la tabla `s_clasificaciones`
--
ALTER TABLE `s_clasificaciones`
  ADD PRIMARY KEY (`id_clasificacion`),
  ADD KEY `fk_s_estatus_idx` (`id_estatus`),
  ADD KEY `fk_s_idiomas_s_clasificacion_post_idx` (`id_idioma`),
  ADD KEY `fk_s_clasificacion_post_texto_original_idx` (`texto_original`);

--
-- Indices de la tabla `s_clasificacion_posts`
--
ALTER TABLE `s_clasificacion_posts`
  ADD PRIMARY KEY (`id_clasificacion_post`),
  ADD KEY `fk_t_posts_r_clasificacion_post_idx` (`id_post`),
  ADD KEY `fk_s_clasificacion_post_r_clasificacion_post_idx` (`id_clasificacion`);

--
-- Indices de la tabla `s_comentarios_posts`
--
ALTER TABLE `s_comentarios_posts`
  ADD PRIMARY KEY (`id_comentario_post`),
  ADD KEY `fk_s_usuarios_idx` (`id_usuario`),
  ADD KEY `fk_t_comentarios_t_post_idx` (`id_post`);

--
-- Indices de la tabla `s_componentes`
--
ALTER TABLE `s_componentes`
  ADD PRIMARY KEY (`id_componente`),
  ADD KEY `fk_s_idiomas_s_componentes_idx` (`id_idioma`),
  ADD KEY `fk_texto_original_s_componentes_idx` (`texto_original`);

--
-- Indices de la tabla `s_componentes_perfiles`
--
ALTER TABLE `s_componentes_perfiles`
  ADD PRIMARY KEY (`id_componente_perfil`),
  ADD KEY `id_perfil` (`id_perfil`),
  ADD KEY `id_componente` (`id_componente`);

--
-- Indices de la tabla `s_elementos`
--
ALTER TABLE `s_elementos`
  ADD PRIMARY KEY (`id_elemento`),
  ADD KEY `fk_s_idiomas_s_elementos_idx` (`id_idioma`),
  ADD KEY `fk_s_elementos_texto_original_idx` (`texto_original`);

--
-- Indices de la tabla `s_estatus`
--
ALTER TABLE `s_estatus`
  ADD PRIMARY KEY (`id_estatus`),
  ADD KEY `fk_s_idiomas_s_estatus_idx` (`id_idioma`),
  ADD KEY `fk_s_idiomas_texto_originas_idx` (`texto_original`);

--
-- Indices de la tabla `s_estatus_posts`
--
ALTER TABLE `s_estatus_posts`
  ADD PRIMARY KEY (`id_estatus_post`),
  ADD KEY `fk_s_idiomas_idx` (`id_idioma`),
  ADD KEY `fk_texto_original_idx` (`texto_original`),
  ADD KEY `sk_s_idiomas_s_estatus_post_idx` (`id_idioma`);

--
-- Indices de la tabla `s_idiomas`
--
ALTER TABLE `s_idiomas`
  ADD PRIMARY KEY (`id_idioma`);

--
-- Indices de la tabla `s_menus`
--
ALTER TABLE `s_menus`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `fk_s_idiomas_s_menus_idx` (`id_idioma`),
  ADD KEY `fk_s_menus_texto_original_idx` (`texto_original`);

--
-- Indices de la tabla `s_metodos`
--
ALTER TABLE `s_metodos`
  ADD PRIMARY KEY (`id_metodo`),
  ADD KEY `id_objeto` (`id_objeto`),
  ADD KEY `fk_s_idiomas_s_metodos_idx` (`id_idioma`),
  ADD KEY `sk_s_metodos_texto_original_idx` (`texto_original`);

--
-- Indices de la tabla `s_metodos_perfiles`
--
ALTER TABLE `s_metodos_perfiles`
  ADD PRIMARY KEY (`id_metodo_perfil`),
  ADD KEY `id_metodo` (`id_metodo`),
  ADD KEY `id_perfil` (`id_perfil`);

--
-- Indices de la tabla `s_objetos`
--
ALTER TABLE `s_objetos`
  ADD PRIMARY KEY (`id_objeto`),
  ADD KEY `id_componente` (`id_componente`),
  ADD KEY `fk_s_idiomas_s_objetos_idx` (`id_idioma`),
  ADD KEY `fk_s_objetos_texto_original_idx` (`texto_original`);

--
-- Indices de la tabla `s_objetos_media`
--
ALTER TABLE `s_objetos_media`
  ADD PRIMARY KEY (`id_objeto_media`),
  ADD KEY `fk_s_idiomas_s_objetos_media_idx` (`id_idioma`),
  ADD KEY `fk_s_objetos_media_texto_original_idx` (`texto_original`);

--
-- Indices de la tabla `s_objetos_perfiles`
--
ALTER TABLE `s_objetos_perfiles`
  ADD PRIMARY KEY (`id_objeto_perfil`),
  ADD KEY `id_perfil` (`id_perfil`),
  ADD KEY `id_objeto` (`id_objeto`);

--
-- Indices de la tabla `s_opciones_menu`
--
ALTER TABLE `s_opciones_menu`
  ADD PRIMARY KEY (`id_opcion_menu`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `fk_s_idiomas_s_opciones_menu_idx` (`id_idioma`),
  ADD KEY `fk_s_opciones_menu_texto_original_idx` (`texto_original`),
  ADD KEY `fk_s_estatus_s_opciones_menu_idx` (`id_estatus`),
  ADD KEY `fk_s_metodos_s_opciones_menu_idx` (`id_metodo`);

--
-- Indices de la tabla `s_opciones_menu_perfiles`
--
ALTER TABLE `s_opciones_menu_perfiles`
  ADD PRIMARY KEY (`id_opcion_menu_perfil`),
  ADD KEY `id_opcion` (`id_opcion_menu`),
  ADD KEY `id_perfil` (`id_perfil`);

--
-- Indices de la tabla `s_perfiles`
--
ALTER TABLE `s_perfiles`
  ADD PRIMARY KEY (`id_perfil`),
  ADD KEY `fk_s_idiomas_s_perfiles_idx` (`id_idioma`),
  ADD KEY `fk_s_perfiles_texto_original_idx` (`texto_original`);

--
-- Indices de la tabla `s_posts`
--
ALTER TABLE `s_posts`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_seccion_idx` (`id_seccion`),
  ADD KEY `id_estatus_post_idx` (`id_estatus_post`),
  ADD KEY `id_idioma_idx` (`id_idioma`),
  ADD KEY `fk_texto_original_idx` (`texto_original`),
  ADD KEY `s_post_s_objetos_media_idx` (`id_media_principal`);

--
-- Indices de la tabla `s_usuarios`
--
ALTER TABLE `s_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_s_usuarios_s_estatus_idx` (`id_estatus`);

--
-- Indices de la tabla `s_usuarios_perfiles`
--
ALTER TABLE `s_usuarios_perfiles`
  ADD PRIMARY KEY (`id_usuario_perfil`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_perfil` (`id_perfil`);

--
-- Indices de la tabla `t_clientes`
--
ALTER TABLE `t_clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_texto_original_t_proveedores_idx` (`texto_original`),
  ADD KEY `fk_m_idiomas_t_proveedores_idx` (`id_idioma`),
  ADD KEY `fk_t_proveedores_s_estatus_idx` (`id_estatus`);

--
-- Indices de la tabla `t_productos`
--
ALTER TABLE `t_productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_m_productos_m_estattus_productos_idx` (`id_estatus_producto`),
  ADD KEY `fk_texto_original_idx` (`texto_original`),
  ADD KEY `fk_s_idiomas_t_productos_idx` (`id_idioma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `m_ciudades`
--
ALTER TABLE `m_ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `m_estados`
--
ALTER TABLE `m_estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `m_estatus_productos`
--
ALTER TABLE `m_estatus_productos`
  MODIFY `id_estatus_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `m_lineas`
--
ALTER TABLE `m_lineas`
  MODIFY `id_linea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `r_fotos_productos`
--
ALTER TABLE `r_fotos_productos`
  MODIFY `id_foto_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `r_productos_lineas`
--
ALTER TABLE `r_productos_lineas`
  MODIFY `id_producto_linea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `r_proveedores_sedes`
--
ALTER TABLE `r_proveedores_sedes`
  MODIFY `id_proveedor_sede` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `s_clasificaciones`
--
ALTER TABLE `s_clasificaciones`
  MODIFY `id_clasificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `s_comentarios_posts`
--
ALTER TABLE `s_comentarios_posts`
  MODIFY `id_comentario_post` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `s_componentes`
--
ALTER TABLE `s_componentes`
  MODIFY `id_componente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `s_componentes_perfiles`
--
ALTER TABLE `s_componentes_perfiles`
  MODIFY `id_componente_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `s_elementos`
--
ALTER TABLE `s_elementos`
  MODIFY `id_elemento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `s_estatus`
--
ALTER TABLE `s_estatus`
  MODIFY `id_estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `s_estatus_posts`
--
ALTER TABLE `s_estatus_posts`
  MODIFY `id_estatus_post` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `s_idiomas`
--
ALTER TABLE `s_idiomas`
  MODIFY `id_idioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `s_menus`
--
ALTER TABLE `s_menus`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `s_metodos`
--
ALTER TABLE `s_metodos`
  MODIFY `id_metodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `s_metodos_perfiles`
--
ALTER TABLE `s_metodos_perfiles`
  MODIFY `id_metodo_perfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `s_objetos`
--
ALTER TABLE `s_objetos`
  MODIFY `id_objeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `s_objetos_media`
--
ALTER TABLE `s_objetos_media`
  MODIFY `id_objeto_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `s_objetos_perfiles`
--
ALTER TABLE `s_objetos_perfiles`
  MODIFY `id_objeto_perfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `s_opciones_menu`
--
ALTER TABLE `s_opciones_menu`
  MODIFY `id_opcion_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `s_opciones_menu_perfiles`
--
ALTER TABLE `s_opciones_menu_perfiles`
  MODIFY `id_opcion_menu_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `s_perfiles`
--
ALTER TABLE `s_perfiles`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `s_posts`
--
ALTER TABLE `s_posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `s_usuarios`
--
ALTER TABLE `s_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `s_usuarios_perfiles`
--
ALTER TABLE `s_usuarios_perfiles`
  MODIFY `id_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `t_clientes`
--
ALTER TABLE `t_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `t_productos`
--
ALTER TABLE `t_productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `m_ciudades`
--
ALTER TABLE `m_ciudades`
  ADD CONSTRAINT `fk_m_ciudades_m_estados` FOREIGN KEY (`id_estado`) REFERENCES `m_estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `m_estados`
--
ALTER TABLE `m_estados`
  ADD CONSTRAINT `fk_m_estados_m_paises` FOREIGN KEY (`id_pais`) REFERENCES `m_paises` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `m_estatus_productos`
--
ALTER TABLE `m_estatus_productos`
  ADD CONSTRAINT `fk_m_estatus_producto_tex_original` FOREIGN KEY (`texto_original`) REFERENCES `m_estatus_productos` (`id_estatus_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_idiomas_m_estatus_prod` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `m_lineas`
--
ALTER TABLE `m_lineas`
  ADD CONSTRAINT `fk_s_estatus_m_series` FOREIGN KEY (`id_estatus`) REFERENCES `s_estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_texto_original_m_lineas` FOREIGN KEY (`texto_original`) REFERENCES `m_lineas` (`id_linea`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `r_fotos_productos`
--
ALTER TABLE `r_fotos_productos`
  ADD CONSTRAINT `fk_m_producto_t_fotos_productos` FOREIGN KEY (`id_producto`) REFERENCES `t_productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `r_productos_lineas`
--
ALTER TABLE `r_productos_lineas`
  ADD CONSTRAINT `fk_m_lineas_r_productos_lineas` FOREIGN KEY (`id_linea`) REFERENCES `m_lineas` (`id_linea`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_r_productos_series_m_productos` FOREIGN KEY (`id_producto`) REFERENCES `t_productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `r_proveedores_sedes`
--
ALTER TABLE `r_proveedores_sedes`
  ADD CONSTRAINT `fk_m_ciudades_r_prove_sedes` FOREIGN KEY (`id_ciudad`) REFERENCES `m_ciudades` (`id_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_m_estados_r_prove_sedes` FOREIGN KEY (`id_estado`) REFERENCES `m_estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_idiomas_r_proveedores_sedes` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_t_proveedores_t_sedes` FOREIGN KEY (`id_proveedor`) REFERENCES `t_proveedores` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_clasificaciones`
--
ALTER TABLE `s_clasificaciones`
  ADD CONSTRAINT `fk_s_estatus` FOREIGN KEY (`id_estatus`) REFERENCES `s_estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_idiomas_s_clasificacion_post` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_clasificacion_posts`
--
ALTER TABLE `s_clasificacion_posts`
  ADD CONSTRAINT `fk_s_clasificaciones_s_clasificacion_post` FOREIGN KEY (`id_clasificacion`) REFERENCES `s_clasificaciones` (`id_clasificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_t_posts_r_clasificacion_post` FOREIGN KEY (`id_post`) REFERENCES `s_posts` (`id_post`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_comentarios_posts`
--
ALTER TABLE `s_comentarios_posts`
  ADD CONSTRAINT `fk_s_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `s_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_t_comentarios_t_post` FOREIGN KEY (`id_post`) REFERENCES `s_posts` (`id_post`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_componentes`
--
ALTER TABLE `s_componentes`
  ADD CONSTRAINT `fk_s_idiomas_s_componentes` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_texto_original_s_componentes` FOREIGN KEY (`texto_original`) REFERENCES `s_componentes` (`id_componente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_componentes_perfiles`
--
ALTER TABLE `s_componentes_perfiles`
  ADD CONSTRAINT `s_componentes_perfiles_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `s_perfiles` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_componentes_perfiles_ibfk_2` FOREIGN KEY (`id_componente`) REFERENCES `s_componentes` (`id_componente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_elementos`
--
ALTER TABLE `s_elementos`
  ADD CONSTRAINT `fk_s_elementos_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_elementos` (`id_elemento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_idiomas_s_elementos` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_estatus`
--
ALTER TABLE `s_estatus`
  ADD CONSTRAINT `fk_s_estatus_texto_originas` FOREIGN KEY (`texto_original`) REFERENCES `s_estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_idiomas_s_estatus` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_estatus_posts`
--
ALTER TABLE `s_estatus_posts`
  ADD CONSTRAINT `fk_s_estatus_posts_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_estatus_posts` (`id_estatus_post`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sk_s_idiomas_s_estatus_post` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_menus`
--
ALTER TABLE `s_menus`
  ADD CONSTRAINT `fk_s_idiomas_s_menus` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_menus_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_menus` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_metodos`
--
ALTER TABLE `s_metodos`
  ADD CONSTRAINT `fk_s_idiomas_s_metodos` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_metodos_ibfk_1` FOREIGN KEY (`id_objeto`) REFERENCES `s_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sk_s_metodos_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_metodos` (`id_metodo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_metodos_perfiles`
--
ALTER TABLE `s_metodos_perfiles`
  ADD CONSTRAINT `fk_s_metodos` FOREIGN KEY (`id_metodo`) REFERENCES `s_metodos` (`id_metodo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_perfiles` FOREIGN KEY (`id_perfil`) REFERENCES `s_perfiles` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_objetos`
--
ALTER TABLE `s_objetos`
  ADD CONSTRAINT `fk_s_idiomas_s_objetos` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_objetos_s_componentes` FOREIGN KEY (`id_componente`) REFERENCES `s_componentes` (`id_componente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_objetos_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_objetos_media`
--
ALTER TABLE `s_objetos_media`
  ADD CONSTRAINT `fk_s_idiomas_s_objetos_media` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_objetos_media_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_objetos_media` (`id_objeto_media`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_objetos_perfiles`
--
ALTER TABLE `s_objetos_perfiles`
  ADD CONSTRAINT `s_objetos_perfiles_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `s_perfiles` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_objetos_perfiles_ibfk_2` FOREIGN KEY (`id_objeto`) REFERENCES `s_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_opciones_menu`
--
ALTER TABLE `s_opciones_menu`
  ADD CONSTRAINT `fk_s_estatus_s_opciones_menu` FOREIGN KEY (`id_estatus`) REFERENCES `s_estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_idiomas_s_opciones_menu` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_metodos_s_opciones_menu` FOREIGN KEY (`id_metodo`) REFERENCES `s_metodos` (`id_metodo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_opciones_menu_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_opciones_menu` (`id_opcion_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_opciones_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `s_menus` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_opciones_menu_perfiles`
--
ALTER TABLE `s_opciones_menu_perfiles`
  ADD CONSTRAINT `s_opciones_menu_perfiles_ibfk_1` FOREIGN KEY (`id_opcion_menu`) REFERENCES `s_opciones_menu` (`id_opcion_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_opciones_menu_perfiles_ibfk_2` FOREIGN KEY (`id_perfil`) REFERENCES `s_perfiles` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_perfiles`
--
ALTER TABLE `s_perfiles`
  ADD CONSTRAINT `fk_s_idiomas_s_perfiles` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_s_perfiles_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_perfiles` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_posts`
--
ALTER TABLE `s_posts`
  ADD CONSTRAINT `fk_texto_original` FOREIGN KEY (`texto_original`) REFERENCES `s_posts` (`id_post`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_estatus_post` FOREIGN KEY (`id_estatus_post`) REFERENCES `s_estatus_posts` (`id_estatus_post`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_idioma` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_seccion` FOREIGN KEY (`id_seccion`) REFERENCES `s_clasificaciones` (`id_clasificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_post_s_objetos_media` FOREIGN KEY (`id_media_principal`) REFERENCES `s_objetos_media` (`id_objeto_media`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_usuarios`
--
ALTER TABLE `s_usuarios`
  ADD CONSTRAINT `fk_s_usuarios_s_estatus` FOREIGN KEY (`id_estatus`) REFERENCES `s_estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `s_usuarios_perfiles`
--
ALTER TABLE `s_usuarios_perfiles`
  ADD CONSTRAINT `s_usuarios_perfiles_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `s_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `s_usuarios_perfiles_ibfk_2` FOREIGN KEY (`id_perfil`) REFERENCES `s_perfiles` (`id_perfil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `t_productos`
--
ALTER TABLE `t_productos`
  ADD CONSTRAINT `fk_m_idiomas_t_productos` FOREIGN KEY (`id_idioma`) REFERENCES `s_idiomas` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_m_productos_m_estattus_productos` FOREIGN KEY (`id_estatus_producto`) REFERENCES `m_estatus_productos` (`id_estatus_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_texto_t_productos` FOREIGN KEY (`texto_original`) REFERENCES `t_productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Rehabilitar verificación de llaves foráneas
-- Este paso es importante, no olvidarlo
SET FOREIGN_KEY_CHECKS = 1;
