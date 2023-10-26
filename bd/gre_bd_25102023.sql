-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-10-2023 a las 02:28:58
-- Versión del servidor: 8.0.30
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gre_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL,
  `cliente_razonsocial` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cliente_direccion` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cliente_numero` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `id_tipodocumento` int DEFAULT NULL,
  `cliente_correo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cliente_telefono` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cliente_fecha` datetime DEFAULT NULL,
  `cliente_estado` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `cliente_razonsocial`, `cliente_direccion`, `cliente_numero`, `id_tipodocumento`, `cliente_correo`, `cliente_telefono`, `cliente_fecha`, `cliente_estado`) VALUES
(1, 'PUBLICO GENERAL', 'SIN DIRECCION', '11111111', 2, NULL, NULL, '2023-08-22 01:03:08', 1),
(2, 'LUIS ANTONIO SALAZAR BARTRA', 'Calle Alzamora 958', '71106432', 2, NULL, '953295553', '2023-09-26 22:05:11', 1),
(3, 'EFA IMPORT E.I.R.L.', 'CAL. CONDAMINE NRO. 589 C.H. CONDAMINNE - LORETO MAYNAS IQUITOS', '20606136618', 4, NULL, '', '2023-09-27 21:04:32', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int NOT NULL,
  `empresa_razon_social` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_nombrecomercial` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_descripcion` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_ruc` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_domiciliofiscal` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_pais` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_departamento` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_provincia` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_distrito` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_ubigeo` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_telefono1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_telefono2` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_celular1` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_celular2` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_foto` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_correo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_usuario_sol` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_clave_sol` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_certificado_nombre` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_certificado_clave` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `empresa_gre_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Generado por sunat ',
  `empresa_gre_clave` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Generado por sunat ',
  `empresa_fechayhora` datetime DEFAULT CURRENT_TIMESTAMP,
  `empresa_estado` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `empresa_razon_social`, `empresa_nombrecomercial`, `empresa_descripcion`, `empresa_ruc`, `empresa_domiciliofiscal`, `empresa_pais`, `empresa_departamento`, `empresa_provincia`, `empresa_distrito`, `empresa_ubigeo`, `empresa_telefono1`, `empresa_telefono2`, `empresa_celular1`, `empresa_celular2`, `empresa_foto`, `empresa_correo`, `empresa_usuario_sol`, `empresa_clave_sol`, `empresa_certificado_nombre`, `empresa_certificado_clave`, `empresa_gre_id`, `empresa_gre_clave`, `empresa_fechayhora`, `empresa_estado`) VALUES
(1, 'SUMINISTROS Y SERVICIOS ELECTRICOS SELVA S.R.L.', 'SUMTSEL', 'VENTA DE MATERIALES ELECTRICOS Y DE CONSTRUCCION PARA LA INDUSTRIA PETROLERA, PARA CONSTRUCCION CIVIL Y FORESTAL ', '20603085290', 'AV. PARTICIPACION 637 ', 'PE', 'LORETO', 'MAYNAS', 'BELEN', '160101', '065-263409', '065-226064', '', NULL, NULL, 'rsevillano@sumtsel.com', 'SUMTUFEO', 'SumtUfeo12', NULL, NULL, 'ebb0df3c-ea35-4e6c-b0ba-16858204e44b', '05MZ88EW67c6LW2j7y7g1A==', '2021-07-14 11:16:47', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_remision`
--

CREATE TABLE `guia_remision` (
  `id_guia` int NOT NULL,
  `id_empresa` int DEFAULT '1',
  `id_caja` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `remision_tipo_comprobante` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '09' COMMENT 'Observacion 09 guias de remision remitente, 31 guia de remision transportista',
  `guia_serie` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_correlativo` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `guia_estado` tinyint DEFAULT NULL,
  `guia_emision` date DEFAULT NULL,
  `guia_motivo` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_tipo_trans` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_fecha_traslado` date DEFAULT NULL,
  `guia_peso_bruto` decimal(10,3) DEFAULT NULL,
  `guia_unidad_medida` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'KGM o TNE',
  `guia_n_bulto` decimal(6,0) DEFAULT NULL,
  `guia_tipo_doc` int DEFAULT NULL,
  `guia_num_doc` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_denominacion` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_placa` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_conductor_documento_tipo` char(5) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  ` 	guia_conductor_numero` varchar(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  ` 	guia_conductor_nombre` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_conductor_apellidos` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_licencia_cond` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_destinatario_tipo_doc` char(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_destinatario_numero` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_destinatario_nombre` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_ubigeo_part` varchar(11) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_direccion_part` varchar(300) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_cod_establec_part` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT '0000',
  `guia_ubigeo_llega` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'con el numero se busca en tabla ubigeo',
  `guia_direccion_llega` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guia_cod_establec_llega` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0000',
  `guia_observacion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `guia_remision_tipo` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '09',
  `tipo_comprobante_relacion` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '01 factura y 03 boleta',
  `serie_relacion` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `correlativo_relacion` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'estos campos serviran para cuanndo pongan la serie de forma manual del comprobante relacionado',
  `guia_remision_mt` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_estado_sunat` tinyint DEFAULT '0',
  `guia_fecha_envio` datetime DEFAULT NULL,
  `guia_rutaXML` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_rutaCDR` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_respuesta_sunat` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `guia_remision_numTicket` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_remision_fecRecepcion` datetime DEFAULT NULL,
  `guia_linkpdf_sunat` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT 'acá se llena el link del pdf que retorna de sunat',
  `guia_venta_estado` int DEFAULT '0',
  `guia_bulto` decimal(10,2) DEFAULT NULL,
  `id_guia_2` int DEFAULT NULL,
  `guia_anulado` tinyint NOT NULL DEFAULT '0' COMMENT 'si es 1 si está anulado',
  `guia_anulado_fecha` datetime DEFAULT NULL COMMENT 'fecha anulacion en el sistema'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_remision_detalle`
--

CREATE TABLE `guia_remision_detalle` (
  `id_guia_remision_detalle` int NOT NULL,
  `id_guia` int DEFAULT NULL,
  `guia_remision_detalle_cod` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_remision_detalle_descripcion` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_remision_detalle_um` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `guia_remision_detalle_cantidad` double DEFAULT NULL,
  `guia_precio` decimal(10,3) DEFAULT '0.000',
  `guia_remision_detalle_precio` decimal(10,3) DEFAULT '0.000',
  `guia_remision_detalle_almacen` int DEFAULT NULL,
  `id_carrete` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id_menu` int NOT NULL,
  `menu_nombre` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `menu_controlador` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `menu_icono` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `menu_orden` int NOT NULL,
  `menu_mostrar` tinyint(1) NOT NULL,
  `menu_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id_menu`, `menu_nombre`, `menu_controlador`, `menu_icono`, `menu_orden`, `menu_mostrar`, `menu_estado`) VALUES
(1, 'Login', 'Login', '-', 0, 0, 1),
(2, 'Panel de Inicio', 'Admin', 'fa fa-dashboard', 1, 1, 1),
(3, 'Gestión de Menu', 'Menu', 'fa fa-desktop', 2, 1, 1),
(4, 'Roles de Usuario', 'Rol', 'fa fa-user-secret', 4, 1, 1),
(5, 'Usuarios', 'Usuario', 'fa fa-user', 5, 1, 1),
(6, 'Datos Personales', 'Datos', 'fa fa-', 0, 0, 1),
(7, 'Empresa', 'Empresa', 'fa fa-institution', 4, 1, 1),
(8, 'Guias de Remisión', 'Guiasremision', 'fa fa-table', 6, 1, 1),
(9, 'Clientes', 'Cliente', 'fa fa-building', 4, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id_moneda` int NOT NULL,
  `moneda` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `abreviado` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `abrstandar` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `simbolo` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `activo` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id_moneda`, `moneda`, `abreviado`, `abrstandar`, `simbolo`, `activo`) VALUES
(1, 'SOLES', 'sol', 'PEN', 'S/', '1'),
(2, 'DOLARES', 'dol', 'USD', '$', '1'),
(3, 'EUROS', 'eur', 'EUR', 'E', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id_opcion` int NOT NULL,
  `id_menu` int NOT NULL,
  `opcion_nombre` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `opcion_funcion` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `opcion_icono` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `opcion_mostrar` tinyint(1) NOT NULL,
  `opcion_orden` int NOT NULL,
  `opcion_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id_opcion`, `id_menu`, `opcion_nombre`, `opcion_funcion`, `opcion_icono`, `opcion_mostrar`, `opcion_orden`, `opcion_estado`) VALUES
(1, 1, 'Inicio de Sesion', 'inicio', '-', 0, 0, 1),
(2, 2, 'Inicio', 'inicio', 'fa fa-play', 1, 1, 1),
(3, 2, 'Cerrar Sesión', 'finalizar_sesion', 'fa fa-sign-out', 0, 1, 1),
(4, 3, 'Gestionar Menús', 'inicio', NULL, 1, 1, 1),
(5, 3, 'Iconos', 'iconos', NULL, 1, 2, 1),
(6, 3, 'Accesos por Rol', 'roles', NULL, 0, 0, 1),
(7, 3, 'Opciones por Menú', 'opciones', NULL, 0, 0, 1),
(8, 3, 'Gestionar Permisos(breve)', 'gestion_permisos', '', 0, 0, 1),
(9, 4, 'Gestionar Roles', 'inicio', '', 1, 1, 1),
(10, 4, 'Accesos por Rol', 'accesos', '', 0, 0, 1),
(11, 3, 'Gestionar Restricciones(breve)', 'gestion_restricciones', '', 0, 0, 1),
(12, 5, 'Gestionar Usuarios', 'inicio', '', 1, 1, 1),
(13, 6, 'Editar Datos', 'editar_datos', '', 0, 0, 1),
(14, 6, 'Editar Usuario', 'editar_usuario', '', 0, 0, 1),
(15, 6, 'Cambiar Contraseña', 'cambiar_contrasenha', '', 0, 0, 1),
(16, 7, 'Inicio', 'inicio', '', 1, 1, 1),
(17, 8, 'Generar Guía', 'generar_guia', '', 1, 1, 1),
(18, 9, 'Inicio', 'inicio', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int NOT NULL,
  `id_opcion` int NOT NULL,
  `permiso_accion` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `permiso_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permiso`, `id_opcion`, `permiso_accion`, `permiso_estado`) VALUES
(1, 1, 'validar_sesion', 1),
(2, 4, 'guardar_menu', 1),
(3, 6, 'configurar_relacion', 1),
(4, 7, 'guardar_opcion', 1),
(5, 7, 'agregar_permiso', 1),
(6, 7, 'eliminar_permiso', 1),
(7, 7, 'configurar_acceso', 1),
(8, 9, 'guardar_rol', 1),
(9, 10, 'gestionar_acceso_rol', 1),
(10, 12, 'guardar_nuevo_usuario', 1),
(11, 12, 'guardar_edicion_usuario', 1),
(12, 12, 'guardar_edicion_persona', 1),
(13, 12, 'restablecer_contrasenha', 1),
(14, 13, 'guardar_datos', 1),
(15, 14, 'guardar_usuario', 1),
(16, 15, 'guardar_contrasenha', 1),
(17, 18, 'guardar_cliente', 1),
(18, 17, 'obtener_datos_x_dni', 1),
(19, 18, 'obtener_datos_x_dni', 1),
(20, 17, 'guardar_guia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int NOT NULL,
  `persona_nombre` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `persona_apellido_paterno` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `persona_apellido_materno` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `persona_nacimiento` date DEFAULT NULL,
  `persona_telefono` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `persona_creacion` datetime NOT NULL,
  `persona_modificacion` datetime NOT NULL,
  `person_codigo` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `persona_nombre`, `persona_apellido_paterno`, `persona_apellido_materno`, `persona_nacimiento`, `persona_telefono`, `persona_creacion`, `persona_modificacion`, `person_codigo`) VALUES
(1, 'Luis', 'Salazar', 'Bartra', '1995-11-23', '953295553', '2020-09-17 00:00:00', '2023-09-29 20:51:55', '010101010101'),
(2, 'Carlos', 'Melendez', 'Bernuy', '1996-06-14', '965874123', '2020-10-27 18:29:10', '2020-10-27 18:29:10', '1603841350.1786');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restricciones`
--

CREATE TABLE `restricciones` (
  `id_restriccion` int NOT NULL,
  `id_rol` int NOT NULL,
  `id_opcion` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int NOT NULL,
  `rol_nombre` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `rol_descripcion` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `rol_estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES
(1, 'Libre', 'Accesos sin inicio de sesión', 1),
(2, 'SuperAdmin', 'Tiene acceso a la gestión total del sistema', 1),
(3, 'Admin', 'Gestión del sistema', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_menus`
--

CREATE TABLE `roles_menus` (
  `id_rol_menu` int NOT NULL,
  `id_rol` int NOT NULL,
  `id_menu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `roles_menus`
--

INSERT INTO `roles_menus` (`id_rol_menu`, `id_rol`, `id_menu`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 2),
(7, 3, 5),
(8, 2, 6),
(9, 3, 6),
(10, 2, 7),
(11, 1, 8),
(12, 2, 8),
(13, 3, 8),
(14, 2, 9),
(15, 3, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `id_serie` int NOT NULL,
  `id_empresa` int NOT NULL DEFAULT '1',
  `tipocomp` char(2) DEFAULT NULL,
  `serie` varchar(8) DEFAULT NULL,
  `correlativo` int DEFAULT NULL,
  `estado` tinyint NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Volcado de datos para la tabla `serie`
--

INSERT INTO `serie` (`id_serie`, `id_empresa`, `tipocomp`, `serie`, `correlativo`, `estado`) VALUES
(1, 1, '01', 'FFF2', 0, 1),
(2, 1, '03', 'BBB1', 0, 1),
(3, 1, '07', 'FN01', 0, 1),
(4, 1, '07', 'BN01', 0, 1),
(5, 1, '08', 'FD01', 0, 1),
(6, 1, '08', 'BD01', 0, 1),
(7, 1, '09', 'TTT1', 0, 1),
(8, 1, '31', 'VVV1', 0, 1),
(9, 1, 'RC', '20210520', 0, 1),
(10, 1, 'RA', '20210520', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documentos`
--

CREATE TABLE `tipo_documentos` (
  `id_tipodocumento` int NOT NULL,
  `tipodocumento_codigo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tipodocumento_identidad` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tipodocumento_estado` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_documentos`
--

INSERT INTO `tipo_documentos` (`id_tipodocumento`, `tipodocumento_codigo`, `tipodocumento_identidad`, `tipodocumento_estado`) VALUES
(1, '0', 'DOC.TRIB.NO.DOM.SIN.RUC', 0),
(2, '1', 'DNI', 1),
(3, '4', 'Carnet de extranjería', 1),
(4, '6', 'RUC', 1),
(5, '7', 'Pasaporte', 1),
(6, 'A', 'Cédula Diplomática de identidad', 1),
(7, 'B', 'DOC.IDENT.PAIS.RESIDENCIA-NO.D', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo`
--

CREATE TABLE `ubigeo` (
  `id_ubigeo` int NOT NULL,
  `ubigeo_cod` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ubigeo_departamento` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ubigeo_provincia` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ubigeo_distrito` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ubigeo_capital` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `ubigeo`
--

INSERT INTO `ubigeo` (`id_ubigeo`, `ubigeo_cod`, `ubigeo_departamento`, `ubigeo_provincia`, `ubigeo_distrito`, `ubigeo_capital`) VALUES
(1, '10102', 'AMAZONAS', 'CHACHAPOYAS', 'ASUNCION', 'ASUNCION'),
(2, '10103', 'AMAZONAS', 'CHACHAPOYAS', 'BALSAS', 'BALSAS'),
(3, '10104', 'AMAZONAS', 'CHACHAPOYAS', 'CHETO', 'CHETO'),
(4, '10105', 'AMAZONAS', 'CHACHAPOYAS', 'CHILIQUIN', 'CHILIQUIN'),
(5, '10106', 'AMAZONAS', 'CHACHAPOYAS', 'CHUQUIBAMBA', 'CHUQUIBAMBA'),
(6, '10107', 'AMAZONAS', 'CHACHAPOYAS', 'GRANADA', 'GRANADA'),
(7, '10108', 'AMAZONAS', 'CHACHAPOYAS', 'HUANCAS', 'HUANCAS'),
(8, '10109', 'AMAZONAS', 'CHACHAPOYAS', 'LA JALCA', 'LA JALCA'),
(9, '10110', 'AMAZONAS', 'CHACHAPOYAS', 'LEIMEBAMBA', 'LEIMEBAMBA'),
(10, '10111', 'AMAZONAS', 'CHACHAPOYAS', 'LEVANTO', 'LEVANTO'),
(11, '10112', 'AMAZONAS', 'CHACHAPOYAS', 'MAGDALENA', 'MAGDALENA'),
(12, '10113', 'AMAZONAS', 'CHACHAPOYAS', 'MARISCAL CASTILLA', 'DURAZNOPAMPA'),
(13, '10114', 'AMAZONAS', 'CHACHAPOYAS', 'MOLINOPAMPA', 'MOLINOPAMPA'),
(14, '10115', 'AMAZONAS', 'CHACHAPOYAS', 'MONTEVIDEO', 'MONTEVIDEO'),
(15, '10116', 'AMAZONAS', 'CHACHAPOYAS', 'OLLEROS', 'OLLEROS'),
(16, '10117', 'AMAZONAS', 'CHACHAPOYAS', 'QUINJALCA', 'QUINJALCA'),
(17, '10118', 'AMAZONAS', 'CHACHAPOYAS', 'SAN FRANCISCO DE DAGUAS', 'DAGUAS'),
(18, '10119', 'AMAZONAS', 'CHACHAPOYAS', 'SAN ISIDRO DE MAINO', 'MAINO'),
(19, '10120', 'AMAZONAS', 'CHACHAPOYAS', 'SOLOCO', 'SOLOCO'),
(20, '10121', 'AMAZONAS', 'CHACHAPOYAS', 'SONCHE', 'SAN JUAN DE SONCHE'),
(21, '10201', 'AMAZONAS', 'BAGUA', 'BAGUA', 'BAGUA'),
(22, '10202', 'AMAZONAS', 'BAGUA', 'ARAMANGO', 'ARAMANGO'),
(23, '10203', 'AMAZONAS', 'BAGUA', 'COPALLIN', 'COPALLIN'),
(24, '10204', 'AMAZONAS', 'BAGUA', 'EL PARCO', 'EL PARCO'),
(25, '10205', 'AMAZONAS', 'BAGUA', 'IMAZA', 'CHIRIACO'),
(26, '10206', 'AMAZONAS', 'BAGUA', 'LA PECA', 'LA PECA'),
(27, '10301', 'AMAZONAS', 'BONGARA', 'JUMBILLA', 'JUMBILLA'),
(28, '10302', 'AMAZONAS', 'BONGARA', 'CHISQUILLA', 'CHISQUILLA'),
(29, '10303', 'AMAZONAS', 'BONGARA', 'CHURUJA', 'CHURUJA'),
(30, '10304', 'AMAZONAS', 'BONGARA', 'COROSHA', 'COROSHA'),
(31, '10305', 'AMAZONAS', 'BONGARA', 'CUISPES', 'CUISPES'),
(32, '10306', 'AMAZONAS', 'BONGARA', 'FLORIDA', 'FLORIDA (POMACOCHAS)'),
(33, '10307', 'AMAZONAS', 'BONGARA', 'JAZAN', 'PEDRO RUIZ GALLO'),
(34, '10308', 'AMAZONAS', 'BONGARA', 'RECTA', 'RECTA'),
(35, '10309', 'AMAZONAS', 'BONGARA', 'SAN CARLOS', 'SAN CARLOS'),
(36, '10310', 'AMAZONAS', 'BONGARA', 'SHIPASBAMBA', 'SHIPASBAMBA'),
(37, '10311', 'AMAZONAS', 'BONGARA', 'VALERA', 'VALERA (SAN PABLO)'),
(38, '10312', 'AMAZONAS', 'BONGARA', 'YAMBRASBAMBA', 'YAMBRASBAMBA'),
(39, '10401', 'AMAZONAS', 'CONDORCANQUI', 'NIEVA', 'SANTA MARIA DE NIEVA'),
(40, '10402', 'AMAZONAS', 'CONDORCANQUI', 'EL CENEPA', 'HUAMPAMI'),
(41, '10403', 'AMAZONAS', 'CONDORCANQUI', 'RIO SANTIAGO', 'PUERTO GALILEA'),
(42, '10501', 'AMAZONAS', 'LUYA', 'LAMUD', 'LAMUD'),
(43, '10502', 'AMAZONAS', 'LUYA', 'CAMPORREDONDO', 'CAMPORREDONDO'),
(44, '10503', 'AMAZONAS', 'LUYA', 'COCABAMBA', 'COCABAMBA'),
(45, '10504', 'AMAZONAS', 'LUYA', 'COLCAMAR', 'COLCAMAR'),
(46, '10505', 'AMAZONAS', 'LUYA', 'CONILA', 'COHECHAN'),
(47, '10506', 'AMAZONAS', 'LUYA', 'INGUILPATA', 'INGUILPATA'),
(48, '10507', 'AMAZONAS', 'LUYA', 'LONGUITA', 'LONGUITA'),
(49, '10508', 'AMAZONAS', 'LUYA', 'LONYA CHICO', 'LONYA CHICO'),
(50, '10509', 'AMAZONAS', 'LUYA', 'LUYA', 'LUYA'),
(51, '10510', 'AMAZONAS', 'LUYA', 'LUYA VIEJO', 'LUYA VIEJO'),
(52, '10511', 'AMAZONAS', 'LUYA', 'MARIA', 'MARIA'),
(53, '10512', 'AMAZONAS', 'LUYA', 'OCALLI', 'OCALLI'),
(54, '10513', 'AMAZONAS', 'LUYA', 'OCUMAL', 'COLLONCE'),
(55, '10514', 'AMAZONAS', 'LUYA', 'PISUQUIA', 'YOMBLON'),
(56, '10515', 'AMAZONAS', 'LUYA', 'PROVIDENCIA', 'PROVIDENCIA'),
(57, '10516', 'AMAZONAS', 'LUYA', 'SAN CRISTOBAL', 'OLTO'),
(58, '10517', 'AMAZONAS', 'LUYA', 'SAN FRANCISCO DEL YESO', 'SAN FRANCISCO DEL YESO'),
(59, '10518', 'AMAZONAS', 'LUYA', 'SAN JERONIMO', 'PACLAS'),
(60, '10519', 'AMAZONAS', 'LUYA', 'SAN JUAN DE LOPECANCHA', 'SAN JUAN DE LOPECANCHA'),
(61, '10520', 'AMAZONAS', 'LUYA', 'SANTA CATALINA', 'SANTA CATALINA'),
(62, '10521', 'AMAZONAS', 'LUYA', 'SANTO TOMAS', 'SANTO TOMAS'),
(63, '10522', 'AMAZONAS', 'LUYA', 'TINGO', 'TINGO'),
(64, '10523', 'AMAZONAS', 'LUYA', 'TRITA', 'TRITA'),
(65, '10601', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'SAN NICOLAS', 'MENDOZA'),
(66, '10602', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'CHIRIMOTO', 'CHIRIMOTO'),
(67, '10603', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'COCHAMAL', 'COCHAMAL'),
(68, '10604', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'HUAMBO', 'HUAMBO'),
(69, '10605', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'LIMABAMBA', 'LIMABAMBA'),
(70, '10606', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'LONGAR', 'LONGAR'),
(71, '10607', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'MARISCAL BENAVIDES', 'MARISCAL BENAVIDES'),
(72, '10608', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'MILPUC', 'MILPUC'),
(73, '10609', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'OMIA', 'OMIA'),
(74, '10610', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'SANTA ROSA', 'SANTA ROSA DE HUAYABAMBA'),
(75, '10611', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'TOTORA', 'TOTORA'),
(76, '10612', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'VISTA ALEGRE', 'VISTA ALEGRE'),
(77, '10701', 'AMAZONAS', 'UTCUBAMBA', 'BAGUA GRANDE', 'BAGUA GRANDE'),
(78, '10702', 'AMAZONAS', 'UTCUBAMBA', 'CAJARURO', 'CAJARURO'),
(79, '10703', 'AMAZONAS', 'UTCUBAMBA', 'CUMBA', 'CUMBA'),
(80, '10704', 'AMAZONAS', 'UTCUBAMBA', 'EL MILAGRO', 'EL MILAGRO'),
(81, '10705', 'AMAZONAS', 'UTCUBAMBA', 'JAMALCA', 'JAMALCA'),
(82, '10706', 'AMAZONAS', 'UTCUBAMBA', 'LONYA GRANDE', 'LONYA GRANDE'),
(83, '10707', 'AMAZONAS', 'UTCUBAMBA', 'YAMON', 'YAMON'),
(84, '20101', 'ANCASH', 'HUARAZ', 'HUARAZ', 'HUARAZ'),
(85, '20102', 'ANCASH', 'HUARAZ', 'COCHABAMBA', 'COCHABAMBA'),
(86, '20103', 'ANCASH', 'HUARAZ', 'COLCABAMBA', 'COLCABAMBA'),
(87, '20104', 'ANCASH', 'HUARAZ', 'HUANCHAY', 'HUANCHAY'),
(88, '20105', 'ANCASH', 'HUARAZ', 'INDEPENDENCIA', 'CENTENARIO'),
(89, '20106', 'ANCASH', 'HUARAZ', 'JANGAS', 'JANGAS'),
(90, '20107', 'ANCASH', 'HUARAZ', 'LA LIBERTAD', 'CAJAMARQUILLA'),
(91, '20108', 'ANCASH', 'HUARAZ', 'OLLEROS', 'OLLEROS'),
(92, '20109', 'ANCASH', 'HUARAZ', 'PAMPAS GRANDE', 'PAMPAS GRANDE'),
(93, '20110', 'ANCASH', 'HUARAZ', 'PARIACOTO', 'PARIACOTO'),
(94, '20111', 'ANCASH', 'HUARAZ', 'PIRA', 'PIRA'),
(95, '20112', 'ANCASH', 'HUARAZ', 'TARICA', 'TARICA'),
(96, '20201', 'ANCASH', 'AIJA', 'AIJA', 'AIJA'),
(97, '20202', 'ANCASH', 'AIJA', 'CORIS', 'CORIS'),
(98, '20203', 'ANCASH', 'AIJA', 'HUACLLAN', 'HUACLLAN'),
(99, '20204', 'ANCASH', 'AIJA', 'LA MERCED', 'LA MERCED'),
(100, '20205', 'ANCASH', 'AIJA', 'SUCCHA', 'SUCCHA'),
(101, '20301', 'ANCASH', 'ANTONIO RAYMONDI', 'LLAMELLIN', 'LLAMELLIN'),
(102, '20302', 'ANCASH', 'ANTONIO RAYMONDI', 'ACZO', 'ACZO'),
(103, '20303', 'ANCASH', 'ANTONIO RAYMONDI', 'CHACCHO', 'CHACCHO'),
(104, '20304', 'ANCASH', 'ANTONIO RAYMONDI', 'CHINGAS', 'CHINGAS'),
(105, '20305', 'ANCASH', 'ANTONIO RAYMONDI', 'MIRGAS', 'MIRGAS'),
(106, '20306', 'ANCASH', 'ANTONIO RAYMONDI', 'SAN JUAN DE RONTOY', 'SAN JUAN DE RONTOY'),
(107, '20401', 'ANCASH', 'ASUNCION', 'CHACAS', 'CHACAS'),
(108, '20402', 'ANCASH', 'ASUNCION', 'ACOCHACA', 'ACOCHACA'),
(109, '20501', 'ANCASH', 'BOLOGNESI', 'CHIQUIAN', 'CHIQUIAN'),
(110, '20502', 'ANCASH', 'BOLOGNESI', 'ABELARDO PARDO LEZAMETA', 'LLACLLA'),
(111, '20503', 'ANCASH', 'BOLOGNESI', 'ANTONIO RAYMONDI', 'RAQUIA'),
(112, '20504', 'ANCASH', 'BOLOGNESI', 'AQUIA', 'AQUIA'),
(113, '20505', 'ANCASH', 'BOLOGNESI', 'CAJACAY', 'CAJACAY'),
(114, '20506', 'ANCASH', 'BOLOGNESI', 'CANIS', 'CANIS'),
(115, '20507', 'ANCASH', 'BOLOGNESI', 'COLQUIOC', 'CHASQUITAMBO'),
(116, '20508', 'ANCASH', 'BOLOGNESI', 'HUALLANCA', 'HUALLANCA'),
(117, '20509', 'ANCASH', 'BOLOGNESI', 'HUASTA', 'HUASTA'),
(118, '20510', 'ANCASH', 'BOLOGNESI', 'HUAYLLACAYAN', 'HUAYLLACAYAN'),
(119, '20511', 'ANCASH', 'BOLOGNESI', 'LA PRIMAVERA', 'GORGORILLO'),
(120, '20512', 'ANCASH', 'BOLOGNESI', 'MANGAS', 'MANGAS'),
(121, '20513', 'ANCASH', 'BOLOGNESI', 'PACLLON', 'PACLLON'),
(122, '20514', 'ANCASH', 'BOLOGNESI', 'SAN MIGUEL DE CORPANQUI', 'CORPANQUI'),
(123, '20515', 'ANCASH', 'BOLOGNESI', 'TICLLOS', 'TICLLOS'),
(124, '20601', 'ANCASH', 'CARHUAZ', 'CARHUAZ', 'CARHUAZ'),
(125, '20602', 'ANCASH', 'CARHUAZ', 'ACOPAMPA', 'ACOPAMPA'),
(126, '20603', 'ANCASH', 'CARHUAZ', 'AMASHCA', 'AMASHCA'),
(127, '20604', 'ANCASH', 'CARHUAZ', 'ANTA', 'ANTA'),
(128, '20605', 'ANCASH', 'CARHUAZ', 'ATAQUERO', 'CARHUAC'),
(129, '20606', 'ANCASH', 'CARHUAZ', 'MARCARA', 'MARCARA'),
(130, '20607', 'ANCASH', 'CARHUAZ', 'PARIAHUANCA', 'PARIAHUANCA'),
(131, '20608', 'ANCASH', 'CARHUAZ', 'SAN MIGUEL DE ACO', 'ACO'),
(132, '20609', 'ANCASH', 'CARHUAZ', 'SHILLA', 'SHILLA'),
(133, '20610', 'ANCASH', 'CARHUAZ', 'TINCO', 'TINCO'),
(134, '20611', 'ANCASH', 'CARHUAZ', 'YUNGAR', 'YUNGAR'),
(135, '20701', 'ANCASH', 'CARLOS FERMIN FITZCARRALD', 'SAN LUIS', 'SAN LUIS'),
(136, '20702', 'ANCASH', 'CARLOS FERMIN FITZCARRALD', 'SAN NICOLAS', 'SAN NICOLAS'),
(137, '20703', 'ANCASH', 'CARLOS FERMIN FITZCARRALD', 'YAUYA', 'YAUYA'),
(138, '20801', 'ANCASH', 'CASMA', 'CASMA', 'CASMA'),
(139, '20802', 'ANCASH', 'CASMA', 'BUENA VISTA ALTA', 'BUENA VISTA ALTA'),
(140, '20803', 'ANCASH', 'CASMA', 'COMANDANTE NOEL', 'PUERTO CASMA'),
(141, '20804', 'ANCASH', 'CASMA', 'YAUTAN', 'YAUTAN'),
(142, '20901', 'ANCASH', 'CORONGO', 'CORONGO', 'CORONGO'),
(143, '20902', 'ANCASH', 'CORONGO', 'ACO', 'ACO'),
(144, '20903', 'ANCASH', 'CORONGO', 'BAMBAS', 'BAMBAS'),
(145, '20904', 'ANCASH', 'CORONGO', 'CUSCA', 'CUSCA'),
(146, '20905', 'ANCASH', 'CORONGO', 'LA PAMPA', 'LA PAMPA'),
(147, '20906', 'ANCASH', 'CORONGO', 'YANAC', 'YANAC'),
(148, '20907', 'ANCASH', 'CORONGO', 'YUPAN', 'YUPAN'),
(149, '21001', 'ANCASH', 'HUARI', 'HUARI', 'HUARI'),
(150, '21002', 'ANCASH', 'HUARI', 'ANRA', 'ANRA'),
(151, '21003', 'ANCASH', 'HUARI', 'CAJAY', 'CAJAY'),
(152, '21004', 'ANCASH', 'HUARI', 'CHAVIN DE HUANTAR', 'CHAVIN DE HUANTAR'),
(153, '21005', 'ANCASH', 'HUARI', 'HUACACHI', 'HUACACHI'),
(154, '21006', 'ANCASH', 'HUARI', 'HUACCHIS', 'HUACCHIS'),
(155, '21007', 'ANCASH', 'HUARI', 'HUACHIS', 'HUACHIS'),
(156, '21008', 'ANCASH', 'HUARI', 'HUANTAR', 'HUANTAR'),
(157, '21009', 'ANCASH', 'HUARI', 'MASIN', 'MASIN'),
(158, '21010', 'ANCASH', 'HUARI', 'PAUCAS', 'PAUCAS'),
(159, '21011', 'ANCASH', 'HUARI', 'PONTO', 'PONTO'),
(160, '21012', 'ANCASH', 'HUARI', 'RAHUAPAMPA', 'RAHUAPAMPA'),
(161, '21013', 'ANCASH', 'HUARI', 'RAPAYAN', 'RAPAYAN'),
(162, '21014', 'ANCASH', 'HUARI', 'SAN MARCOS', 'SAN MARCOS'),
(163, '21015', 'ANCASH', 'HUARI', 'SAN PEDRO DE CHANA', 'CHANA'),
(164, '21016', 'ANCASH', 'HUARI', 'UCO', 'UCO'),
(165, '21101', 'ANCASH', 'HUARMEY', 'HUARMEY', 'HUARMEY'),
(166, '21102', 'ANCASH', 'HUARMEY', 'COCHAPETI', 'COCHAPETI'),
(167, '21103', 'ANCASH', 'HUARMEY', 'CULEBRAS', 'LA CALETA CULEBRAS'),
(168, '21104', 'ANCASH', 'HUARMEY', 'HUAYAN', 'HUAYAN'),
(169, '21105', 'ANCASH', 'HUARMEY', 'MALVAS', 'MALVAS'),
(170, '21201', 'ANCASH', 'HUAYLAS', 'CARAZ', 'CARAZ'),
(171, '21202', 'ANCASH', 'HUAYLAS', 'HUALLANCA', 'HUALLANCA'),
(172, '21203', 'ANCASH', 'HUAYLAS', 'HUATA', 'HUATA'),
(173, '21204', 'ANCASH', 'HUAYLAS', 'HUAYLAS', 'HUAYLAS'),
(174, '21205', 'ANCASH', 'HUAYLAS', 'MATO', 'SUCRE'),
(175, '21206', 'ANCASH', 'HUAYLAS', 'PAMPAROMAS', 'PAMPAROMAS'),
(176, '21207', 'ANCASH', 'HUAYLAS', 'PUEBLO LIBRE', 'PUEBLO LIBRE /1'),
(177, '21208', 'ANCASH', 'HUAYLAS', 'SANTA CRUZ', 'HUARIPAMPA'),
(178, '21209', 'ANCASH', 'HUAYLAS', 'SANTO TORIBIO', 'SANTO TORIBIO'),
(179, '21210', 'ANCASH', 'HUAYLAS', 'YURACMARCA', 'YURACMARCA'),
(180, '21301', 'ANCASH', 'MARISCAL LUZURIAGA', 'PISCOBAMBA', 'PISCOBAMBA'),
(181, '21302', 'ANCASH', 'MARISCAL LUZURIAGA', 'CASCA', 'CASCA'),
(182, '21303', 'ANCASH', 'MARISCAL LUZURIAGA', 'ELEAZAR GUZMAN BARRON', 'PAMPACHACRA'),
(183, '21304', 'ANCASH', 'MARISCAL LUZURIAGA', 'FIDEL OLIVAS ESCUDERO', 'SANACHGAN'),
(184, '21305', 'ANCASH', 'MARISCAL LUZURIAGA', 'LLAMA', 'LLAMA'),
(185, '21306', 'ANCASH', 'MARISCAL LUZURIAGA', 'LLUMPA', 'LLUMPA'),
(186, '21307', 'ANCASH', 'MARISCAL LUZURIAGA', 'LUCMA', 'LUCMA'),
(187, '21308', 'ANCASH', 'MARISCAL LUZURIAGA', 'MUSGA', 'MUSGA'),
(188, '21401', 'ANCASH', 'OCROS', 'OCROS', 'OCROS'),
(189, '21402', 'ANCASH', 'OCROS', 'ACAS', 'ACAS'),
(190, '21403', 'ANCASH', 'OCROS', 'CAJAMARQUILLA', 'CAJAMARQUILLA'),
(191, '21404', 'ANCASH', 'OCROS', 'CARHUAPAMPA', 'ACO'),
(192, '21405', 'ANCASH', 'OCROS', 'COCHAS', 'HUANCHAY'),
(193, '21406', 'ANCASH', 'OCROS', 'CONGAS', 'CONGAS'),
(194, '21407', 'ANCASH', 'OCROS', 'LLIPA', 'LLIPA'),
(195, '21408', 'ANCASH', 'OCROS', 'SAN CRISTOBAL DE RAJAN', 'RAJAN'),
(196, '21409', 'ANCASH', 'OCROS', 'SAN PEDRO', 'COPA'),
(197, '21410', 'ANCASH', 'OCROS', 'SANTIAGO DE CHILCAS', 'SANTIAGO DE CHILCAS'),
(198, '21501', 'ANCASH', 'PALLASCA', 'CABANA', 'CABANA'),
(199, '21502', 'ANCASH', 'PALLASCA', 'BOLOGNESI', 'BOLOGNESI'),
(200, '21503', 'ANCASH', 'PALLASCA', 'CONCHUCOS', 'CONCHUCOS'),
(201, '21504', 'ANCASH', 'PALLASCA', 'HUACASCHUQUE', 'HUACASCHUQUE'),
(202, '21505', 'ANCASH', 'PALLASCA', 'HUANDOVAL', 'HUANDOVAL'),
(203, '21506', 'ANCASH', 'PALLASCA', 'LACABAMBA', 'LACABAMBA'),
(204, '21507', 'ANCASH', 'PALLASCA', 'LLAPO', 'LLAPO'),
(205, '21508', 'ANCASH', 'PALLASCA', 'PALLASCA', 'PALLASCA'),
(206, '21509', 'ANCASH', 'PALLASCA', 'PAMPAS', 'PAMPAS'),
(207, '21510', 'ANCASH', 'PALLASCA', 'SANTA ROSA', 'SANTA ROSA'),
(208, '21511', 'ANCASH', 'PALLASCA', 'TAUCA', 'TAUCA'),
(209, '21601', 'ANCASH', 'POMABAMBA', 'POMABAMBA', 'POMABAMBA'),
(210, '21602', 'ANCASH', 'POMABAMBA', 'HUAYLLAN', 'HUAYLLAN'),
(211, '21603', 'ANCASH', 'POMABAMBA', 'PAROBAMBA', 'PAROBAMBA'),
(212, '21604', 'ANCASH', 'POMABAMBA', 'QUINUABAMBA', 'QUINUABAMBA'),
(213, '21701', 'ANCASH', 'RECUAY', 'RECUAY', 'RECUAY'),
(214, '21702', 'ANCASH', 'RECUAY', 'CATAC', 'CATAC'),
(215, '21703', 'ANCASH', 'RECUAY', 'COTAPARACO', 'COTAPARACO'),
(216, '21704', 'ANCASH', 'RECUAY', 'HUAYLLAPAMPA', 'HUAYLLAPAMPA'),
(217, '21705', 'ANCASH', 'RECUAY', 'LLACLLIN', 'LLACLLIN'),
(218, '21706', 'ANCASH', 'RECUAY', 'MARCA', 'MARCA'),
(219, '21707', 'ANCASH', 'RECUAY', 'PAMPAS CHICO', 'PAMPAS CHICO'),
(220, '21708', 'ANCASH', 'RECUAY', 'PARARIN', 'PARARIN'),
(221, '21709', 'ANCASH', 'RECUAY', 'TAPACOCHA', 'TAPACOCHA'),
(222, '21710', 'ANCASH', 'RECUAY', 'TICAPAMPA', 'TICAPAMPA'),
(223, '21801', 'ANCASH', 'SANTA', 'CHIMBOTE', 'CHIMBOTE'),
(224, '21802', 'ANCASH', 'SANTA', 'CACERES DEL PERU', 'JIMBE'),
(225, '21803', 'ANCASH', 'SANTA', 'COISHCO', 'COISHCO'),
(226, '21804', 'ANCASH', 'SANTA', 'MACATE', 'MACATE'),
(227, '21805', 'ANCASH', 'SANTA', 'MORO', 'MORO'),
(228, '21806', 'ANCASH', 'SANTA', 'NEPEÑA', 'NEPEÑA'),
(229, '21807', 'ANCASH', 'SANTA', 'SAMANCO', 'SAMANCO'),
(230, '21808', 'ANCASH', 'SANTA', 'SANTA', 'SANTA'),
(231, '21809', 'ANCASH', 'SANTA', 'NUEVO CHIMBOTE', 'BUENOS AIRES'),
(232, '21901', 'ANCASH', 'SIHUAS', 'SIHUAS', 'SIHUAS'),
(233, '21902', 'ANCASH', 'SIHUAS', 'ACOBAMBA', 'ACOBAMBA'),
(234, '21903', 'ANCASH', 'SIHUAS', 'ALFONSO UGARTE', 'ULLULLUCO'),
(235, '21904', 'ANCASH', 'SIHUAS', 'CASHAPAMPA', 'CASHAPAMPA'),
(236, '21905', 'ANCASH', 'SIHUAS', 'CHINGALPO', 'CHINGALPO'),
(237, '21906', 'ANCASH', 'SIHUAS', 'HUAYLLABAMBA', 'HUAYLLABAMBA'),
(238, '21907', 'ANCASH', 'SIHUAS', 'QUICHES', 'QUICHES'),
(239, '21908', 'ANCASH', 'SIHUAS', 'RAGASH', 'RAGASH'),
(240, '21909', 'ANCASH', 'SIHUAS', 'SAN JUAN', 'CHULLIN'),
(241, '21910', 'ANCASH', 'SIHUAS', 'SICSIBAMBA', 'UMBE'),
(242, '22001', 'ANCASH', 'YUNGAY', 'YUNGAY', 'YUNGAY'),
(243, '22002', 'ANCASH', 'YUNGAY', 'CASCAPARA', 'CASCAPARA'),
(244, '22003', 'ANCASH', 'YUNGAY', 'MANCOS', 'MANCOS'),
(245, '22004', 'ANCASH', 'YUNGAY', 'MATACOTO', 'MATACOTO'),
(246, '22005', 'ANCASH', 'YUNGAY', 'QUILLO', 'QUILLO'),
(247, '22006', 'ANCASH', 'YUNGAY', 'RANRAHIRCA', 'RANRAHIRCA'),
(248, '22007', 'ANCASH', 'YUNGAY', 'SHUPLUY', 'SHUPLUY'),
(249, '22008', 'ANCASH', 'YUNGAY', 'YANAMA', 'YANAMA'),
(250, '30101', 'APURIMAC', 'ABANCAY', 'ABANCAY', 'ABANCAY'),
(251, '30102', 'APURIMAC', 'ABANCAY', 'CHACOCHE', 'CHACOCHE'),
(252, '30103', 'APURIMAC', 'ABANCAY', 'CIRCA', 'CIRCA'),
(253, '30104', 'APURIMAC', 'ABANCAY', 'CURAHUASI', 'CURAHUASI'),
(254, '30105', 'APURIMAC', 'ABANCAY', 'HUANIPACA', 'HUANIPACA'),
(255, '30106', 'APURIMAC', 'ABANCAY', 'LAMBRAMA', 'LAMBRAMA'),
(256, '30107', 'APURIMAC', 'ABANCAY', 'PICHIRHUA', 'PICHIRHUA'),
(257, '30108', 'APURIMAC', 'ABANCAY', 'SAN PEDRO DE CACHORA', 'CACHORA'),
(258, '30109', 'APURIMAC', 'ABANCAY', 'TAMBURCO', 'TAMBURCO'),
(259, '30201', 'APURIMAC', 'ANDAHUAYLAS', 'ANDAHUAYLAS', 'ANDAHUAYLAS'),
(260, '30202', 'APURIMAC', 'ANDAHUAYLAS', 'ANDARAPA', 'ANDARAPA'),
(261, '30203', 'APURIMAC', 'ANDAHUAYLAS', 'CHIARA', 'CHIARA'),
(262, '30204', 'APURIMAC', 'ANDAHUAYLAS', 'HUANCARAMA', 'HUANCARAMA'),
(263, '30205', 'APURIMAC', 'ANDAHUAYLAS', 'HUANCARAY', 'HUANCARAY'),
(264, '30206', 'APURIMAC', 'ANDAHUAYLAS', 'HUAYANA', 'HUAYANA'),
(265, '30207', 'APURIMAC', 'ANDAHUAYLAS', 'KISHUARA', 'KISHUARA'),
(266, '30208', 'APURIMAC', 'ANDAHUAYLAS', 'PACOBAMBA', 'PACOBAMBA'),
(267, '30209', 'APURIMAC', 'ANDAHUAYLAS', 'PACUCHA', 'PACUCHA'),
(268, '30210', 'APURIMAC', 'ANDAHUAYLAS', 'PAMPACHIRI', 'PAMPACHIRI'),
(269, '30211', 'APURIMAC', 'ANDAHUAYLAS', 'POMACOCHA', 'POMACOCHA'),
(270, '30212', 'APURIMAC', 'ANDAHUAYLAS', 'SAN ANTONIO DE CACHI', 'SAN ANTONIO DE CACHI'),
(271, '30213', 'APURIMAC', 'ANDAHUAYLAS', 'SAN JERONIMO', 'SAN JERONIMO'),
(272, '30214', 'APURIMAC', 'ANDAHUAYLAS', 'SAN MIGUEL DE CHACCRAMPA', 'CHACCRAMPA'),
(273, '30215', 'APURIMAC', 'ANDAHUAYLAS', 'SANTA MARIA DE CHICMO', 'SANTA MARIA DE CHICMO'),
(274, '30216', 'APURIMAC', 'ANDAHUAYLAS', 'TALAVERA', 'TALAVERA'),
(275, '30217', 'APURIMAC', 'ANDAHUAYLAS', 'TUMAY HUARACA', 'UMAMARCA'),
(276, '30218', 'APURIMAC', 'ANDAHUAYLAS', 'TURPO', 'TURPO'),
(277, '30219', 'APURIMAC', 'ANDAHUAYLAS', 'KAQUIABAMBA', 'KAQUIABAMBA'),
(278, '30220', 'APURIMAC', 'ANDAHUAYLAS', 'JOSE MARIA ARGUEDAS', 'HUANCABAMBA'),
(279, '30301', 'APURIMAC', 'ANTABAMBA', 'ANTABAMBA', 'ANTABAMBA'),
(280, '30302', 'APURIMAC', 'ANTABAMBA', 'EL ORO', 'AYAHUAY'),
(281, '30303', 'APURIMAC', 'ANTABAMBA', 'HUAQUIRCA', 'HUAQUIRCA'),
(282, '30304', 'APURIMAC', 'ANTABAMBA', 'JUAN ESPINOZA MEDRANO', 'MOLLEBAMBA'),
(283, '30305', 'APURIMAC', 'ANTABAMBA', 'OROPESA', 'OROPESA'),
(284, '30306', 'APURIMAC', 'ANTABAMBA', 'PACHACONAS', 'PACHACONAS'),
(285, '30307', 'APURIMAC', 'ANTABAMBA', 'SABAINO', 'SABAINO'),
(286, '30401', 'APURIMAC', 'AYMARAES', 'CHALHUANCA', 'CHALHUANCA'),
(287, '30402', 'APURIMAC', 'AYMARAES', 'CAPAYA', 'CAPAYA'),
(288, '30403', 'APURIMAC', 'AYMARAES', 'CARAYBAMBA', 'CARAYBAMBA'),
(289, '30404', 'APURIMAC', 'AYMARAES', 'CHAPIMARCA', 'CHAPIMARCA'),
(290, '30405', 'APURIMAC', 'AYMARAES', 'COLCABAMBA', 'COLCABAMBA'),
(291, '30406', 'APURIMAC', 'AYMARAES', 'COTARUSE', 'COTARUSE'),
(292, '30407', 'APURIMAC', 'AYMARAES', 'IHUAYLLO', 'IHUAYLLO'),
(293, '30408', 'APURIMAC', 'AYMARAES', 'JUSTO APU SAHUARAURA', 'PICHIHUA'),
(294, '30409', 'APURIMAC', 'AYMARAES', 'LUCRE', 'LUCRE'),
(295, '30410', 'APURIMAC', 'AYMARAES', 'POCOHUANCA', 'POCOHUANCA'),
(296, '30411', 'APURIMAC', 'AYMARAES', 'SAN JUAN DE CHACÑA', 'SAN JUAN DE CHACÑA'),
(297, '30412', 'APURIMAC', 'AYMARAES', 'SAÑAYCA', 'SAÑAYCA'),
(298, '30413', 'APURIMAC', 'AYMARAES', 'SORAYA', 'SORAYA'),
(299, '30414', 'APURIMAC', 'AYMARAES', 'TAPAIRIHUA', 'TAPAIRIHUA'),
(300, '30415', 'APURIMAC', 'AYMARAES', 'TINTAY', 'TINTAY'),
(301, '30416', 'APURIMAC', 'AYMARAES', 'TORAYA', 'TORAYA'),
(302, '30417', 'APURIMAC', 'AYMARAES', 'YANACA', 'YANACA'),
(303, '30501', 'APURIMAC', 'COTABAMBAS', 'TAMBOBAMBA', 'TAMBOBAMBA'),
(304, '30502', 'APURIMAC', 'COTABAMBAS', 'COTABAMBAS', 'COTABAMBAS'),
(305, '30503', 'APURIMAC', 'COTABAMBAS', 'COYLLURQUI', 'COYLLURQUI'),
(306, '30504', 'APURIMAC', 'COTABAMBAS', 'HAQUIRA', 'HAQUIRA'),
(307, '30505', 'APURIMAC', 'COTABAMBAS', 'MARA', 'MARA'),
(308, '30506', 'APURIMAC', 'COTABAMBAS', 'CHALLHUAHUACHO', 'CHALLHUAHUACHO'),
(309, '30601', 'APURIMAC', 'CHINCHEROS', 'CHINCHEROS', 'CHINCHEROS'),
(310, '30602', 'APURIMAC', 'CHINCHEROS', 'ANCO_HUALLO', 'URIPA'),
(311, '30603', 'APURIMAC', 'CHINCHEROS', 'COCHARCAS', 'COCHARCAS'),
(312, '30604', 'APURIMAC', 'CHINCHEROS', 'HUACCANA', 'HUACCANA'),
(313, '30605', 'APURIMAC', 'CHINCHEROS', 'OCOBAMBA', 'OCOBAMBA'),
(314, '30606', 'APURIMAC', 'CHINCHEROS', 'ONGOY', 'ONGOY'),
(315, '30607', 'APURIMAC', 'CHINCHEROS', 'URANMARCA', 'URANMARCA'),
(316, '30608', 'APURIMAC', 'CHINCHEROS', 'RANRACANCHA', 'RANRACANCHA'),
(317, '30609', 'APURIMAC', 'CHINCHEROS', 'ROCCHACC', 'ROCCHACC'),
(318, '30610', 'APURIMAC', 'CHINCHEROS', 'EL PORVENIR', 'SAN PEDRO HUAMBURQUE'),
(319, '30611', 'APURIMAC', 'CHINCHEROS', 'LOS CHANKAS', 'RIO BLANCO'),
(320, '30701', 'APURIMAC', 'GRAU', 'CHUQUIBAMBILLA', 'CHUQUIBAMBILLA'),
(321, '30702', 'APURIMAC', 'GRAU', 'CURPAHUASI', 'CURPAHUASI'),
(322, '30703', 'APURIMAC', 'GRAU', 'GAMARRA', 'PALPACACHI'),
(323, '30704', 'APURIMAC', 'GRAU', 'HUAYLLATI', 'HUAYLLATI'),
(324, '30705', 'APURIMAC', 'GRAU', 'MAMARA', 'MAMARA'),
(325, '30706', 'APURIMAC', 'GRAU', 'MICAELA BASTIDAS', 'AYRIHUANCA'),
(326, '30707', 'APURIMAC', 'GRAU', 'PATAYPAMPA', 'PATAYPAMPA'),
(327, '30708', 'APURIMAC', 'GRAU', 'PROGRESO', 'PROGRESO'),
(328, '30709', 'APURIMAC', 'GRAU', 'SAN ANTONIO', 'SAN ANTONIO'),
(329, '30710', 'APURIMAC', 'GRAU', 'SANTA ROSA', 'SANTA ROSA'),
(330, '30711', 'APURIMAC', 'GRAU', 'TURPAY', 'TURPAY'),
(331, '30712', 'APURIMAC', 'GRAU', 'VILCABAMBA', 'VILCABAMBA'),
(332, '30713', 'APURIMAC', 'GRAU', 'VIRUNDO', 'SAN JUAN DE VIRUNDO'),
(333, '30714', 'APURIMAC', 'GRAU', 'CURASCO', 'CURASCO'),
(334, '40101', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(335, '40102', 'AREQUIPA', 'AREQUIPA', 'ALTO SELVA ALEGRE', 'SELVA ALEGRE'),
(336, '40103', 'AREQUIPA', 'AREQUIPA', 'CAYMA', 'CAYMA'),
(337, '40104', 'AREQUIPA', 'AREQUIPA', 'CERRO COLORADO', 'LA LIBERTAD'),
(338, '40105', 'AREQUIPA', 'AREQUIPA', 'CHARACATO', 'CHARACATO'),
(339, '40106', 'AREQUIPA', 'AREQUIPA', 'CHIGUATA', 'CHIGUATA'),
(340, '40107', 'AREQUIPA', 'AREQUIPA', 'JACOBO HUNTER', 'JACOBO HUNTER'),
(341, '40108', 'AREQUIPA', 'AREQUIPA', 'LA JOYA', 'LA JOYA'),
(342, '40109', 'AREQUIPA', 'AREQUIPA', 'MARIANO MELGAR', 'MARIANO MELGAR'),
(343, '40110', 'AREQUIPA', 'AREQUIPA', 'MIRAFLORES', 'MIRAFLORES'),
(344, '40111', 'AREQUIPA', 'AREQUIPA', 'MOLLEBAYA', 'MOLLEBAYA'),
(345, '40112', 'AREQUIPA', 'AREQUIPA', 'PAUCARPATA', 'PAUCARPATA'),
(346, '40113', 'AREQUIPA', 'AREQUIPA', 'POCSI', 'POCSI'),
(347, '40114', 'AREQUIPA', 'AREQUIPA', 'POLOBAYA', 'POLOBAYA GRANDE'),
(348, '40115', 'AREQUIPA', 'AREQUIPA', 'QUEQUEÑA', 'QUEQUEÑA'),
(349, '40116', 'AREQUIPA', 'AREQUIPA', 'SABANDIA', 'SABANDIA'),
(350, '40117', 'AREQUIPA', 'AREQUIPA', 'SACHACA', 'SACHACA'),
(351, '40118', 'AREQUIPA', 'AREQUIPA', 'SAN JUAN DE SIGUAS', 'SAN JUAN DE SIGUAS /2'),
(352, '40119', 'AREQUIPA', 'AREQUIPA', 'SAN JUAN DE TARUCANI', 'TARUCANI'),
(353, '40120', 'AREQUIPA', 'AREQUIPA', 'SANTA ISABEL DE SIGUAS', 'SANTA ISABEL DE SIGUAS'),
(354, '40121', 'AREQUIPA', 'AREQUIPA', 'SANTA RITA DE SIGUAS', 'SANTA RITA DE SIGUAS'),
(355, '40122', 'AREQUIPA', 'AREQUIPA', 'SOCABAYA', 'SOCABAYA'),
(356, '40123', 'AREQUIPA', 'AREQUIPA', 'TIABAYA', 'TIABAYA'),
(357, '40124', 'AREQUIPA', 'AREQUIPA', 'UCHUMAYO', 'UCHUMAYO'),
(358, '40125', 'AREQUIPA', 'AREQUIPA', 'VITOR', 'VITOR'),
(359, '40126', 'AREQUIPA', 'AREQUIPA', 'YANAHUARA', 'YANAHUARA'),
(360, '40127', 'AREQUIPA', 'AREQUIPA', 'YARABAMBA', 'YARABAMBA'),
(361, '40128', 'AREQUIPA', 'AREQUIPA', 'YURA', 'YURA'),
(362, '40129', 'AREQUIPA', 'AREQUIPA', 'JOSE LUIS BUSTAMANTE Y RIVERO', 'CIUDAD SATELITE'),
(363, '40201', 'AREQUIPA', 'CAMANA', 'CAMANA', 'CAMANA'),
(364, '40202', 'AREQUIPA', 'CAMANA', 'JOSE MARIA QUIMPER', 'EL CARDO'),
(365, '40203', 'AREQUIPA', 'CAMANA', 'MARIANO NICOLAS VALCARCEL', 'URASQUI'),
(366, '40204', 'AREQUIPA', 'CAMANA', 'MARISCAL CACERES', 'SAN JOSE'),
(367, '40205', 'AREQUIPA', 'CAMANA', 'NICOLAS DE PIEROLA', 'SAN GREGORIO'),
(368, '40206', 'AREQUIPA', 'CAMANA', 'OCOÑA', 'OCOÑA'),
(369, '40207', 'AREQUIPA', 'CAMANA', 'QUILCA', 'QUILCA'),
(370, '40208', 'AREQUIPA', 'CAMANA', 'SAMUEL PASTOR', 'LA PAMPA'),
(371, '40301', 'AREQUIPA', 'CARAVELI', 'CARAVELI', 'CARAVELI'),
(372, '40302', 'AREQUIPA', 'CARAVELI', 'ACARI', 'ACARI'),
(373, '40303', 'AREQUIPA', 'CARAVELI', 'ATICO', 'ATICO'),
(374, '40304', 'AREQUIPA', 'CARAVELI', 'ATIQUIPA', 'ATIQUIPA'),
(375, '40305', 'AREQUIPA', 'CARAVELI', 'BELLA UNION', 'BELLA UNION'),
(376, '40306', 'AREQUIPA', 'CARAVELI', 'CAHUACHO', 'CAHUACHO'),
(377, '40307', 'AREQUIPA', 'CARAVELI', 'CHALA', 'CHALA'),
(378, '40308', 'AREQUIPA', 'CARAVELI', 'CHAPARRA', 'ACHANIZO'),
(379, '40309', 'AREQUIPA', 'CARAVELI', 'HUANUHUANU', 'TOCOTA'),
(380, '40310', 'AREQUIPA', 'CARAVELI', 'JAQUI', 'JAQUI'),
(381, '40311', 'AREQUIPA', 'CARAVELI', 'LOMAS', 'LOMAS'),
(382, '40312', 'AREQUIPA', 'CARAVELI', 'QUICACHA', 'QUICACHA'),
(383, '40313', 'AREQUIPA', 'CARAVELI', 'YAUCA', 'YAUCA'),
(384, '40401', 'AREQUIPA', 'CASTILLA', 'APLAO', 'APLAO'),
(385, '40402', 'AREQUIPA', 'CASTILLA', 'ANDAGUA', 'ANDAGUA'),
(386, '40403', 'AREQUIPA', 'CASTILLA', 'AYO', 'AYO'),
(387, '40404', 'AREQUIPA', 'CASTILLA', 'CHACHAS', 'CHACHAS'),
(388, '40405', 'AREQUIPA', 'CASTILLA', 'CHILCAYMARCA', 'CHILCAYMARCA'),
(389, '40406', 'AREQUIPA', 'CASTILLA', 'CHOCO', 'CHOCO'),
(390, '40407', 'AREQUIPA', 'CASTILLA', 'HUANCARQUI', 'HUANCARQUI'),
(391, '40408', 'AREQUIPA', 'CASTILLA', 'MACHAGUAY', 'MACHAGUAY'),
(392, '40409', 'AREQUIPA', 'CASTILLA', 'ORCOPAMPA', 'ORCOPAMPA'),
(393, '40410', 'AREQUIPA', 'CASTILLA', 'PAMPACOLCA', 'PAMPACOLCA'),
(394, '40411', 'AREQUIPA', 'CASTILLA', 'TIPAN', 'TIPAN'),
(395, '40412', 'AREQUIPA', 'CASTILLA', 'UÑON', 'UÑON'),
(396, '40413', 'AREQUIPA', 'CASTILLA', 'URACA', 'CORIRI'),
(397, '40414', 'AREQUIPA', 'CASTILLA', 'VIRACO', 'VIRACO'),
(398, '40501', 'AREQUIPA', 'CAYLLOMA', 'CHIVAY', 'CHIVAY'),
(399, '40502', 'AREQUIPA', 'CAYLLOMA', 'ACHOMA', 'ACHOMA'),
(400, '40503', 'AREQUIPA', 'CAYLLOMA', 'CABANACONDE', 'CABANACONDE'),
(401, '40504', 'AREQUIPA', 'CAYLLOMA', 'CALLALLI', 'CALLALLI'),
(402, '40505', 'AREQUIPA', 'CAYLLOMA', 'CAYLLOMA', 'CAYLLOMA'),
(403, '40506', 'AREQUIPA', 'CAYLLOMA', 'COPORAQUE', 'COPORAQUE'),
(404, '40507', 'AREQUIPA', 'CAYLLOMA', 'HUAMBO', 'HUAMBO'),
(405, '40508', 'AREQUIPA', 'CAYLLOMA', 'HUANCA', 'HUANCA'),
(406, '40509', 'AREQUIPA', 'CAYLLOMA', 'ICHUPAMPA', 'ICHUPAMPA'),
(407, '40510', 'AREQUIPA', 'CAYLLOMA', 'LARI', 'LARI'),
(408, '40511', 'AREQUIPA', 'CAYLLOMA', 'LLUTA', 'LLUTA'),
(409, '40512', 'AREQUIPA', 'CAYLLOMA', 'MACA', 'MACA'),
(410, '40513', 'AREQUIPA', 'CAYLLOMA', 'MADRIGAL', 'MADRIGAL'),
(411, '40514', 'AREQUIPA', 'CAYLLOMA', 'SAN ANTONIO DE CHUCA', 'SAN ANTONIO DE CHUCA /3'),
(412, '40515', 'AREQUIPA', 'CAYLLOMA', 'SIBAYO', 'SIBAYO'),
(413, '40516', 'AREQUIPA', 'CAYLLOMA', 'TAPAY', 'TAPAY'),
(414, '40517', 'AREQUIPA', 'CAYLLOMA', 'TISCO', 'TISCO'),
(415, '40518', 'AREQUIPA', 'CAYLLOMA', 'TUTI', 'TUTI'),
(416, '40519', 'AREQUIPA', 'CAYLLOMA', 'YANQUE', 'YANQUE'),
(417, '40520', 'AREQUIPA', 'CAYLLOMA', 'MAJES', 'EL PEDREGAL'),
(418, '40601', 'AREQUIPA', 'CONDESUYOS', 'CHUQUIBAMBA', 'CHUQUIBAMBA'),
(419, '40602', 'AREQUIPA', 'CONDESUYOS', 'ANDARAY', 'ANDARAY'),
(420, '40603', 'AREQUIPA', 'CONDESUYOS', 'CAYARANI', 'CAYARANI'),
(421, '40604', 'AREQUIPA', 'CONDESUYOS', 'CHICHAS', 'CHICHAS'),
(422, '40605', 'AREQUIPA', 'CONDESUYOS', 'IRAY', 'IRAY'),
(423, '40606', 'AREQUIPA', 'CONDESUYOS', 'RIO GRANDE', 'IQUIPI'),
(424, '40607', 'AREQUIPA', 'CONDESUYOS', 'SALAMANCA', 'SALAMANCA'),
(425, '40608', 'AREQUIPA', 'CONDESUYOS', 'YANAQUIHUA', 'YANAQUIHUA'),
(426, '40701', 'AREQUIPA', 'ISLAY', 'MOLLENDO', 'MOLLENDO'),
(427, '40702', 'AREQUIPA', 'ISLAY', 'COCACHACRA', 'COCACHACRA'),
(428, '40703', 'AREQUIPA', 'ISLAY', 'DEAN VALDIVIA', 'LA CURVA'),
(429, '40704', 'AREQUIPA', 'ISLAY', 'ISLAY', 'ISLAY (MATARANI)'),
(430, '40705', 'AREQUIPA', 'ISLAY', 'MEJIA', 'MEJIA'),
(431, '40706', 'AREQUIPA', 'ISLAY', 'PUNTA DE BOMBON', 'PUNTA DE BOMBON'),
(432, '40801', 'AREQUIPA', 'LA UNION', 'COTAHUASI', 'COTAHUASI'),
(433, '40802', 'AREQUIPA', 'LA UNION', 'ALCA', 'ALCA'),
(434, '40803', 'AREQUIPA', 'LA UNION', 'CHARCANA', 'CHARCANA'),
(435, '40804', 'AREQUIPA', 'LA UNION', 'HUAYNACOTAS', 'TAURISMA'),
(436, '40805', 'AREQUIPA', 'LA UNION', 'PAMPAMARCA', 'MUNGUI'),
(437, '40806', 'AREQUIPA', 'LA UNION', 'PUYCA', 'PUYCA'),
(438, '40807', 'AREQUIPA', 'LA UNION', 'QUECHUALLA', 'VELINGA'),
(439, '40808', 'AREQUIPA', 'LA UNION', 'SAYLA', 'SAYLA'),
(440, '40809', 'AREQUIPA', 'LA UNION', 'TAURIA', 'TAURIA'),
(441, '40810', 'AREQUIPA', 'LA UNION', 'TOMEPAMPA', 'TOMEPAMPA'),
(442, '40811', 'AREQUIPA', 'LA UNION', 'TORO', 'TORO'),
(443, '50101', 'AYACUCHO', 'HUAMANGA', 'AYACUCHO', 'AYACUCHO'),
(444, '50102', 'AYACUCHO', 'HUAMANGA', 'ACOCRO', 'ACOCRO'),
(445, '50103', 'AYACUCHO', 'HUAMANGA', 'ACOS VINCHOS', 'ACOS VINCHOS'),
(446, '50104', 'AYACUCHO', 'HUAMANGA', 'CARMEN ALTO', 'CARMEN ALTO'),
(447, '50105', 'AYACUCHO', 'HUAMANGA', 'CHIARA', 'CHIARA'),
(448, '50106', 'AYACUCHO', 'HUAMANGA', 'OCROS', 'OCROS'),
(449, '50107', 'AYACUCHO', 'HUAMANGA', 'PACAYCASA', 'PACAYCASA'),
(450, '50108', 'AYACUCHO', 'HUAMANGA', 'QUINUA', 'QUINUA'),
(451, '50109', 'AYACUCHO', 'HUAMANGA', 'SAN JOSE DE TICLLAS', 'TICLLAS'),
(452, '50110', 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'SAN JUAN BAUTISTA'),
(453, '50111', 'AYACUCHO', 'HUAMANGA', 'SANTIAGO DE PISCHA', 'SAN PEDRO DE CACHI'),
(454, '50112', 'AYACUCHO', 'HUAMANGA', 'SOCOS', 'SOCOS'),
(455, '50113', 'AYACUCHO', 'HUAMANGA', 'TAMBILLO', 'TAMBILLO'),
(456, '50114', 'AYACUCHO', 'HUAMANGA', 'VINCHOS', 'VINCHOS'),
(457, '50115', 'AYACUCHO', 'HUAMANGA', 'JESUS NAZARENO', 'LAS NAZARENAS'),
(458, '50116', 'AYACUCHO', 'HUAMANGA', 'ANDRES AVELINO CACERES DORREGARAY', 'JARDIN'),
(459, '50201', 'AYACUCHO', 'CANGALLO', 'CANGALLO', 'CANGALLO'),
(460, '50202', 'AYACUCHO', 'CANGALLO', 'CHUSCHI', 'CHUSCHI'),
(461, '50203', 'AYACUCHO', 'CANGALLO', 'LOS MOROCHUCOS', 'PAMPA-CANGALLO'),
(462, '50204', 'AYACUCHO', 'CANGALLO', 'MARIA PARADO DE BELLIDO', 'POMABAMBA'),
(463, '50205', 'AYACUCHO', 'CANGALLO', 'PARAS', 'PARAS'),
(464, '50206', 'AYACUCHO', 'CANGALLO', 'TOTOS', 'TOTOS'),
(465, '50301', 'AYACUCHO', 'HUANCA SANCOS', 'SANCOS', 'HUANCA SANCOS'),
(466, '50302', 'AYACUCHO', 'HUANCA SANCOS', 'CARAPO', 'CARAPO'),
(467, '50303', 'AYACUCHO', 'HUANCA SANCOS', 'SACSAMARCA', 'SACSAMARCA'),
(468, '50304', 'AYACUCHO', 'HUANCA SANCOS', 'SANTIAGO DE LUCANAMARCA', 'SANTIAGO DE LUCANAMARCA'),
(469, '50401', 'AYACUCHO', 'HUANTA', 'HUANTA', 'HUANTA'),
(470, '50402', 'AYACUCHO', 'HUANTA', 'AYAHUANCO', 'VIRACOCHAN'),
(471, '50403', 'AYACUCHO', 'HUANTA', 'HUAMANGUILLA', 'HUAMANGUILLA'),
(472, '50404', 'AYACUCHO', 'HUANTA', 'IGUAIN', 'MACACHACRA'),
(473, '50405', 'AYACUCHO', 'HUANTA', 'LURICOCHA', 'LURICOCHA'),
(474, '50406', 'AYACUCHO', 'HUANTA', 'SANTILLANA', 'SAN JOSE DE SECCE'),
(475, '50407', 'AYACUCHO', 'HUANTA', 'SIVIA', 'SIVIA'),
(476, '50408', 'AYACUCHO', 'HUANTA', 'LLOCHEGUA', 'LLOCHEGUA'),
(477, '50409', 'AYACUCHO', 'HUANTA', 'CANAYRE', 'CANAYRE'),
(478, '50410', 'AYACUCHO', 'HUANTA', 'UCHURACCAY', 'HUAYNACANCHA'),
(479, '50411', 'AYACUCHO', 'HUANTA', 'PUCACOLPA', 'HUALLHUA'),
(480, '50412', 'AYACUCHO', 'HUANTA', 'CHACA', 'CHACA'),
(481, '50501', 'AYACUCHO', 'LA MAR', 'SAN MIGUEL', 'SAN MIGUEL'),
(482, '50502', 'AYACUCHO', 'LA MAR', 'ANCO', 'CHIQUINTIRCA'),
(483, '50503', 'AYACUCHO', 'LA MAR', 'AYNA', 'SAN FRANCISCO'),
(484, '50504', 'AYACUCHO', 'LA MAR', 'CHILCAS', 'CHILCAS'),
(485, '50505', 'AYACUCHO', 'LA MAR', 'CHUNGUI', 'CHUNGUI'),
(486, '50506', 'AYACUCHO', 'LA MAR', 'LUIS CARRANZA', 'PAMPAS'),
(487, '50507', 'AYACUCHO', 'LA MAR', 'SANTA ROSA', 'SANTA ROSA'),
(488, '50508', 'AYACUCHO', 'LA MAR', 'TAMBO', 'TAMBO'),
(489, '50509', 'AYACUCHO', 'LA MAR', 'SAMUGARI', 'PALMAPAMPA'),
(490, '50510', 'AYACUCHO', 'LA MAR', 'ANCHIHUAY', 'ANCHIHUAY'),
(491, '50511', 'AYACUCHO', 'LA MAR', 'ORONCCOY', 'ORONCCOY'),
(492, '50601', 'AYACUCHO', 'LUCANAS', 'PUQUIO', 'PUQUIO'),
(493, '50602', 'AYACUCHO', 'LUCANAS', 'AUCARA', 'AUCARA'),
(494, '50603', 'AYACUCHO', 'LUCANAS', 'CABANA', 'CABANA'),
(495, '50604', 'AYACUCHO', 'LUCANAS', 'CARMEN SALCEDO', 'ANDAMARCA'),
(496, '50605', 'AYACUCHO', 'LUCANAS', 'CHAVIÑA', 'CHAVIÑA'),
(497, '50606', 'AYACUCHO', 'LUCANAS', 'CHIPAO', 'CHIPAO'),
(498, '50607', 'AYACUCHO', 'LUCANAS', 'HUAC-HUAS', 'HUAC-HUAS'),
(499, '50608', 'AYACUCHO', 'LUCANAS', 'LARAMATE', 'LARAMATE'),
(500, '50609', 'AYACUCHO', 'LUCANAS', 'LEONCIO PRADO', 'TAMBO QUEMADO'),
(501, '50610', 'AYACUCHO', 'LUCANAS', 'LLAUTA', 'LLAUTA'),
(502, '50611', 'AYACUCHO', 'LUCANAS', 'LUCANAS', 'LUCANAS'),
(503, '50612', 'AYACUCHO', 'LUCANAS', 'OCAÑA', 'OCAÑA'),
(504, '50613', 'AYACUCHO', 'LUCANAS', 'OTOCA', 'OTOCA'),
(505, '50614', 'AYACUCHO', 'LUCANAS', 'SAISA', 'SAISA'),
(506, '50615', 'AYACUCHO', 'LUCANAS', 'SAN CRISTOBAL', 'SAN CRISTOBAL'),
(507, '50616', 'AYACUCHO', 'LUCANAS', 'SAN JUAN', 'SAN JUAN'),
(508, '50617', 'AYACUCHO', 'LUCANAS', 'SAN PEDRO', 'SAN PEDRO'),
(509, '50618', 'AYACUCHO', 'LUCANAS', 'SAN PEDRO DE PALCO', 'SAN PEDRO DE PALCO'),
(510, '50619', 'AYACUCHO', 'LUCANAS', 'SANCOS', 'SANCOS'),
(511, '50620', 'AYACUCHO', 'LUCANAS', 'SANTA ANA DE HUAYCAHUACHO', 'SANTA ANA DE HUAYCAHUACHO'),
(512, '50621', 'AYACUCHO', 'LUCANAS', 'SANTA LUCIA', 'SANTA LUCIA'),
(513, '50701', 'AYACUCHO', 'PARINACOCHAS', 'CORACORA', 'CORACORA'),
(514, '50702', 'AYACUCHO', 'PARINACOCHAS', 'CHUMPI', 'CHUMPI'),
(515, '50703', 'AYACUCHO', 'PARINACOCHAS', 'CORONEL CASTAÑEDA', 'ANISO'),
(516, '50704', 'AYACUCHO', 'PARINACOCHAS', 'PACAPAUSA', 'PACAPAUSA'),
(517, '50705', 'AYACUCHO', 'PARINACOCHAS', 'PULLO', 'PULLO'),
(518, '50706', 'AYACUCHO', 'PARINACOCHAS', 'PUYUSCA', 'INCUYO'),
(519, '50707', 'AYACUCHO', 'PARINACOCHAS', 'SAN FRANCISCO DE RAVACAYCO', 'SAN FRANCISCO DE RAVACAYCO'),
(520, '50708', 'AYACUCHO', 'PARINACOCHAS', 'UPAHUACHO', 'UPAHUACHO'),
(521, '50801', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'PAUSA', 'PAUSA'),
(522, '50802', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'COLTA', 'COLTA'),
(523, '50803', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'CORCULLA', 'CORCULLA'),
(524, '50804', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'LAMPA', 'LAMPA'),
(525, '50805', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'MARCABAMBA', 'MARCABAMBA'),
(526, '50806', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'OYOLO', 'OYOLO'),
(527, '50807', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'PARARCA', 'PARARCA'),
(528, '50808', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'SAN JAVIER DE ALPABAMBA', 'SAN JAVIER DE ALPABAMBA'),
(529, '50809', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'SAN JOSE DE USHUA', 'SAN JOSE DE USHUA'),
(530, '50810', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'SARA SARA', 'QUILCATA'),
(531, '50901', 'AYACUCHO', 'SUCRE', 'QUEROBAMBA', 'QUEROBAMBA'),
(532, '50902', 'AYACUCHO', 'SUCRE', 'BELEN', 'BELEN'),
(533, '50903', 'AYACUCHO', 'SUCRE', 'CHALCOS', 'CHALCOS'),
(534, '50904', 'AYACUCHO', 'SUCRE', 'CHILCAYOC', 'CHILCAYOC'),
(535, '50905', 'AYACUCHO', 'SUCRE', 'HUACAÑA', 'HUACAÑA'),
(536, '50906', 'AYACUCHO', 'SUCRE', 'MORCOLLA', 'MORCOLLA'),
(537, '50907', 'AYACUCHO', 'SUCRE', 'PAICO', 'PAICO'),
(538, '50908', 'AYACUCHO', 'SUCRE', 'SAN PEDRO DE LARCAY', 'SAN PEDRO DE LARCAY'),
(539, '50909', 'AYACUCHO', 'SUCRE', 'SAN SALVADOR DE QUIJE', 'SAN SALVADOR DE QUIJE'),
(540, '50910', 'AYACUCHO', 'SUCRE', 'SANTIAGO DE PAUCARAY', 'SANTIAGO DE PAUCARAY'),
(541, '50911', 'AYACUCHO', 'SUCRE', 'SORAS', 'SORAS'),
(542, '51001', 'AYACUCHO', 'VICTOR FAJARDO', 'HUANCAPI', 'HUANCAPI'),
(543, '51002', 'AYACUCHO', 'VICTOR FAJARDO', 'ALCAMENCA', 'ALCAMENCA'),
(544, '51003', 'AYACUCHO', 'VICTOR FAJARDO', 'APONGO', 'APONGO'),
(545, '51004', 'AYACUCHO', 'VICTOR FAJARDO', 'ASQUIPATA', 'ASQUIPATA'),
(546, '51005', 'AYACUCHO', 'VICTOR FAJARDO', 'CANARIA', 'CANARIA'),
(547, '51006', 'AYACUCHO', 'VICTOR FAJARDO', 'CAYARA', 'CAYARA'),
(548, '51007', 'AYACUCHO', 'VICTOR FAJARDO', 'COLCA', 'COLCA'),
(549, '51008', 'AYACUCHO', 'VICTOR FAJARDO', 'HUAMANQUIQUIA', 'HUAMANQUIQUIA'),
(550, '51009', 'AYACUCHO', 'VICTOR FAJARDO', 'HUANCARAYLLA', 'HUANCARAYLLA'),
(551, '51010', 'AYACUCHO', 'VICTOR FAJARDO', 'HUALLA', 'SAN PEDRO DE HUALLA'),
(552, '51011', 'AYACUCHO', 'VICTOR FAJARDO', 'SARHUA', 'SARHUA'),
(553, '51012', 'AYACUCHO', 'VICTOR FAJARDO', 'VILCANCHOS', 'VILCANCHOS'),
(554, '51101', 'AYACUCHO', 'VILCAS HUAMAN', 'VILCAS HUAMAN', 'VILCAS HUAMAN'),
(555, '51102', 'AYACUCHO', 'VILCAS HUAMAN', 'ACCOMARCA', 'ACCOMARCA'),
(556, '51103', 'AYACUCHO', 'VILCAS HUAMAN', 'CARHUANCA', 'CARHUANCA'),
(557, '51104', 'AYACUCHO', 'VILCAS HUAMAN', 'CONCEPCION', 'CONCEPCION'),
(558, '51105', 'AYACUCHO', 'VILCAS HUAMAN', 'HUAMBALPA', 'HUAMBALPA'),
(559, '51106', 'AYACUCHO', 'VILCAS HUAMAN', 'INDEPENDENCIA', 'PACCHA HUALLHUA /4'),
(560, '51107', 'AYACUCHO', 'VILCAS HUAMAN', 'SAURAMA', 'SAURAMA'),
(561, '51108', 'AYACUCHO', 'VILCAS HUAMAN', 'VISCHONGO', 'VISCHONGO'),
(562, '60101', 'CAJAMARCA', 'CAJAMARCA', 'CAJAMARCA', 'CAJAMARCA'),
(563, '60102', 'CAJAMARCA', 'CAJAMARCA', 'ASUNCION', 'ASUNCION'),
(564, '60103', 'CAJAMARCA', 'CAJAMARCA', 'CHETILLA', 'CHETILLA'),
(565, '60104', 'CAJAMARCA', 'CAJAMARCA', 'COSPAN', 'COSPAN'),
(566, '60105', 'CAJAMARCA', 'CAJAMARCA', 'ENCAÑADA', 'ENCAÑADA'),
(567, '60106', 'CAJAMARCA', 'CAJAMARCA', 'JESUS', 'JESUS'),
(568, '60107', 'CAJAMARCA', 'CAJAMARCA', 'LLACANORA', 'LLACANORA'),
(569, '60108', 'CAJAMARCA', 'CAJAMARCA', 'LOS BAÑOS DEL INCA', 'LOS BAÑOS DEL INCA'),
(570, '60109', 'CAJAMARCA', 'CAJAMARCA', 'MAGDALENA', 'MAGDALENA'),
(571, '60110', 'CAJAMARCA', 'CAJAMARCA', 'MATARA', 'MATARA'),
(572, '60111', 'CAJAMARCA', 'CAJAMARCA', 'NAMORA', 'NAMORA'),
(573, '60112', 'CAJAMARCA', 'CAJAMARCA', 'SAN JUAN', 'SAN JUAN'),
(574, '60201', 'CAJAMARCA', 'CAJABAMBA', 'CAJABAMBA', 'CAJABAMBA'),
(575, '60202', 'CAJAMARCA', 'CAJABAMBA', 'CACHACHI', 'CACHACHI'),
(576, '60203', 'CAJAMARCA', 'CAJABAMBA', 'CONDEBAMBA', 'CAUDAY'),
(577, '60204', 'CAJAMARCA', 'CAJABAMBA', 'SITACOCHA', 'LLUCHUBAMBA'),
(578, '60301', 'CAJAMARCA', 'CELENDIN', 'CELENDIN', 'CELENDIN'),
(579, '60302', 'CAJAMARCA', 'CELENDIN', 'CHUMUCH', 'CHUMUCH'),
(580, '60303', 'CAJAMARCA', 'CELENDIN', 'CORTEGANA', 'CHIMUCH (CORTEGANA)'),
(581, '60304', 'CAJAMARCA', 'CELENDIN', 'HUASMIN', 'HUASMIN'),
(582, '60305', 'CAJAMARCA', 'CELENDIN', 'JORGE CHAVEZ', 'LUCMAPAMPA'),
(583, '60306', 'CAJAMARCA', 'CELENDIN', 'JOSE GALVEZ', 'HUACAPAMPA'),
(584, '60307', 'CAJAMARCA', 'CELENDIN', 'MIGUEL IGLESIAS', 'CHALAN'),
(585, '60308', 'CAJAMARCA', 'CELENDIN', 'OXAMARCA', 'OXAMARCA'),
(586, '60309', 'CAJAMARCA', 'CELENDIN', 'SOROCHUCO', 'SOROCHUCO'),
(587, '60310', 'CAJAMARCA', 'CELENDIN', 'SUCRE', 'SUCRE'),
(588, '60311', 'CAJAMARCA', 'CELENDIN', 'UTCO', 'UTCO'),
(589, '60312', 'CAJAMARCA', 'CELENDIN', 'LA LIBERTAD DE PALLAN', 'LA LIBERTAD DE PALLAN'),
(590, '60401', 'CAJAMARCA', 'CHOTA', 'CHOTA', 'CHOTA'),
(591, '60402', 'CAJAMARCA', 'CHOTA', 'ANGUIA', 'ANGUIA'),
(592, '60403', 'CAJAMARCA', 'CHOTA', 'CHADIN', 'CHADIN'),
(593, '60404', 'CAJAMARCA', 'CHOTA', 'CHIGUIRIP', 'CHIGUIRIP'),
(594, '60405', 'CAJAMARCA', 'CHOTA', 'CHIMBAN', 'CHIMBAN'),
(595, '60406', 'CAJAMARCA', 'CHOTA', 'CHOROPAMPA', 'CHOROPAMPA'),
(596, '60407', 'CAJAMARCA', 'CHOTA', 'COCHABAMBA', 'COCHABAMBA'),
(597, '60408', 'CAJAMARCA', 'CHOTA', 'CONCHAN', 'CONCHAN'),
(598, '60409', 'CAJAMARCA', 'CHOTA', 'HUAMBOS', 'HUAMBOS'),
(599, '60410', 'CAJAMARCA', 'CHOTA', 'LAJAS', 'LAJAS'),
(600, '60411', 'CAJAMARCA', 'CHOTA', 'LLAMA', 'LLAMA'),
(601, '60412', 'CAJAMARCA', 'CHOTA', 'MIRACOSTA', 'MIRACOSTA'),
(602, '60413', 'CAJAMARCA', 'CHOTA', 'PACCHA', 'PACCHA'),
(603, '60414', 'CAJAMARCA', 'CHOTA', 'PION', 'PION'),
(604, '60415', 'CAJAMARCA', 'CHOTA', 'QUEROCOTO', 'QUEROCOTO'),
(605, '60416', 'CAJAMARCA', 'CHOTA', 'SAN JUAN DE LICUPIS', 'LICUPIS'),
(606, '60417', 'CAJAMARCA', 'CHOTA', 'TACABAMBA', 'TACABAMBA'),
(607, '60418', 'CAJAMARCA', 'CHOTA', 'TOCMOCHE', 'TOCMOCHE'),
(608, '60419', 'CAJAMARCA', 'CHOTA', 'CHALAMARCA', 'CHALAMARCA'),
(609, '60501', 'CAJAMARCA', 'CONTUMAZA', 'CONTUMAZA', 'CONTUMAZA'),
(610, '60502', 'CAJAMARCA', 'CONTUMAZA', 'CHILETE', 'CHILETE'),
(611, '60503', 'CAJAMARCA', 'CONTUMAZA', 'CUPISNIQUE', 'TRINIDAD'),
(612, '60504', 'CAJAMARCA', 'CONTUMAZA', 'GUZMANGO', 'GUZMANGO'),
(613, '60505', 'CAJAMARCA', 'CONTUMAZA', 'SAN BENITO', 'SAN BENITO'),
(614, '60506', 'CAJAMARCA', 'CONTUMAZA', 'SANTA CRUZ DE TOLED', 'SANTA CRUZ DE TOLED'),
(615, '60507', 'CAJAMARCA', 'CONTUMAZA', 'TANTARICA', 'CATAN'),
(616, '60508', 'CAJAMARCA', 'CONTUMAZA', 'YONAN', 'TEMBLADERA'),
(617, '60601', 'CAJAMARCA', 'CUTERVO', 'CUTERVO', 'CUTERVO'),
(618, '60602', 'CAJAMARCA', 'CUTERVO', 'CALLAYUC', 'CALLAYUC'),
(619, '60603', 'CAJAMARCA', 'CUTERVO', 'CHOROS', 'CHOROS'),
(620, '60604', 'CAJAMARCA', 'CUTERVO', 'CUJILLO', 'CUJILLO'),
(621, '60605', 'CAJAMARCA', 'CUTERVO', 'LA RAMADA', 'LA RAMADA'),
(622, '60606', 'CAJAMARCA', 'CUTERVO', 'PIMPINGOS', 'PIMPINGOS'),
(623, '60607', 'CAJAMARCA', 'CUTERVO', 'QUEROCOTILLO', 'QUEROCOTILLO'),
(624, '60608', 'CAJAMARCA', 'CUTERVO', 'SAN ANDRES DE CUTERVO', 'SAN ANDRES DE CUTERVO'),
(625, '60609', 'CAJAMARCA', 'CUTERVO', 'SAN JUAN DE CUTERVO', 'SAN JUAN DE CUTERVO'),
(626, '60610', 'CAJAMARCA', 'CUTERVO', 'SAN LUIS DE LUCMA', 'SAN LUIS DE LUCMA'),
(627, '60611', 'CAJAMARCA', 'CUTERVO', 'SANTA CRUZ', 'SANTA CRUZ'),
(628, '60612', 'CAJAMARCA', 'CUTERVO', 'SANTO DOMINGO DE LA CAPILLA', 'SANTO DOMINGO DE LA CAPILLA'),
(629, '60613', 'CAJAMARCA', 'CUTERVO', 'SANTO TOMAS', 'SANTO TOMAS'),
(630, '60614', 'CAJAMARCA', 'CUTERVO', 'SOCOTA', 'SOCOTA'),
(631, '60615', 'CAJAMARCA', 'CUTERVO', 'TORIBIO CASANOVA', 'LA SACILIA'),
(632, '60701', 'CAJAMARCA', 'HUALGAYOC', 'BAMBAMARCA', 'BAMBAMARCA'),
(633, '60702', 'CAJAMARCA', 'HUALGAYOC', 'CHUGUR', 'CHUGUR'),
(634, '60703', 'CAJAMARCA', 'HUALGAYOC', 'HUALGAYOC', 'HUALGAYOC'),
(635, '60801', 'CAJAMARCA', 'JAEN', 'JAEN', 'JAEN'),
(636, '60802', 'CAJAMARCA', 'JAEN', 'BELLAVISTA', 'BELLAVISTA'),
(637, '60803', 'CAJAMARCA', 'JAEN', 'CHONTALI', 'CHONTALI'),
(638, '60804', 'CAJAMARCA', 'JAEN', 'COLASAY', 'COLASAY'),
(639, '60805', 'CAJAMARCA', 'JAEN', 'HUABAL', 'HUABAL'),
(640, '60806', 'CAJAMARCA', 'JAEN', 'LAS PIRIAS', 'LAS PIRIAS'),
(641, '60807', 'CAJAMARCA', 'JAEN', 'POMAHUACA', 'POMAHUACA'),
(642, '60808', 'CAJAMARCA', 'JAEN', 'PUCARA', 'PUCARA'),
(643, '60809', 'CAJAMARCA', 'JAEN', 'SALLIQUE', 'SALLIQUE'),
(644, '60810', 'CAJAMARCA', 'JAEN', 'SAN FELIPE', 'SAN FELIPE'),
(645, '60811', 'CAJAMARCA', 'JAEN', 'SAN JOSE DEL ALTO', 'SAN JOSE DEL ALTO'),
(646, '60812', 'CAJAMARCA', 'JAEN', 'SANTA ROSA', 'SANTA ROSA'),
(647, '60901', 'CAJAMARCA', 'SAN IGNACIO', 'SAN IGNACIO', 'SAN IGNACIO'),
(648, '60902', 'CAJAMARCA', 'SAN IGNACIO', 'CHIRINOS', 'CHIRINOS'),
(649, '60903', 'CAJAMARCA', 'SAN IGNACIO', 'HUARANGO', 'HUARANGO'),
(650, '60904', 'CAJAMARCA', 'SAN IGNACIO', 'LA COIPA', 'LA COIPA'),
(651, '60905', 'CAJAMARCA', 'SAN IGNACIO', 'NAMBALLE', 'NAMBALLE'),
(652, '60906', 'CAJAMARCA', 'SAN IGNACIO', 'SAN JOSE DE LOURDES', 'SAN JOSE DE LOURDES'),
(653, '60907', 'CAJAMARCA', 'SAN IGNACIO', 'TABACONAS', 'TABACONAS'),
(654, '61001', 'CAJAMARCA', 'SAN MARCOS', 'PEDRO GALVEZ', 'SAN MARCOS'),
(655, '61002', 'CAJAMARCA', 'SAN MARCOS', 'CHANCAY', 'CHANCAY'),
(656, '61003', 'CAJAMARCA', 'SAN MARCOS', 'EDUARDO VILLANUEVA', 'LA GRAMA'),
(657, '61004', 'CAJAMARCA', 'SAN MARCOS', 'GREGORIO PITA', 'PAUCAMARCA'),
(658, '61005', 'CAJAMARCA', 'SAN MARCOS', 'ICHOCAN', 'ICHOCAN'),
(659, '61006', 'CAJAMARCA', 'SAN MARCOS', 'JOSE MANUEL QUIROZ', 'SHIRAC'),
(660, '61007', 'CAJAMARCA', 'SAN MARCOS', 'JOSE SABOGAL', 'VENECIA'),
(661, '61101', 'CAJAMARCA', 'SAN MIGUEL', 'SAN MIGUEL', 'SAN MIGUEL DE PALLAQUES'),
(662, '61102', 'CAJAMARCA', 'SAN MIGUEL', 'BOLIVAR', 'BOLIVAR'),
(663, '61103', 'CAJAMARCA', 'SAN MIGUEL', 'CALQUIS', 'CALQUIS'),
(664, '61104', 'CAJAMARCA', 'SAN MIGUEL', 'CATILLUC', 'CATILLUC'),
(665, '61105', 'CAJAMARCA', 'SAN MIGUEL', 'EL PRADO', 'EL PRADO'),
(666, '61106', 'CAJAMARCA', 'SAN MIGUEL', 'LA FLORIDA', 'LA FLORIDA'),
(667, '61107', 'CAJAMARCA', 'SAN MIGUEL', 'LLAPA', 'LLAPA'),
(668, '61108', 'CAJAMARCA', 'SAN MIGUEL', 'NANCHOC', 'NANCHOC'),
(669, '61109', 'CAJAMARCA', 'SAN MIGUEL', 'NIEPOS', 'NIEPOS'),
(670, '61110', 'CAJAMARCA', 'SAN MIGUEL', 'SAN GREGORIO', 'SAN GREGORIO'),
(671, '61111', 'CAJAMARCA', 'SAN MIGUEL', 'SAN SILVESTRE DE COCHAN', 'SAN SILVESTRE DE COCHAN'),
(672, '61112', 'CAJAMARCA', 'SAN MIGUEL', 'TONGOD', 'TONGOD'),
(673, '61113', 'CAJAMARCA', 'SAN MIGUEL', 'UNION AGUA BLANCA', 'AGUA BLANCA'),
(674, '61201', 'CAJAMARCA', 'SAN PABLO', 'SAN PABLO', 'SAN PABLO'),
(675, '61202', 'CAJAMARCA', 'SAN PABLO', 'SAN BERNARDINO', 'SAN BERNARDINO'),
(676, '61203', 'CAJAMARCA', 'SAN PABLO', 'SAN LUIS', 'SAN LUIS GRANDE'),
(677, '61204', 'CAJAMARCA', 'SAN PABLO', 'TUMBADEN', 'TUMBADEN'),
(678, '61301', 'CAJAMARCA', 'SANTA CRUZ', 'SANTA CRUZ', 'SANTA CRUZ DE SUCCHABAMBA'),
(679, '61302', 'CAJAMARCA', 'SANTA CRUZ', 'ANDABAMBA', 'ANDABAMBA'),
(680, '61303', 'CAJAMARCA', 'SANTA CRUZ', 'CATACHE', 'CATACHE'),
(681, '61304', 'CAJAMARCA', 'SANTA CRUZ', 'CHANCAYBAÑOS', 'CHANCAYBAÑOS'),
(682, '61305', 'CAJAMARCA', 'SANTA CRUZ', 'LA ESPERANZA', 'LA ESPERANZA'),
(683, '61306', 'CAJAMARCA', 'SANTA CRUZ', 'NINABAMBA', 'NINABAMBA'),
(684, '61307', 'CAJAMARCA', 'SANTA CRUZ', 'PULAN', 'PULAN'),
(685, '61308', 'CAJAMARCA', 'SANTA CRUZ', 'SAUCEPAMPA', 'SAUCEPAMPA'),
(686, '61309', 'CAJAMARCA', 'SANTA CRUZ', 'SEXI', 'SEXI'),
(687, '61310', 'CAJAMARCA', 'SANTA CRUZ', 'UTICYACU', 'UTICYACU'),
(688, '61311', 'CAJAMARCA', 'SANTA CRUZ', 'YAUYUCAN', 'YAUYUCAN'),
(689, '70101', 'CALLAO', 'CALLAO', 'CALLAO', 'CALLAO'),
(690, '70102', 'CALLAO', 'CALLAO', 'BELLAVISTA', 'BELLAVISTA'),
(691, '70103', 'CALLAO', 'CALLAO', 'CARMEN DE LA LEGUA REYNOSO', 'CARMEN DE LA LEGUA REYNOSO'),
(692, '70104', 'CALLAO', 'CALLAO', 'LA PERLA', 'LA PERLA'),
(693, '70105', 'CALLAO', 'CALLAO', 'LA PUNTA', 'LA PUNTA'),
(694, '70106', 'CALLAO', 'CALLAO', 'VENTANILLA', 'VENTANILLA'),
(695, '70107', 'CALLAO', 'CALLAO', 'MI PERU', 'MI PERU'),
(696, '80101', 'CUSCO', 'CUSCO', 'CUSCO', 'CUSCO'),
(697, '80102', 'CUSCO', 'CUSCO', 'CCORCA', 'CCORCA'),
(698, '80103', 'CUSCO', 'CUSCO', 'POROY', 'POROY'),
(699, '80104', 'CUSCO', 'CUSCO', 'SAN JERONIMO', 'SAN JERONIMO'),
(700, '80105', 'CUSCO', 'CUSCO', 'SAN SEBASTIAN', 'SAN SEBASTIAN'),
(701, '80106', 'CUSCO', 'CUSCO', 'SANTIAGO', 'SANTIAGO'),
(702, '80107', 'CUSCO', 'CUSCO', 'SAYLLA', 'SAYLLA'),
(703, '80108', 'CUSCO', 'CUSCO', 'WANCHAQ', 'WANCHAQ'),
(704, '80201', 'CUSCO', 'ACOMAYO', 'ACOMAYO', 'ACOMAYO'),
(705, '80202', 'CUSCO', 'ACOMAYO', 'ACOPIA', 'ACOPIA'),
(706, '80203', 'CUSCO', 'ACOMAYO', 'ACOS', 'ACOS'),
(707, '80204', 'CUSCO', 'ACOMAYO', 'MOSOC LLACTA', 'MOSOC LLACTA'),
(708, '80205', 'CUSCO', 'ACOMAYO', 'POMACANCHI', 'POMACANCHI'),
(709, '80206', 'CUSCO', 'ACOMAYO', 'RONDOCAN', 'RONDOCAN'),
(710, '80207', 'CUSCO', 'ACOMAYO', 'SANGARARA', 'SANGARARA'),
(711, '80301', 'CUSCO', 'ANTA', 'ANTA', 'ANTA'),
(712, '80302', 'CUSCO', 'ANTA', 'ANCAHUASI', 'ANCAHUASI'),
(713, '80303', 'CUSCO', 'ANTA', 'CACHIMAYO', 'CACHIMAYO'),
(714, '80304', 'CUSCO', 'ANTA', 'CHINCHAYPUJIO', 'CHINCHAYPUJIO'),
(715, '80305', 'CUSCO', 'ANTA', 'HUAROCONDO', 'HUAROCONDO'),
(716, '80306', 'CUSCO', 'ANTA', 'LIMATAMBO', 'LIMATAMBO'),
(717, '80307', 'CUSCO', 'ANTA', 'MOLLEPATA', 'MOLLEPATA'),
(718, '80308', 'CUSCO', 'ANTA', 'PUCYURA', 'PUCYURA'),
(719, '80309', 'CUSCO', 'ANTA', 'ZURITE', 'ZURITE'),
(720, '80401', 'CUSCO', 'CALCA', 'CALCA', 'CALCA'),
(721, '80402', 'CUSCO', 'CALCA', 'COYA', 'COYA'),
(722, '80403', 'CUSCO', 'CALCA', 'LAMAY', 'LAMAY'),
(723, '80404', 'CUSCO', 'CALCA', 'LARES', 'LARES'),
(724, '80405', 'CUSCO', 'CALCA', 'PISAC', 'PISAC'),
(725, '80406', 'CUSCO', 'CALCA', 'SAN SALVADOR', 'SAN SALVADOR'),
(726, '80407', 'CUSCO', 'CALCA', 'TARAY', 'TARAY'),
(727, '80408', 'CUSCO', 'CALCA', 'YANATILE', 'QUEBRADA HONDA'),
(728, '80501', 'CUSCO', 'CANAS', 'YANAOCA', 'YANAOCA'),
(729, '80502', 'CUSCO', 'CANAS', 'CHECCA', 'CHECCA'),
(730, '80503', 'CUSCO', 'CANAS', 'KUNTURKANKI', 'EL DESCANSO'),
(731, '80504', 'CUSCO', 'CANAS', 'LANGUI', 'LANGUI'),
(732, '80505', 'CUSCO', 'CANAS', 'LAYO', 'LAYO'),
(733, '80506', 'CUSCO', 'CANAS', 'PAMPAMARCA', 'PAMPAMARCA'),
(734, '80507', 'CUSCO', 'CANAS', 'QUEHUE', 'QUEHUE'),
(735, '80508', 'CUSCO', 'CANAS', 'TUPAC AMARU', 'TUNGASUCA'),
(736, '80601', 'CUSCO', 'CANCHIS', 'SICUANI', 'SICUANI'),
(737, '80602', 'CUSCO', 'CANCHIS', 'CHECACUPE', 'CHECACUPE'),
(738, '80603', 'CUSCO', 'CANCHIS', 'COMBAPATA', 'COMBAPATA'),
(739, '80604', 'CUSCO', 'CANCHIS', 'MARANGANI', 'MARANGANI'),
(740, '80605', 'CUSCO', 'CANCHIS', 'PITUMARCA', 'PITUMARCA'),
(741, '80606', 'CUSCO', 'CANCHIS', 'SAN PABLO', 'SAN PABLO'),
(742, '80607', 'CUSCO', 'CANCHIS', 'SAN PEDRO', 'SAN PEDRO'),
(743, '80608', 'CUSCO', 'CANCHIS', 'TINTA', 'TINTA'),
(744, '80701', 'CUSCO', 'CHUMBIVILCAS', 'SANTO TOMAS', 'SANTO TOMAS'),
(745, '80702', 'CUSCO', 'CHUMBIVILCAS', 'CAPACMARCA', 'CAPACMARCA'),
(746, '80703', 'CUSCO', 'CHUMBIVILCAS', 'CHAMACA', 'CHAMACA'),
(747, '80704', 'CUSCO', 'CHUMBIVILCAS', 'COLQUEMARCA', 'COLQUEMARCA'),
(748, '80705', 'CUSCO', 'CHUMBIVILCAS', 'LIVITACA', 'LIVITACA'),
(749, '80706', 'CUSCO', 'CHUMBIVILCAS', 'LLUSCO', 'LLUSCO'),
(750, '80707', 'CUSCO', 'CHUMBIVILCAS', 'QUIÑOTA', 'QUIÑOTA'),
(751, '80708', 'CUSCO', 'CHUMBIVILCAS', 'VELILLE', 'VELILLE'),
(752, '80801', 'CUSCO', 'ESPINAR', 'ESPINAR', 'YAURI'),
(753, '80802', 'CUSCO', 'ESPINAR', 'CONDOROMA', 'CONDOROMA'),
(754, '80803', 'CUSCO', 'ESPINAR', 'COPORAQUE', 'COPORAQUE'),
(755, '80804', 'CUSCO', 'ESPINAR', 'OCORURO', 'OCORURO'),
(756, '80805', 'CUSCO', 'ESPINAR', 'PALLPATA', 'HECTOR TEJADA'),
(757, '80806', 'CUSCO', 'ESPINAR', 'PICHIGUA', 'PICHIGUA'),
(758, '80807', 'CUSCO', 'ESPINAR', 'SUYCKUTAMBO', 'SUYCKUTAMBO /5'),
(759, '80808', 'CUSCO', 'ESPINAR', 'ALTO PICHIGUA', 'ACCOCUNCA'),
(760, '80901', 'CUSCO', 'LA CONVENCION', 'SANTA ANA', 'QUILLABAMBA'),
(761, '80902', 'CUSCO', 'LA CONVENCION', 'ECHARATE', 'ECHARATE'),
(762, '80903', 'CUSCO', 'LA CONVENCION', 'HUAYOPATA', 'IPAL /6'),
(763, '80904', 'CUSCO', 'LA CONVENCION', 'MARANURA', 'MARANURA'),
(764, '80905', 'CUSCO', 'LA CONVENCION', 'OCOBAMBA', 'OCOBAMBA /7'),
(765, '80906', 'CUSCO', 'LA CONVENCION', 'QUELLOUNO', 'QUELLOUNO'),
(766, '80907', 'CUSCO', 'LA CONVENCION', 'KIMBIRI', 'KIMBIRI'),
(767, '80908', 'CUSCO', 'LA CONVENCION', 'SANTA TERESA', 'SANTA TERESA'),
(768, '80909', 'CUSCO', 'LA CONVENCION', 'VILCABAMBA', 'LUCMA'),
(769, '80910', 'CUSCO', 'LA CONVENCION', 'PICHARI', 'PICHARI'),
(770, '80911', 'CUSCO', 'LA CONVENCION', 'INKAWASI', 'AMAYBAMBA'),
(771, '80912', 'CUSCO', 'LA CONVENCION', 'VILLA VIRGEN', 'VILLA VIRGEN'),
(772, '80913', 'CUSCO', 'LA CONVENCION', 'VILLA KINTIARINA', 'VILLA KINTIARINA'),
(773, '80914', 'CUSCO', 'LA CONVENCION', 'MEGANTONI', 'CAMISEA'),
(774, '81001', 'CUSCO', 'PARURO', 'PARURO', 'PARURO'),
(775, '81002', 'CUSCO', 'PARURO', 'ACCHA', 'ACCHA'),
(776, '81003', 'CUSCO', 'PARURO', 'CCAPI', 'CCAPI'),
(777, '81004', 'CUSCO', 'PARURO', 'COLCHA', 'COLCHA'),
(778, '81005', 'CUSCO', 'PARURO', 'HUANOQUITE', 'HUANOQUITE'),
(779, '81006', 'CUSCO', 'PARURO', 'OMACHA', 'OMACHA'),
(780, '81007', 'CUSCO', 'PARURO', 'PACCARITAMBO', 'PACCARITAMBO'),
(781, '81008', 'CUSCO', 'PARURO', 'PILLPINTO', 'PILLPINTO'),
(782, '81009', 'CUSCO', 'PARURO', 'YAURISQUE', 'YAURISQUE'),
(783, '81101', 'CUSCO', 'PAUCARTAMBO', 'PAUCARTAMBO', 'PAUCARTAMBO'),
(784, '81102', 'CUSCO', 'PAUCARTAMBO', 'CAICAY', 'CAICAY'),
(785, '81103', 'CUSCO', 'PAUCARTAMBO', 'CHALLABAMBA', 'CHALLABAMBA'),
(786, '81104', 'CUSCO', 'PAUCARTAMBO', 'COLQUEPATA', 'COLQUEPATA'),
(787, '81105', 'CUSCO', 'PAUCARTAMBO', 'HUANCARANI', 'HUANCARANI'),
(788, '81106', 'CUSCO', 'PAUCARTAMBO', 'KOSÑIPATA', 'PILLCOPATA'),
(789, '81201', 'CUSCO', 'QUISPICANCHI', 'URCOS', 'URCOS');
INSERT INTO `ubigeo` (`id_ubigeo`, `ubigeo_cod`, `ubigeo_departamento`, `ubigeo_provincia`, `ubigeo_distrito`, `ubigeo_capital`) VALUES
(790, '81202', 'CUSCO', 'QUISPICANCHI', 'ANDAHUAYLILLAS', 'ANDAHUAYLILLAS'),
(791, '81203', 'CUSCO', 'QUISPICANCHI', 'CAMANTI', 'QUINCE MIL'),
(792, '81204', 'CUSCO', 'QUISPICANCHI', 'CCARHUAYO', 'CCARHUAYO'),
(793, '81205', 'CUSCO', 'QUISPICANCHI', 'CCATCA', 'CCATCA'),
(794, '81206', 'CUSCO', 'QUISPICANCHI', 'CUSIPATA', 'CUSIPATA'),
(795, '81207', 'CUSCO', 'QUISPICANCHI', 'HUARO', 'HUARO'),
(796, '81208', 'CUSCO', 'QUISPICANCHI', 'LUCRE', 'LUCRE'),
(797, '81209', 'CUSCO', 'QUISPICANCHI', 'MARCAPATA', 'MARCAPATA'),
(798, '81210', 'CUSCO', 'QUISPICANCHI', 'OCONGATE', 'OCONGATE'),
(799, '81211', 'CUSCO', 'QUISPICANCHI', 'OROPESA', 'OROPESA'),
(800, '81212', 'CUSCO', 'QUISPICANCHI', 'QUIQUIJANA', 'QUIQUIJANA'),
(801, '81301', 'CUSCO', 'URUBAMBA', 'URUBAMBA', 'URUBAMBA'),
(802, '81302', 'CUSCO', 'URUBAMBA', 'CHINCHERO', 'CHINCHERO'),
(803, '81303', 'CUSCO', 'URUBAMBA', 'HUAYLLABAMBA', 'HUAYLLABAMBA'),
(804, '81304', 'CUSCO', 'URUBAMBA', 'MACHUPICCHU', 'MACHUPICCHU'),
(805, '81305', 'CUSCO', 'URUBAMBA', 'MARAS', 'MARAS'),
(806, '81306', 'CUSCO', 'URUBAMBA', 'OLLANTAYTAMBO', 'OLLANTAYTAMBO'),
(807, '81307', 'CUSCO', 'URUBAMBA', 'YUCAY', 'YUCAY'),
(808, '90101', 'HUANCAVELICA', 'HUANCAVELICA', 'HUANCAVELICA', 'HUANCAVELICA'),
(809, '90102', 'HUANCAVELICA', 'HUANCAVELICA', 'ACOBAMBILLA', 'ACOBAMBILLA'),
(810, '90103', 'HUANCAVELICA', 'HUANCAVELICA', 'ACORIA', 'ACORIA'),
(811, '90104', 'HUANCAVELICA', 'HUANCAVELICA', 'CONAYCA', 'CONAYCA'),
(812, '90105', 'HUANCAVELICA', 'HUANCAVELICA', 'CUENCA', 'CUENCA'),
(813, '90106', 'HUANCAVELICA', 'HUANCAVELICA', 'HUACHOCOLPA', 'HUACHOCOLPA'),
(814, '90107', 'HUANCAVELICA', 'HUANCAVELICA', 'HUAYLLAHUARA', 'HUAYLLAHUARA'),
(815, '90108', 'HUANCAVELICA', 'HUANCAVELICA', 'IZCUCHACA', 'IZCUCHACA'),
(816, '90109', 'HUANCAVELICA', 'HUANCAVELICA', 'LARIA', 'LARIA'),
(817, '90110', 'HUANCAVELICA', 'HUANCAVELICA', 'MANTA', 'MANTA'),
(818, '90111', 'HUANCAVELICA', 'HUANCAVELICA', 'MARISCAL CACERES', 'MARISCAL CACERES'),
(819, '90112', 'HUANCAVELICA', 'HUANCAVELICA', 'MOYA', 'MOYA'),
(820, '90113', 'HUANCAVELICA', 'HUANCAVELICA', 'NUEVO OCCORO', 'OCCORO'),
(821, '90114', 'HUANCAVELICA', 'HUANCAVELICA', 'PALCA', 'PALCA'),
(822, '90115', 'HUANCAVELICA', 'HUANCAVELICA', 'PILCHACA', 'PILCHACA'),
(823, '90116', 'HUANCAVELICA', 'HUANCAVELICA', 'VILCA', 'VILCA'),
(824, '90117', 'HUANCAVELICA', 'HUANCAVELICA', 'YAULI', 'YAULI'),
(825, '90118', 'HUANCAVELICA', 'HUANCAVELICA', 'ASCENSION', 'ASCENSION'),
(826, '90119', 'HUANCAVELICA', 'HUANCAVELICA', 'HUANDO', 'HUANDO'),
(827, '90201', 'HUANCAVELICA', 'ACOBAMBA', 'ACOBAMBA', 'ACOBAMBA'),
(828, '90202', 'HUANCAVELICA', 'ACOBAMBA', 'ANDABAMBA', 'ANDABAMBA'),
(829, '90203', 'HUANCAVELICA', 'ACOBAMBA', 'ANTA', 'ANTA'),
(830, '90204', 'HUANCAVELICA', 'ACOBAMBA', 'CAJA', 'CAJA'),
(831, '90205', 'HUANCAVELICA', 'ACOBAMBA', 'MARCAS', 'MARCAS'),
(832, '90206', 'HUANCAVELICA', 'ACOBAMBA', 'PAUCARA', 'PAUCARA'),
(833, '90207', 'HUANCAVELICA', 'ACOBAMBA', 'POMACOCHA', 'POMACOCHA'),
(834, '90208', 'HUANCAVELICA', 'ACOBAMBA', 'ROSARIO', 'ROSARIO'),
(835, '90301', 'HUANCAVELICA', 'ANGARAES', 'LIRCAY', 'LIRCAY'),
(836, '90302', 'HUANCAVELICA', 'ANGARAES', 'ANCHONGA', 'ANCHONGA'),
(837, '90303', 'HUANCAVELICA', 'ANGARAES', 'CALLANMARCA', 'CALLANMARCA'),
(838, '90304', 'HUANCAVELICA', 'ANGARAES', 'CCOCHACCASA', 'CCOCHACCASA'),
(839, '90305', 'HUANCAVELICA', 'ANGARAES', 'CHINCHO', 'CHINCHO'),
(840, '90306', 'HUANCAVELICA', 'ANGARAES', 'CONGALLA', 'CONGALLA'),
(841, '90307', 'HUANCAVELICA', 'ANGARAES', 'HUANCA-HUANCA', 'HUANCA-HUANCA'),
(842, '90308', 'HUANCAVELICA', 'ANGARAES', 'HUAYLLAY GRANDE', 'HUAYLLAY GRANDE'),
(843, '90309', 'HUANCAVELICA', 'ANGARAES', 'JULCAMARCA', 'JULCAMARCA'),
(844, '90310', 'HUANCAVELICA', 'ANGARAES', 'SAN ANTONIO DE ANTAPARCO', 'ANTAPARCO'),
(845, '90311', 'HUANCAVELICA', 'ANGARAES', 'SANTO TOMAS DE PATA', 'SANTO TOMAS DE PATA'),
(846, '90312', 'HUANCAVELICA', 'ANGARAES', 'SECCLLA', 'SECCLLA'),
(847, '90401', 'HUANCAVELICA', 'CASTROVIRREYNA', 'CASTROVIRREYNA', 'CASTROVIRREYNA'),
(848, '90402', 'HUANCAVELICA', 'CASTROVIRREYNA', 'ARMA', 'ARMA'),
(849, '90403', 'HUANCAVELICA', 'CASTROVIRREYNA', 'AURAHUA', 'AURAHUA'),
(850, '90404', 'HUANCAVELICA', 'CASTROVIRREYNA', 'CAPILLAS', 'CAPILLAS'),
(851, '90405', 'HUANCAVELICA', 'CASTROVIRREYNA', 'CHUPAMARCA', 'CHUPAMARCA'),
(852, '90406', 'HUANCAVELICA', 'CASTROVIRREYNA', 'COCAS', 'COCAS'),
(853, '90407', 'HUANCAVELICA', 'CASTROVIRREYNA', 'HUACHOS', 'HUACHOS'),
(854, '90408', 'HUANCAVELICA', 'CASTROVIRREYNA', 'HUAMATAMBO', 'HUAMATAMBO'),
(855, '90409', 'HUANCAVELICA', 'CASTROVIRREYNA', 'MOLLEPAMPA', 'MOLLEPAMPA'),
(856, '90410', 'HUANCAVELICA', 'CASTROVIRREYNA', 'SAN JUAN', 'SAN JUAN'),
(857, '90411', 'HUANCAVELICA', 'CASTROVIRREYNA', 'SANTA ANA', 'SANTA ANA'),
(858, '90412', 'HUANCAVELICA', 'CASTROVIRREYNA', 'TANTARA', 'TANTARA'),
(859, '90413', 'HUANCAVELICA', 'CASTROVIRREYNA', 'TICRAPO', 'TICRAPO'),
(860, '90501', 'HUANCAVELICA', 'CHURCAMPA', 'CHURCAMPA', 'CHURCAMPA'),
(861, '90502', 'HUANCAVELICA', 'CHURCAMPA', 'ANCO', 'LA ESMERALDA'),
(862, '90503', 'HUANCAVELICA', 'CHURCAMPA', 'CHINCHIHUASI', 'CHINCHIHUASI'),
(863, '90504', 'HUANCAVELICA', 'CHURCAMPA', 'EL CARMEN', 'PAUCARBAMBILLA'),
(864, '90505', 'HUANCAVELICA', 'CHURCAMPA', 'LA MERCED', 'LA MERCED'),
(865, '90506', 'HUANCAVELICA', 'CHURCAMPA', 'LOCROJA', 'LOCROJA'),
(866, '90507', 'HUANCAVELICA', 'CHURCAMPA', 'PAUCARBAMBA', 'PAUCARBAMBA'),
(867, '90508', 'HUANCAVELICA', 'CHURCAMPA', 'SAN MIGUEL DE MAYOCC', 'MAYOCC'),
(868, '90509', 'HUANCAVELICA', 'CHURCAMPA', 'SAN PEDRO DE CORIS', 'SAN PEDRO DE CORIS'),
(869, '90510', 'HUANCAVELICA', 'CHURCAMPA', 'PACHAMARCA', 'PACHAMARCA'),
(870, '90511', 'HUANCAVELICA', 'CHURCAMPA', 'COSME', 'SANTA CLARA DE COSME'),
(871, '90601', 'HUANCAVELICA', 'HUAYTARA', 'HUAYTARA', 'HUAYTARA'),
(872, '90602', 'HUANCAVELICA', 'HUAYTARA', 'AYAVI', 'AYAVI'),
(873, '90603', 'HUANCAVELICA', 'HUAYTARA', 'CORDOVA', 'CORDOVA'),
(874, '90604', 'HUANCAVELICA', 'HUAYTARA', 'HUAYACUNDO ARMA', 'HUAYACUNDO ARMA'),
(875, '90605', 'HUANCAVELICA', 'HUAYTARA', 'LARAMARCA', 'LARAMARCA'),
(876, '90606', 'HUANCAVELICA', 'HUAYTARA', 'OCOYO', 'OCOYO'),
(877, '90607', 'HUANCAVELICA', 'HUAYTARA', 'PILPICHACA', 'PILPICHACA'),
(878, '90608', 'HUANCAVELICA', 'HUAYTARA', 'QUERCO', 'QUERCO'),
(879, '90609', 'HUANCAVELICA', 'HUAYTARA', 'QUITO-ARMA', 'QUITO-ARMA'),
(880, '90610', 'HUANCAVELICA', 'HUAYTARA', 'SAN ANTONIO DE CUSICANCHA', 'CUSICANCHA'),
(881, '90611', 'HUANCAVELICA', 'HUAYTARA', 'SAN FRANCISCO DE SANGAYAICO', 'SAN FRANCISCO DE SANGAYAICO'),
(882, '90612', 'HUANCAVELICA', 'HUAYTARA', 'SAN ISIDRO', 'SAN JUAN DE HUIRPACANCHA'),
(883, '90613', 'HUANCAVELICA', 'HUAYTARA', 'SANTIAGO DE CHOCORVOS', 'SANTIAGO DE CHOCORVOS'),
(884, '90614', 'HUANCAVELICA', 'HUAYTARA', 'SANTIAGO DE QUIRAHUARA', 'SANTIAGO DE QUIRAHUARA'),
(885, '90615', 'HUANCAVELICA', 'HUAYTARA', 'SANTO DOMINGO DE CAPILLAS', 'SANTO DOMINGO DE CAPILLAS'),
(886, '90616', 'HUANCAVELICA', 'HUAYTARA', 'TAMBO', 'TAMBO'),
(887, '90701', 'HUANCAVELICA', 'TAYACAJA', 'PAMPAS', 'PAMPAS'),
(888, '90702', 'HUANCAVELICA', 'TAYACAJA', 'ACOSTAMBO', 'ACOSTAMBO'),
(889, '90703', 'HUANCAVELICA', 'TAYACAJA', 'ACRAQUIA', 'ACRAQUIA'),
(890, '90704', 'HUANCAVELICA', 'TAYACAJA', 'AHUAYCHA', 'AHUAYCHA'),
(891, '90705', 'HUANCAVELICA', 'TAYACAJA', 'COLCABAMBA', 'COLCABAMBA'),
(892, '90706', 'HUANCAVELICA', 'TAYACAJA', 'DANIEL HERNANDEZ', 'MARISCAL CACERES'),
(893, '90707', 'HUANCAVELICA', 'TAYACAJA', 'HUACHOCOLPA', 'HUACHOCOLPA'),
(894, '90709', 'HUANCAVELICA', 'TAYACAJA', 'HUARIBAMBA', 'HUARIBAMBA'),
(895, '90710', 'HUANCAVELICA', 'TAYACAJA', 'ÑAHUIMPUQUIO', 'ÑAHUIMPUQUIO'),
(896, '90711', 'HUANCAVELICA', 'TAYACAJA', 'PAZOS', 'PAZOS'),
(897, '90713', 'HUANCAVELICA', 'TAYACAJA', 'QUISHUAR', 'QUISHUAR'),
(898, '90714', 'HUANCAVELICA', 'TAYACAJA', 'SALCABAMBA', 'SALCABAMBA'),
(899, '90715', 'HUANCAVELICA', 'TAYACAJA', 'SALCAHUASI', 'SALCAHUASI'),
(900, '90716', 'HUANCAVELICA', 'TAYACAJA', 'SAN MARCOS DE ROCCHAC', 'SAN MARCOS DE ROCCHAC'),
(901, '90717', 'HUANCAVELICA', 'TAYACAJA', 'SURCUBAMBA', 'SURCUBAMBA'),
(902, '90718', 'HUANCAVELICA', 'TAYACAJA', 'TINTAY PUNCU', 'TINTAY'),
(903, '90719', 'HUANCAVELICA', 'TAYACAJA', 'QUICHUAS', 'QUICHUAS'),
(904, '90720', 'HUANCAVELICA', 'TAYACAJA', 'ANDAYMARCA', 'ANDAYMARCA'),
(905, '90721', 'HUANCAVELICA', 'TAYACAJA', 'ROBLE', 'PUERTO SAN ANTONIO'),
(906, '90722', 'HUANCAVELICA', 'TAYACAJA', 'PICHOS', 'PICHOS'),
(907, '90723', 'HUANCAVELICA', 'TAYACAJA', 'SANTIAGO DE TUCUMA', 'SANTIAGO DE TUCUMA'),
(908, '100101', 'HUANUCO', 'HUANUCO', 'HUANUCO', 'HUANUCO'),
(909, '100102', 'HUANUCO', 'HUANUCO', 'AMARILIS', 'PAUCARBAMBA'),
(910, '100103', 'HUANUCO', 'HUANUCO', 'CHINCHAO', 'ACOMAYO'),
(911, '100104', 'HUANUCO', 'HUANUCO', 'CHURUBAMBA', 'CHURUBAMBA'),
(912, '100105', 'HUANUCO', 'HUANUCO', 'MARGOS', 'MARGOS'),
(913, '100106', 'HUANUCO', 'HUANUCO', 'QUISQUI (KICHKI)', 'HUANCAPALLAC'),
(914, '100107', 'HUANUCO', 'HUANUCO', 'SAN FRANCISCO DE CAYRAN', 'CAYRAN'),
(915, '100108', 'HUANUCO', 'HUANUCO', 'SAN PEDRO DE CHAULAN', 'CHAULAN'),
(916, '100109', 'HUANUCO', 'HUANUCO', 'SANTA MARIA DEL VALLE', 'SANTA MARIA DEL VALLE'),
(917, '100110', 'HUANUCO', 'HUANUCO', 'YARUMAYO', 'YARUMAYO'),
(918, '100111', 'HUANUCO', 'HUANUCO', 'PILLCO MARCA', 'CAYHUAYNA'),
(919, '100112', 'HUANUCO', 'HUANUCO', 'YACUS', 'YACUS'),
(920, '100113', 'HUANUCO', 'HUANUCO', 'SAN PABLO DE PILLAO', 'SAN PABLO DE PILLAO'),
(921, '100201', 'HUANUCO', 'AMBO', 'AMBO', 'AMBO'),
(922, '100202', 'HUANUCO', 'AMBO', 'CAYNA', 'CAYNA'),
(923, '100203', 'HUANUCO', 'AMBO', 'COLPAS', 'COLPAS'),
(924, '100204', 'HUANUCO', 'AMBO', 'CONCHAMARCA', 'CONCHAMARCA'),
(925, '100205', 'HUANUCO', 'AMBO', 'HUACAR', 'HUACAR'),
(926, '100206', 'HUANUCO', 'AMBO', 'SAN FRANCISCO', 'MOSCA'),
(927, '100207', 'HUANUCO', 'AMBO', 'SAN RAFAEL', 'SAN RAFAEL'),
(928, '100208', 'HUANUCO', 'AMBO', 'TOMAY KICHWA', 'TOMAY KICHWA'),
(929, '100301', 'HUANUCO', 'DOS DE MAYO', 'LA UNION', 'LA UNION'),
(930, '100307', 'HUANUCO', 'DOS DE MAYO', 'CHUQUIS', 'CHUQUIS'),
(931, '100311', 'HUANUCO', 'DOS DE MAYO', 'MARIAS', 'MARIAS'),
(932, '100313', 'HUANUCO', 'DOS DE MAYO', 'PACHAS', 'PACHAS'),
(933, '100316', 'HUANUCO', 'DOS DE MAYO', 'QUIVILLA', 'QUIVILLA'),
(934, '100317', 'HUANUCO', 'DOS DE MAYO', 'RIPAN', 'RIPAN'),
(935, '100321', 'HUANUCO', 'DOS DE MAYO', 'SHUNQUI', 'SHUNQUI'),
(936, '100322', 'HUANUCO', 'DOS DE MAYO', 'SILLAPATA', 'SILLAPATA'),
(937, '100323', 'HUANUCO', 'DOS DE MAYO', 'YANAS', 'YANAS'),
(938, '100401', 'HUANUCO', 'HUACAYBAMBA', 'HUACAYBAMBA', 'HUACAYBAMBA'),
(939, '100402', 'HUANUCO', 'HUACAYBAMBA', 'CANCHABAMBA', 'CANCHABAMBA'),
(940, '100403', 'HUANUCO', 'HUACAYBAMBA', 'COCHABAMBA', 'COCHABAMBA'),
(941, '100404', 'HUANUCO', 'HUACAYBAMBA', 'PINRA', 'PINRA'),
(942, '100501', 'HUANUCO', 'HUAMALIES', 'LLATA', 'LLATA'),
(943, '100502', 'HUANUCO', 'HUAMALIES', 'ARANCAY', 'ARANCAY'),
(944, '100503', 'HUANUCO', 'HUAMALIES', 'CHAVIN DE PARIARCA', 'CHAVIN DE PARIARCA'),
(945, '100504', 'HUANUCO', 'HUAMALIES', 'JACAS GRANDE', 'JACAS GRANDE'),
(946, '100505', 'HUANUCO', 'HUAMALIES', 'JIRCAN', 'JIRCAN'),
(947, '100506', 'HUANUCO', 'HUAMALIES', 'MIRAFLORES', 'MIRAFLORES'),
(948, '100507', 'HUANUCO', 'HUAMALIES', 'MONZON', 'MONZON'),
(949, '100508', 'HUANUCO', 'HUAMALIES', 'PUNCHAO', 'PUNCHAO'),
(950, '100509', 'HUANUCO', 'HUAMALIES', 'PUÑOS', 'PUÑOS'),
(951, '100510', 'HUANUCO', 'HUAMALIES', 'SINGA', 'SINGA'),
(952, '100511', 'HUANUCO', 'HUAMALIES', 'TANTAMAYO', 'TANTAMAYO'),
(953, '100601', 'HUANUCO', 'LEONCIO PRADO', 'RUPA-RUPA', 'TINGO MARIA'),
(954, '100602', 'HUANUCO', 'LEONCIO PRADO', 'DANIEL ALOMIA ROBLES', 'DANIEL ALOMIA ROBLES'),
(955, '100603', 'HUANUCO', 'LEONCIO PRADO', 'HERMILIO VALDIZAN', 'HERMILIO VALDIZAN'),
(956, '100604', 'HUANUCO', 'LEONCIO PRADO', 'JOSE CRESPO Y CASTILLO', 'AUCAYACU'),
(957, '100605', 'HUANUCO', 'LEONCIO PRADO', 'LUYANDO', 'LUYANDO /8'),
(958, '100606', 'HUANUCO', 'LEONCIO PRADO', 'MARIANO DAMASO BERAUN', 'LAS PALMAS'),
(959, '100607', 'HUANUCO', 'LEONCIO PRADO', 'PUCAYACU', 'PUCAYACU'),
(960, '100608', 'HUANUCO', 'LEONCIO PRADO', 'CASTILLO GRANDE', 'CASTILLO GRANDE'),
(961, '100609', 'HUANUCO', 'LEONCIO PRADO', 'PUEBLO NUEVO', 'PUEBLO NUEVO'),
(962, '100610', 'HUANUCO', 'LEONCIO PRADO', 'SANTO DOMINGO DE ANDIA', 'PACAE'),
(963, '100701', 'HUANUCO', 'MARAÑON', 'HUACRACHUCO', 'HUACRACHUCO'),
(964, '100702', 'HUANUCO', 'MARAÑON', 'CHOLON', 'SAN PEDRO DE CHONTA'),
(965, '100703', 'HUANUCO', 'MARAÑON', 'SAN BUENAVENTURA', 'SAN BUENAVENTURA'),
(966, '100704', 'HUANUCO', 'MARAÑON', 'LA MORADA', 'LA MORADA'),
(967, '100705', 'HUANUCO', 'MARAÑON', 'SANTA ROSA DE ALTO YANAJANCA', 'SANTA ROSA DE ALTO YANAJANCA'),
(968, '100801', 'HUANUCO', 'PACHITEA', 'PANAO', 'PANAO'),
(969, '100802', 'HUANUCO', 'PACHITEA', 'CHAGLLA', 'CHAGLLA'),
(970, '100803', 'HUANUCO', 'PACHITEA', 'MOLINO', 'MOLINO'),
(971, '100804', 'HUANUCO', 'PACHITEA', 'UMARI', 'UMARI (TAMBILLO)'),
(972, '100901', 'HUANUCO', 'PUERTO INCA', 'PUERTO INCA', 'PUERTO INCA'),
(973, '100902', 'HUANUCO', 'PUERTO INCA', 'CODO DEL POZUZO', 'CODO DEL POZUZO'),
(974, '100903', 'HUANUCO', 'PUERTO INCA', 'HONORIA', 'HONORIA'),
(975, '100904', 'HUANUCO', 'PUERTO INCA', 'TOURNAVISTA', 'TOURNAVISTA'),
(976, '100905', 'HUANUCO', 'PUERTO INCA', 'YUYAPICHIS', 'YUYAPICHIS'),
(977, '101001', 'HUANUCO', 'LAURICOCHA', 'JESUS', 'JESUS'),
(978, '101002', 'HUANUCO', 'LAURICOCHA', 'BAÑOS', 'BAÑOS'),
(979, '101003', 'HUANUCO', 'LAURICOCHA', 'JIVIA', 'JIVIA'),
(980, '101004', 'HUANUCO', 'LAURICOCHA', 'QUEROPALCA', 'QUEROPALCA'),
(981, '101005', 'HUANUCO', 'LAURICOCHA', 'RONDOS', 'RONDOS'),
(982, '101006', 'HUANUCO', 'LAURICOCHA', 'SAN FRANCISCO DE ASIS', 'HUARIN'),
(983, '101007', 'HUANUCO', 'LAURICOCHA', 'SAN MIGUEL DE CAURI', 'CAURI'),
(984, '101101', 'HUANUCO', 'YAROWILCA', 'CHAVINILLO', 'CHAVINILLO'),
(985, '101102', 'HUANUCO', 'YAROWILCA', 'CAHUAC', 'CAHUAC'),
(986, '101103', 'HUANUCO', 'YAROWILCA', 'CHACABAMBA', 'CHACABAMBA'),
(987, '101104', 'HUANUCO', 'YAROWILCA', 'APARICIO POMARES', 'CHUPAN'),
(988, '101105', 'HUANUCO', 'YAROWILCA', 'JACAS CHICO', 'SAN CRISTOBAL DE JACAS CHICO'),
(989, '101106', 'HUANUCO', 'YAROWILCA', 'OBAS', 'OBAS'),
(990, '101107', 'HUANUCO', 'YAROWILCA', 'PAMPAMARCA', 'PAMPAMARCA'),
(991, '101108', 'HUANUCO', 'YAROWILCA', 'CHORAS', 'CHORAS'),
(992, '110101', 'ICA', 'ICA', 'ICA', 'ICA'),
(993, '110102', 'ICA', 'ICA', 'LA TINGUIÑA', 'LA TINGUIÑA'),
(994, '110103', 'ICA', 'ICA', 'LOS AQUIJES', 'LOS AQUIJES'),
(995, '110104', 'ICA', 'ICA', 'OCUCAJE', 'OCUCAJE'),
(996, '110105', 'ICA', 'ICA', 'PACHACUTEC', 'PAMPA DE TATE'),
(997, '110106', 'ICA', 'ICA', 'PARCONA', 'PARCONA'),
(998, '110107', 'ICA', 'ICA', 'PUEBLO NUEVO', 'PUEBLO NUEVO'),
(999, '110108', 'ICA', 'ICA', 'SALAS', 'GUADALUPE'),
(1000, '110109', 'ICA', 'ICA', 'SAN JOSE DE LOS MOLINOS', 'SAN JOSE DE LOS MOLINOS'),
(1001, '110110', 'ICA', 'ICA', 'SAN JUAN BAUTISTA', 'SAN JUAN BAUTISTA'),
(1002, '110111', 'ICA', 'ICA', 'SANTIAGO', 'SANTIAGO'),
(1003, '110112', 'ICA', 'ICA', 'SUBTANJALLA', 'SUBTANJALLA'),
(1004, '110113', 'ICA', 'ICA', 'TATE', 'TATE DE LA CAPILLA'),
(1005, '110114', 'ICA', 'ICA', 'YAUCA DEL ROSARIO', 'CURIS /9'),
(1006, '110201', 'ICA', 'CHINCHA', 'CHINCHA ALTA', 'CHINCHA ALTA'),
(1007, '110202', 'ICA', 'CHINCHA', 'ALTO LARAN', 'ALTO LARAN'),
(1008, '110203', 'ICA', 'CHINCHA', 'CHAVIN', 'CHAVIN'),
(1009, '110204', 'ICA', 'CHINCHA', 'CHINCHA BAJA', 'CHINCHA BAJA'),
(1010, '110205', 'ICA', 'CHINCHA', 'EL CARMEN', 'EL CARMEN'),
(1011, '110206', 'ICA', 'CHINCHA', 'GROCIO PRADO', 'SAN PEDRO'),
(1012, '110207', 'ICA', 'CHINCHA', 'PUEBLO NUEVO', 'PUEBLO NUEVO'),
(1013, '110208', 'ICA', 'CHINCHA', 'SAN JUAN DE YANAC', 'SAN JUAN DE YANAC'),
(1014, '110209', 'ICA', 'CHINCHA', 'SAN PEDRO DE HUACARPANA', 'SAN PEDRO DE HUACARPANA'),
(1015, '110210', 'ICA', 'CHINCHA', 'SUNAMPE', 'SUNAMPE'),
(1016, '110211', 'ICA', 'CHINCHA', 'TAMBO DE MORA', 'TAMBO DE MORA'),
(1017, '110301', 'ICA', 'NASCA', 'NASCA', 'NASCA'),
(1018, '110302', 'ICA', 'NASCA', 'CHANGUILLO', 'CHANGUILLO'),
(1019, '110303', 'ICA', 'NASCA', 'EL INGENIO', 'EL INGENIO'),
(1020, '110304', 'ICA', 'NASCA', 'MARCONA', 'SAN JUAN'),
(1021, '110305', 'ICA', 'NASCA', 'VISTA ALEGRE', 'VISTA ALEGRE'),
(1022, '110401', 'ICA', 'PALPA', 'PALPA', 'PALPA'),
(1023, '110402', 'ICA', 'PALPA', 'LLIPATA', 'LLIPATA'),
(1024, '110403', 'ICA', 'PALPA', 'RIO GRANDE', 'RIO GRANDE'),
(1025, '110404', 'ICA', 'PALPA', 'SANTA CRUZ', 'SANTA CRUZ'),
(1026, '110405', 'ICA', 'PALPA', 'TIBILLO', 'TIBILLO'),
(1027, '110501', 'ICA', 'PISCO', 'PISCO', 'PISCO'),
(1028, '110502', 'ICA', 'PISCO', 'HUANCANO', 'HUANCANO'),
(1029, '110503', 'ICA', 'PISCO', 'HUMAY', 'HUMAY'),
(1030, '110504', 'ICA', 'PISCO', 'INDEPENDENCIA', 'INDEPENDENCIA'),
(1031, '110505', 'ICA', 'PISCO', 'PARACAS', 'PARACAS'),
(1032, '110506', 'ICA', 'PISCO', 'SAN ANDRES', 'SAN ANDRES'),
(1033, '110507', 'ICA', 'PISCO', 'SAN CLEMENTE', 'SAN CLEMENTE'),
(1034, '110508', 'ICA', 'PISCO', 'TUPAC AMARU INCA', 'TUPAC AMARU'),
(1035, '120101', 'JUNIN', 'HUANCAYO', 'HUANCAYO', 'HUANCAYO'),
(1036, '120104', 'JUNIN', 'HUANCAYO', 'CARHUACALLANGA', 'CARHUACALLANGA'),
(1037, '120105', 'JUNIN', 'HUANCAYO', 'CHACAPAMPA', 'CHACAPAMPA'),
(1038, '120106', 'JUNIN', 'HUANCAYO', 'CHICCHE', 'CHICCHE'),
(1039, '120107', 'JUNIN', 'HUANCAYO', 'CHILCA', 'CHILCA'),
(1040, '120108', 'JUNIN', 'HUANCAYO', 'CHONGOS ALTO', 'CHONGOS ALTO'),
(1041, '120111', 'JUNIN', 'HUANCAYO', 'CHUPURO', 'CHUPURO'),
(1042, '120112', 'JUNIN', 'HUANCAYO', 'COLCA', 'COLCA'),
(1043, '120113', 'JUNIN', 'HUANCAYO', 'CULLHUAS', 'CULLHUAS'),
(1044, '120114', 'JUNIN', 'HUANCAYO', 'EL TAMBO', 'EL TAMBO'),
(1045, '120116', 'JUNIN', 'HUANCAYO', 'HUACRAPUQUIO', 'HUACRAPUQUIO'),
(1046, '120117', 'JUNIN', 'HUANCAYO', 'HUALHUAS', 'HUALHUAS'),
(1047, '120119', 'JUNIN', 'HUANCAYO', 'HUANCAN', 'HUANCAN'),
(1048, '120120', 'JUNIN', 'HUANCAYO', 'HUASICANCHA', 'HUASICANCHA'),
(1049, '120121', 'JUNIN', 'HUANCAYO', 'HUAYUCACHI', 'HUAYUCACHI'),
(1050, '120122', 'JUNIN', 'HUANCAYO', 'INGENIO', 'INGENIO'),
(1051, '120124', 'JUNIN', 'HUANCAYO', 'PARIAHUANCA', 'PARIAHUANCA /10'),
(1052, '120125', 'JUNIN', 'HUANCAYO', 'PILCOMAYO', 'PILCOMAYO'),
(1053, '120126', 'JUNIN', 'HUANCAYO', 'PUCARA', 'PUCARA'),
(1054, '120127', 'JUNIN', 'HUANCAYO', 'QUICHUAY', 'QUICHUAY'),
(1055, '120128', 'JUNIN', 'HUANCAYO', 'QUILCAS', 'QUILCAS'),
(1056, '120129', 'JUNIN', 'HUANCAYO', 'SAN AGUSTIN', 'SAN AGUSTIN'),
(1057, '120130', 'JUNIN', 'HUANCAYO', 'SAN JERONIMO DE TUNAN', 'SAN JERONIMO DE TUNAN'),
(1058, '120132', 'JUNIN', 'HUANCAYO', 'SAÑO', 'SAÑO'),
(1059, '120133', 'JUNIN', 'HUANCAYO', 'SAPALLANGA', 'SAPALLANGA'),
(1060, '120134', 'JUNIN', 'HUANCAYO', 'SICAYA', 'SICAYA'),
(1061, '120135', 'JUNIN', 'HUANCAYO', 'SANTO DOMINGO DE ACOBAMBA', 'SANTO DOMINGO DE ACOBAMBA'),
(1062, '120136', 'JUNIN', 'HUANCAYO', 'VIQUES', 'VIQUES'),
(1063, '120201', 'JUNIN', 'CONCEPCION', 'CONCEPCION', 'CONCEPCION'),
(1064, '120202', 'JUNIN', 'CONCEPCION', 'ACO', 'ACO'),
(1065, '120203', 'JUNIN', 'CONCEPCION', 'ANDAMARCA', 'ANDAMARCA'),
(1066, '120204', 'JUNIN', 'CONCEPCION', 'CHAMBARA', 'CHAMBARA'),
(1067, '120205', 'JUNIN', 'CONCEPCION', 'COCHAS', 'COCHAS'),
(1068, '120206', 'JUNIN', 'CONCEPCION', 'COMAS', 'COMAS'),
(1069, '120207', 'JUNIN', 'CONCEPCION', 'HEROINAS TOLEDO', 'SAN ANTONIO DE OCOPA'),
(1070, '120208', 'JUNIN', 'CONCEPCION', 'MANZANARES', 'SAN MIGUEL'),
(1071, '120209', 'JUNIN', 'CONCEPCION', 'MARISCAL CASTILLA', 'MUCLLO'),
(1072, '120210', 'JUNIN', 'CONCEPCION', 'MATAHUASI', 'MATAHUASI'),
(1073, '120211', 'JUNIN', 'CONCEPCION', 'MITO', 'MITO'),
(1074, '120212', 'JUNIN', 'CONCEPCION', 'NUEVE DE JULIO', 'SANTO DOMINGO DEL PRADO'),
(1075, '120213', 'JUNIN', 'CONCEPCION', 'ORCOTUNA', 'ORCOTUNA'),
(1076, '120214', 'JUNIN', 'CONCEPCION', 'SAN JOSE DE QUERO', 'SAN JOSE DE QUERO'),
(1077, '120215', 'JUNIN', 'CONCEPCION', 'SANTA ROSA DE OCOPA', 'SANTA ROSA'),
(1078, '120301', 'JUNIN', 'CHANCHAMAYO', 'CHANCHAMAYO', 'LA MERCED'),
(1079, '120302', 'JUNIN', 'CHANCHAMAYO', 'PERENE', 'PERENE'),
(1080, '120303', 'JUNIN', 'CHANCHAMAYO', 'PICHANAQUI', 'BAJO PICHANAQUI'),
(1081, '120304', 'JUNIN', 'CHANCHAMAYO', 'SAN LUIS DE SHUARO', 'SAN LUIS DE SHUARO'),
(1082, '120305', 'JUNIN', 'CHANCHAMAYO', 'SAN RAMON', 'SAN RAMON'),
(1083, '120306', 'JUNIN', 'CHANCHAMAYO', 'VITOC', 'PUCARA'),
(1084, '120401', 'JUNIN', 'JAUJA', 'JAUJA', 'JAUJA'),
(1085, '120402', 'JUNIN', 'JAUJA', 'ACOLLA', 'ACOLLA'),
(1086, '120403', 'JUNIN', 'JAUJA', 'APATA', 'APATA'),
(1087, '120404', 'JUNIN', 'JAUJA', 'ATAURA', 'ATAURA'),
(1088, '120405', 'JUNIN', 'JAUJA', 'CANCHAYLLO', 'CANCHAYLLO'),
(1089, '120406', 'JUNIN', 'JAUJA', 'CURICACA', 'EL ROSARIO'),
(1090, '120407', 'JUNIN', 'JAUJA', 'EL MANTARO', 'PUCUCHO'),
(1091, '120408', 'JUNIN', 'JAUJA', 'HUAMALI', 'HUAMALI'),
(1092, '120409', 'JUNIN', 'JAUJA', 'HUARIPAMPA', 'HUARIPAMPA'),
(1093, '120410', 'JUNIN', 'JAUJA', 'HUERTAS', 'HUERTAS'),
(1094, '120411', 'JUNIN', 'JAUJA', 'JANJAILLO', 'JANJAILLO /11'),
(1095, '120412', 'JUNIN', 'JAUJA', 'JULCAN', 'JULCAN'),
(1096, '120413', 'JUNIN', 'JAUJA', 'LEONOR ORDOÑEZ', 'HUANCANI'),
(1097, '120414', 'JUNIN', 'JAUJA', 'LLOCLLAPAMPA', 'LLOCLLAPAMPA'),
(1098, '120415', 'JUNIN', 'JAUJA', 'MARCO', 'MARCO'),
(1099, '120416', 'JUNIN', 'JAUJA', 'MASMA', 'MASMA'),
(1100, '120417', 'JUNIN', 'JAUJA', 'MASMA CHICCHE', 'MASMA CHICCHE'),
(1101, '120418', 'JUNIN', 'JAUJA', 'MOLINOS', 'MOLINOS'),
(1102, '120419', 'JUNIN', 'JAUJA', 'MONOBAMBA', 'MONOBAMBA'),
(1103, '120420', 'JUNIN', 'JAUJA', 'MUQUI', 'MUQUI'),
(1104, '120421', 'JUNIN', 'JAUJA', 'MUQUIYAUYO', 'MUQUIYAUYO'),
(1105, '120422', 'JUNIN', 'JAUJA', 'PACA', 'PACA'),
(1106, '120423', 'JUNIN', 'JAUJA', 'PACCHA', 'PACCHA'),
(1107, '120424', 'JUNIN', 'JAUJA', 'PANCAN', 'PANCAN'),
(1108, '120425', 'JUNIN', 'JAUJA', 'PARCO', 'PARCO'),
(1109, '120426', 'JUNIN', 'JAUJA', 'POMACANCHA', 'POMACANCHA'),
(1110, '120427', 'JUNIN', 'JAUJA', 'RICRAN', 'RICRAN'),
(1111, '120428', 'JUNIN', 'JAUJA', 'SAN LORENZO', 'SAN LORENZO'),
(1112, '120429', 'JUNIN', 'JAUJA', 'SAN PEDRO DE CHUNAN', 'SAN PEDRO DE CHUNAN'),
(1113, '120430', 'JUNIN', 'JAUJA', 'SAUSA', 'SAUSA'),
(1114, '120431', 'JUNIN', 'JAUJA', 'SINCOS', 'SINCOS'),
(1115, '120432', 'JUNIN', 'JAUJA', 'TUNAN MARCA', 'CONCHO'),
(1116, '120433', 'JUNIN', 'JAUJA', 'YAULI', 'YAULI'),
(1117, '120434', 'JUNIN', 'JAUJA', 'YAUYOS', 'YAUYOS'),
(1118, '120501', 'JUNIN', 'JUNIN', 'JUNIN', 'JUNIN'),
(1119, '120502', 'JUNIN', 'JUNIN', 'CARHUAMAYO', 'CARHUAMAYO'),
(1120, '120503', 'JUNIN', 'JUNIN', 'ONDORES', 'ONDORES'),
(1121, '120504', 'JUNIN', 'JUNIN', 'ULCUMAYO', 'ULCUMAYO'),
(1122, '120601', 'JUNIN', 'SATIPO', 'SATIPO', 'SATIPO'),
(1123, '120602', 'JUNIN', 'SATIPO', 'COVIRIALI', 'COVIRIALI'),
(1124, '120603', 'JUNIN', 'SATIPO', 'LLAYLLA', 'LLAYLLA'),
(1125, '120604', 'JUNIN', 'SATIPO', 'MAZAMARI', 'MAZAMARI'),
(1126, '120605', 'JUNIN', 'SATIPO', 'PAMPA HERMOSA', 'MARIPOSA'),
(1127, '120606', 'JUNIN', 'SATIPO', 'PANGOA', 'SAN MARTIN DE PANGOA'),
(1128, '120607', 'JUNIN', 'SATIPO', 'RIO NEGRO', 'RIO NEGRO'),
(1129, '120608', 'JUNIN', 'SATIPO', 'RIO TAMBO', 'PUERTO OCOPA'),
(1130, '120609', 'JUNIN', 'SATIPO', 'VIZCATAN DEL ENE', 'SAN MIGUEL DEL ENE'),
(1131, '120701', 'JUNIN', 'TARMA', 'TARMA', 'TARMA'),
(1132, '120702', 'JUNIN', 'TARMA', 'ACOBAMBA', 'ACOBAMBA'),
(1133, '120703', 'JUNIN', 'TARMA', 'HUARICOLCA', 'HUARICOLCA'),
(1134, '120704', 'JUNIN', 'TARMA', 'HUASAHUASI', 'HUASAHUASI'),
(1135, '120705', 'JUNIN', 'TARMA', 'LA UNION', 'LETICIA'),
(1136, '120706', 'JUNIN', 'TARMA', 'PALCA', 'PALCA'),
(1137, '120707', 'JUNIN', 'TARMA', 'PALCAMAYO', 'PALCAMAYO'),
(1138, '120708', 'JUNIN', 'TARMA', 'SAN PEDRO DE CAJAS', 'SAN PEDRO DE CAJAS'),
(1139, '120709', 'JUNIN', 'TARMA', 'TAPO', 'TAPO'),
(1140, '120801', 'JUNIN', 'YAULI', 'LA OROYA', 'LA OROYA'),
(1141, '120802', 'JUNIN', 'YAULI', 'CHACAPALPA', 'CHACAPALPA'),
(1142, '120803', 'JUNIN', 'YAULI', 'HUAY-HUAY', 'HUAY-HUAY'),
(1143, '120804', 'JUNIN', 'YAULI', 'MARCAPOMACOCHA', 'MARCAPOMACOCHA'),
(1144, '120805', 'JUNIN', 'YAULI', 'MOROCOCHA', 'NUEVA MOROCOCHA'),
(1145, '120806', 'JUNIN', 'YAULI', 'PACCHA', 'PACCHA'),
(1146, '120807', 'JUNIN', 'YAULI', 'SANTA BARBARA DE CARHUACAYAN', 'SANTA BARBARA DE CARHUACAYAN'),
(1147, '120808', 'JUNIN', 'YAULI', 'SANTA ROSA DE SACCO', 'SANTA ROSA DE SACCO'),
(1148, '120809', 'JUNIN', 'YAULI', 'SUITUCANCHA', 'SUITUCANCHA'),
(1149, '120810', 'JUNIN', 'YAULI', 'YAULI', 'YAULI'),
(1150, '120901', 'JUNIN', 'CHUPACA', 'CHUPACA', 'CHUPACA'),
(1151, '120902', 'JUNIN', 'CHUPACA', 'AHUAC', 'AHUAC'),
(1152, '120903', 'JUNIN', 'CHUPACA', 'CHONGOS BAJO', 'CHONGOS BAJO'),
(1153, '120904', 'JUNIN', 'CHUPACA', 'HUACHAC', 'HUACHAC'),
(1154, '120905', 'JUNIN', 'CHUPACA', 'HUAMANCACA CHICO', 'HUAMANCACA CHICO'),
(1155, '120906', 'JUNIN', 'CHUPACA', 'SAN JUAN DE ISCOS', 'ISCOS'),
(1156, '120907', 'JUNIN', 'CHUPACA', 'SAN JUAN DE JARPA', 'JARPA'),
(1157, '120908', 'JUNIN', 'CHUPACA', 'TRES DE DICIEMBRE', 'TRES DE DICIEMBRE'),
(1158, '120909', 'JUNIN', 'CHUPACA', 'YANACANCHA', 'YANACANCHA'),
(1159, '130101', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO', 'TRUJILLO'),
(1160, '130102', 'LA LIBERTAD', 'TRUJILLO', 'EL PORVENIR', 'EL PORVENIR'),
(1161, '130103', 'LA LIBERTAD', 'TRUJILLO', 'FLORENCIA DE MORA', 'FLORENCIA DE MORA'),
(1162, '130104', 'LA LIBERTAD', 'TRUJILLO', 'HUANCHACO', 'HUANCHACO'),
(1163, '130105', 'LA LIBERTAD', 'TRUJILLO', 'LA ESPERANZA', 'LA ESPERANZA'),
(1164, '130106', 'LA LIBERTAD', 'TRUJILLO', 'LAREDO', 'LAREDO'),
(1165, '130107', 'LA LIBERTAD', 'TRUJILLO', 'MOCHE', 'MOCHE'),
(1166, '130108', 'LA LIBERTAD', 'TRUJILLO', 'POROTO', 'POROTO'),
(1167, '130109', 'LA LIBERTAD', 'TRUJILLO', 'SALAVERRY', 'SALAVERRY'),
(1168, '130110', 'LA LIBERTAD', 'TRUJILLO', 'SIMBAL', 'SIMBAL'),
(1169, '130111', 'LA LIBERTAD', 'TRUJILLO', 'VICTOR LARCO HERRERA', 'BUENOS AIRES'),
(1170, '130201', 'LA LIBERTAD', 'ASCOPE', 'ASCOPE', 'ASCOPE'),
(1171, '130202', 'LA LIBERTAD', 'ASCOPE', 'CHICAMA', 'CHICAMA'),
(1172, '130203', 'LA LIBERTAD', 'ASCOPE', 'CHOCOPE', 'CHOCOPE'),
(1173, '130204', 'LA LIBERTAD', 'ASCOPE', 'MAGDALENA DE CAO', 'MAGDALENA DE CAO'),
(1174, '130205', 'LA LIBERTAD', 'ASCOPE', 'PAIJAN', 'PAIJAN'),
(1175, '130206', 'LA LIBERTAD', 'ASCOPE', 'RAZURI', 'PUERTO DE MALABRIGO'),
(1176, '130207', 'LA LIBERTAD', 'ASCOPE', 'SANTIAGO DE CAO', 'SANTIAGO DE CAO'),
(1177, '130208', 'LA LIBERTAD', 'ASCOPE', 'CASA GRANDE', 'CASA GRANDE'),
(1178, '130301', 'LA LIBERTAD', 'BOLIVAR', 'BOLIVAR', 'BOLIVAR'),
(1179, '130302', 'LA LIBERTAD', 'BOLIVAR', 'BAMBAMARCA', 'BAMBAMARCA'),
(1180, '130303', 'LA LIBERTAD', 'BOLIVAR', 'CONDORMARCA', 'CONDORMARCA /12'),
(1181, '130304', 'LA LIBERTAD', 'BOLIVAR', 'LONGOTEA', 'LONGOTEA'),
(1182, '130305', 'LA LIBERTAD', 'BOLIVAR', 'UCHUMARCA', 'UCHUMARCA'),
(1183, '130306', 'LA LIBERTAD', 'BOLIVAR', 'UCUNCHA', 'UCUNCHA'),
(1184, '130401', 'LA LIBERTAD', 'CHEPEN', 'CHEPEN', 'CHEPEN'),
(1185, '130402', 'LA LIBERTAD', 'CHEPEN', 'PACANGA', 'PACANGA'),
(1186, '130403', 'LA LIBERTAD', 'CHEPEN', 'PUEBLO NUEVO', 'PUEBLO NUEVO'),
(1187, '130501', 'LA LIBERTAD', 'JULCAN', 'JULCAN', 'JULCAN'),
(1188, '130502', 'LA LIBERTAD', 'JULCAN', 'CALAMARCA', 'CALAMARCA'),
(1189, '130503', 'LA LIBERTAD', 'JULCAN', 'CARABAMBA', 'CARABAMBA'),
(1190, '130504', 'LA LIBERTAD', 'JULCAN', 'HUASO', 'HUASO'),
(1191, '130601', 'LA LIBERTAD', 'OTUZCO', 'OTUZCO', 'OTUZCO'),
(1192, '130602', 'LA LIBERTAD', 'OTUZCO', 'AGALLPAMPA', 'AGALLPAMPA'),
(1193, '130604', 'LA LIBERTAD', 'OTUZCO', 'CHARAT', 'CHARAT'),
(1194, '130605', 'LA LIBERTAD', 'OTUZCO', 'HUARANCHAL', 'HUARANCHAL'),
(1195, '130606', 'LA LIBERTAD', 'OTUZCO', 'LA CUESTA', 'LA CUESTA'),
(1196, '130608', 'LA LIBERTAD', 'OTUZCO', 'MACHE', 'MACHE'),
(1197, '130610', 'LA LIBERTAD', 'OTUZCO', 'PARANDAY', 'PARANDAY'),
(1198, '130611', 'LA LIBERTAD', 'OTUZCO', 'SALPO', 'SALPO'),
(1199, '130613', 'LA LIBERTAD', 'OTUZCO', 'SINSICAP', 'SINSICAP'),
(1200, '130614', 'LA LIBERTAD', 'OTUZCO', 'USQUIL', 'USQUIL'),
(1201, '130701', 'LA LIBERTAD', 'PACASMAYO', 'SAN PEDRO DE LLOC', 'SAN PEDRO DE LLOC'),
(1202, '130702', 'LA LIBERTAD', 'PACASMAYO', 'GUADALUPE', 'GUADALUPE'),
(1203, '130703', 'LA LIBERTAD', 'PACASMAYO', 'JEQUETEPEQUE', 'JEQUETEPEQUE'),
(1204, '130704', 'LA LIBERTAD', 'PACASMAYO', 'PACASMAYO', 'PACASMAYO'),
(1205, '130705', 'LA LIBERTAD', 'PACASMAYO', 'SAN JOSE', 'SAN JOSE'),
(1206, '130801', 'LA LIBERTAD', 'PATAZ', 'TAYABAMBA', 'TAYABAMBA'),
(1207, '130802', 'LA LIBERTAD', 'PATAZ', 'BULDIBUYO', 'BULDIBUYO'),
(1208, '130803', 'LA LIBERTAD', 'PATAZ', 'CHILLIA', 'CHILLIA'),
(1209, '130804', 'LA LIBERTAD', 'PATAZ', 'HUANCASPATA', 'HUANCASPATA'),
(1210, '130805', 'LA LIBERTAD', 'PATAZ', 'HUAYLILLAS', 'HUAYLILLAS'),
(1211, '130806', 'LA LIBERTAD', 'PATAZ', 'HUAYO', 'HUAYO'),
(1212, '130807', 'LA LIBERTAD', 'PATAZ', 'ONGON', 'ONGON'),
(1213, '130808', 'LA LIBERTAD', 'PATAZ', 'PARCOY', 'PARCOY'),
(1214, '130809', 'LA LIBERTAD', 'PATAZ', 'PATAZ', 'PATAZ'),
(1215, '130810', 'LA LIBERTAD', 'PATAZ', 'PIAS', 'PIAS'),
(1216, '130811', 'LA LIBERTAD', 'PATAZ', 'SANTIAGO DE CHALLAS', 'CHALLAS'),
(1217, '130812', 'LA LIBERTAD', 'PATAZ', 'TAURIJA', 'TAURIJA'),
(1218, '130813', 'LA LIBERTAD', 'PATAZ', 'URPAY', 'URPAY'),
(1219, '130901', 'LA LIBERTAD', 'SANCHEZ CARRION', 'HUAMACHUCO', 'HUAMACHUCO'),
(1220, '130902', 'LA LIBERTAD', 'SANCHEZ CARRION', 'CHUGAY', 'CHUGAY'),
(1221, '130903', 'LA LIBERTAD', 'SANCHEZ CARRION', 'COCHORCO', 'ARICAPAMPA'),
(1222, '130904', 'LA LIBERTAD', 'SANCHEZ CARRION', 'CURGOS', 'CURGOS'),
(1223, '130905', 'LA LIBERTAD', 'SANCHEZ CARRION', 'MARCABAL', 'MARCABAL'),
(1224, '130906', 'LA LIBERTAD', 'SANCHEZ CARRION', 'SANAGORAN', 'SANAGORAN'),
(1225, '130907', 'LA LIBERTAD', 'SANCHEZ CARRION', 'SARIN', 'SARIN'),
(1226, '130908', 'LA LIBERTAD', 'SANCHEZ CARRION', 'SARTIMBAMBA', 'SARTIMBAMBA'),
(1227, '131001', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'SANTIAGO DE CHUCO', 'SANTIAGO DE CHUCO'),
(1228, '131002', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'ANGASMARCA', 'ANGASMARCA'),
(1229, '131003', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'CACHICADAN', 'CACHICADAN'),
(1230, '131004', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'MOLLEBAMBA', 'MOLLEBAMBA'),
(1231, '131005', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'MOLLEPATA', 'MOLLEPATA'),
(1232, '131006', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'QUIRUVILCA', 'QUIRUVILCA'),
(1233, '131007', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'SANTA CRUZ DE CHUCA', 'SANTA CRUZ DE CHUCA'),
(1234, '131008', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'SITABAMBA', 'SITABAMBA'),
(1235, '131101', 'LA LIBERTAD', 'GRAN CHIMU', 'CASCAS', 'CASCAS'),
(1236, '131102', 'LA LIBERTAD', 'GRAN CHIMU', 'LUCMA', 'LUCMA'),
(1237, '131103', 'LA LIBERTAD', 'GRAN CHIMU', 'MARMOT', 'MARMOT /13'),
(1238, '131104', 'LA LIBERTAD', 'GRAN CHIMU', 'SAYAPULLO', 'SAYAPULLO'),
(1239, '131201', 'LA LIBERTAD', 'VIRU', 'VIRU', 'VIRU'),
(1240, '131202', 'LA LIBERTAD', 'VIRU', 'CHAO', 'CHAO'),
(1241, '131203', 'LA LIBERTAD', 'VIRU', 'GUADALUPITO', 'GUADALUPITO'),
(1242, '140101', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO', 'CHICLAYO'),
(1243, '140102', 'LAMBAYEQUE', 'CHICLAYO', 'CHONGOYAPE', 'CHONGOYAPE'),
(1244, '140103', 'LAMBAYEQUE', 'CHICLAYO', 'ETEN', 'ETEN'),
(1245, '140104', 'LAMBAYEQUE', 'CHICLAYO', 'ETEN PUERTO', 'ETEN PUERTO'),
(1246, '140105', 'LAMBAYEQUE', 'CHICLAYO', 'JOSE LEONARDO ORTIZ', 'JOSE LEONARDO ORTIZ'),
(1247, '140106', 'LAMBAYEQUE', 'CHICLAYO', 'LA VICTORIA', 'LA VICTORIA'),
(1248, '140107', 'LAMBAYEQUE', 'CHICLAYO', 'LAGUNAS', 'MOCUPE'),
(1249, '140108', 'LAMBAYEQUE', 'CHICLAYO', 'MONSEFU', 'MONSEFU'),
(1250, '140109', 'LAMBAYEQUE', 'CHICLAYO', 'NUEVA ARICA', 'NUEVA ARICA'),
(1251, '140110', 'LAMBAYEQUE', 'CHICLAYO', 'OYOTUN', 'OYOTUN'),
(1252, '140111', 'LAMBAYEQUE', 'CHICLAYO', 'PICSI', 'PICSI'),
(1253, '140112', 'LAMBAYEQUE', 'CHICLAYO', 'PIMENTEL', 'PIMENTEL'),
(1254, '140113', 'LAMBAYEQUE', 'CHICLAYO', 'REQUE', 'REQUE'),
(1255, '140114', 'LAMBAYEQUE', 'CHICLAYO', 'SANTA ROSA', 'SANTA ROSA'),
(1256, '140115', 'LAMBAYEQUE', 'CHICLAYO', 'SAÑA', 'SAÑA'),
(1257, '140116', 'LAMBAYEQUE', 'CHICLAYO', 'CAYALTI', 'CAYALTI'),
(1258, '140117', 'LAMBAYEQUE', 'CHICLAYO', 'PATAPO', 'PATAPO'),
(1259, '140118', 'LAMBAYEQUE', 'CHICLAYO', 'POMALCA', 'POMALCA'),
(1260, '140119', 'LAMBAYEQUE', 'CHICLAYO', 'PUCALA', 'PUCALA'),
(1261, '140120', 'LAMBAYEQUE', 'CHICLAYO', 'TUMAN', 'TUMAN'),
(1262, '140201', 'LAMBAYEQUE', 'FERREÑAFE', 'FERREÑAFE', 'FERREÑAFE'),
(1263, '140202', 'LAMBAYEQUE', 'FERREÑAFE', 'CAÑARIS', 'CAÑARIS'),
(1264, '140203', 'LAMBAYEQUE', 'FERREÑAFE', 'INCAHUASI', 'INCAHUASI'),
(1265, '140204', 'LAMBAYEQUE', 'FERREÑAFE', 'MANUEL ANTONIO MESONES MURO', 'MANUEL ANTONIO MESONES MURO'),
(1266, '140205', 'LAMBAYEQUE', 'FERREÑAFE', 'PITIPO', 'PITIPO'),
(1267, '140206', 'LAMBAYEQUE', 'FERREÑAFE', 'PUEBLO NUEVO', 'PUEBLO NUEVO'),
(1268, '140301', 'LAMBAYEQUE', 'LAMBAYEQUE', 'LAMBAYEQUE', 'LAMBAYEQUE'),
(1269, '140302', 'LAMBAYEQUE', 'LAMBAYEQUE', 'CHOCHOPE', 'CHOCHOPE'),
(1270, '140303', 'LAMBAYEQUE', 'LAMBAYEQUE', 'ILLIMO', 'ILLIMO'),
(1271, '140304', 'LAMBAYEQUE', 'LAMBAYEQUE', 'JAYANCA', 'JAYANCA'),
(1272, '140305', 'LAMBAYEQUE', 'LAMBAYEQUE', 'MOCHUMI', 'MOCHUMI'),
(1273, '140306', 'LAMBAYEQUE', 'LAMBAYEQUE', 'MORROPE', 'MORROPE'),
(1274, '140307', 'LAMBAYEQUE', 'LAMBAYEQUE', 'MOTUPE', 'MOTUPE'),
(1275, '140308', 'LAMBAYEQUE', 'LAMBAYEQUE', 'OLMOS', 'OLMOS'),
(1276, '140309', 'LAMBAYEQUE', 'LAMBAYEQUE', 'PACORA', 'PACORA'),
(1277, '140310', 'LAMBAYEQUE', 'LAMBAYEQUE', 'SALAS', 'SALAS'),
(1278, '140311', 'LAMBAYEQUE', 'LAMBAYEQUE', 'SAN JOSE', 'SAN JOSE'),
(1279, '140312', 'LAMBAYEQUE', 'LAMBAYEQUE', 'TUCUME', 'TUCUME'),
(1280, '150101', 'LIMA', 'LIMA', 'LIMA', 'LIMA'),
(1281, '150102', 'LIMA', 'LIMA', 'ANCON', 'ANCON'),
(1282, '150103', 'LIMA', 'LIMA', 'ATE', 'VITARTE'),
(1283, '150104', 'LIMA', 'LIMA', 'BARRANCO', 'BARRANCO'),
(1284, '150105', 'LIMA', 'LIMA', 'BREÑA', 'BREÑA'),
(1285, '150106', 'LIMA', 'LIMA', 'CARABAYLLO', 'CARABAYLLO'),
(1286, '150107', 'LIMA', 'LIMA', 'CHACLACAYO', 'CHACLACAYO'),
(1287, '150108', 'LIMA', 'LIMA', 'CHORRILLOS', 'CHORRILLOS'),
(1288, '150109', 'LIMA', 'LIMA', 'CIENEGUILLA', 'CIENEGUILLA'),
(1289, '150110', 'LIMA', 'LIMA', 'COMAS', 'LA LIBERTAD'),
(1290, '150111', 'LIMA', 'LIMA', 'EL AGUSTINO', 'EL AGUSTINO'),
(1291, '150112', 'LIMA', 'LIMA', 'INDEPENDENCIA', 'INDEPENDENCIA'),
(1292, '150113', 'LIMA', 'LIMA', 'JESUS MARIA', 'JESUS MARIA'),
(1293, '150114', 'LIMA', 'LIMA', 'LA MOLINA', 'LA MOLINA'),
(1294, '150115', 'LIMA', 'LIMA', 'LA VICTORIA', 'LA VICTORIA'),
(1295, '150116', 'LIMA', 'LIMA', 'LINCE', 'LINCE'),
(1296, '150117', 'LIMA', 'LIMA', 'LOS OLIVOS', 'LAS PALMERAS'),
(1297, '150118', 'LIMA', 'LIMA', 'LURIGANCHO', 'CHOSICA'),
(1298, '150119', 'LIMA', 'LIMA', 'LURIN', 'LURIN'),
(1299, '150120', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR', 'MAGDALENA DEL MAR'),
(1300, '150121', 'LIMA', 'LIMA', 'PUEBLO LIBRE', 'PUEBLO LIBRE'),
(1301, '150122', 'LIMA', 'LIMA', 'MIRAFLORES', 'MIRAFLORES'),
(1302, '150123', 'LIMA', 'LIMA', 'PACHACAMAC', 'PACHACAMAC'),
(1303, '150124', 'LIMA', 'LIMA', 'PUCUSANA', 'PUCUSANA'),
(1304, '150125', 'LIMA', 'LIMA', 'PUENTE PIEDRA', 'PUENTE PIEDRA'),
(1305, '150126', 'LIMA', 'LIMA', 'PUNTA HERMOSA', 'PUNTA HERMOSA'),
(1306, '150127', 'LIMA', 'LIMA', 'PUNTA NEGRA', 'PUNTA NEGRA'),
(1307, '150128', 'LIMA', 'LIMA', 'RIMAC', 'RIMAC'),
(1308, '150129', 'LIMA', 'LIMA', 'SAN BARTOLO', 'SAN BARTOLO'),
(1309, '150130', 'LIMA', 'LIMA', 'SAN BORJA', 'SAN FRANCISCO DE BORJA'),
(1310, '150131', 'LIMA', 'LIMA', 'SAN ISIDRO', 'SAN ISIDRO'),
(1311, '150132', 'LIMA', 'LIMA', 'SAN JUAN DE LURIGANCHO', 'SAN JUAN DE LURIGANCHO'),
(1312, '150133', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES', 'CIUDAD DE DIOS'),
(1313, '150134', 'LIMA', 'LIMA', 'SAN LUIS', 'SAN LUIS'),
(1314, '150135', 'LIMA', 'LIMA', 'SAN MARTIN DE PORRES', 'BARRIO OBRERO INDUSTRIAL'),
(1315, '150136', 'LIMA', 'LIMA', 'SAN MIGUEL', 'SAN MIGUEL'),
(1316, '150137', 'LIMA', 'LIMA', 'SANTA ANITA', 'SANTA ANITA - LOS FICUS'),
(1317, '150138', 'LIMA', 'LIMA', 'SANTA MARIA DEL MAR', 'SANTA MARIA DEL MAR'),
(1318, '150139', 'LIMA', 'LIMA', 'SANTA ROSA', 'SANTA ROSA'),
(1319, '150140', 'LIMA', 'LIMA', 'SANTIAGO DE SURCO', 'SANTIAGO DE SURCO'),
(1320, '150141', 'LIMA', 'LIMA', 'SURQUILLO', 'SURQUILLO'),
(1321, '150142', 'LIMA', 'LIMA', 'VILLA EL SALVADOR', 'VILLA EL SALVADOR'),
(1322, '150143', 'LIMA', 'LIMA', 'VILLA MARIA DEL TRIUNFO', 'VILLA MARIA DEL TRIUNFO'),
(1323, '150201', 'LIMA', 'BARRANCA', 'BARRANCA', 'BARRANCA'),
(1324, '150202', 'LIMA', 'BARRANCA', 'PARAMONGA', 'PARAMONGA'),
(1325, '150203', 'LIMA', 'BARRANCA', 'PATIVILCA', 'PATIVILCA'),
(1326, '150204', 'LIMA', 'BARRANCA', 'SUPE', 'SUPE'),
(1327, '150205', 'LIMA', 'BARRANCA', 'SUPE PUERTO', 'SUPE PUERTO'),
(1328, '150301', 'LIMA', 'CAJATAMBO', 'CAJATAMBO', 'CAJATAMBO'),
(1329, '150302', 'LIMA', 'CAJATAMBO', 'COPA', 'COPA'),
(1330, '150303', 'LIMA', 'CAJATAMBO', 'GORGOR', 'GORGOR'),
(1331, '150304', 'LIMA', 'CAJATAMBO', 'HUANCAPON', 'HUANCAPON'),
(1332, '150305', 'LIMA', 'CAJATAMBO', 'MANAS', 'MANAS'),
(1333, '150401', 'LIMA', 'CANTA', 'CANTA', 'CANTA'),
(1334, '150402', 'LIMA', 'CANTA', 'ARAHUAY', 'ARAHUAY'),
(1335, '150403', 'LIMA', 'CANTA', 'HUAMANTANGA', 'HUAMANTANGA'),
(1336, '150404', 'LIMA', 'CANTA', 'HUAROS', 'HUAROS'),
(1337, '150405', 'LIMA', 'CANTA', 'LACHAQUI', 'LACHAQUI'),
(1338, '150406', 'LIMA', 'CANTA', 'SAN BUENAVENTURA', 'SAN BUENAVENTURA'),
(1339, '150407', 'LIMA', 'CANTA', 'SANTA ROSA DE QUIVES', 'YANGAS'),
(1340, '150501', 'LIMA', 'CAÑETE', 'SAN VICENTE DE CAÑETE', 'SAN VICENTE DE CAÑETE'),
(1341, '150502', 'LIMA', 'CAÑETE', 'ASIA', 'ASIA'),
(1342, '150503', 'LIMA', 'CAÑETE', 'CALANGO', 'CALANGO'),
(1343, '150504', 'LIMA', 'CAÑETE', 'CERRO AZUL', 'CERRO AZUL'),
(1344, '150505', 'LIMA', 'CAÑETE', 'CHILCA', 'CHILCA'),
(1345, '150506', 'LIMA', 'CAÑETE', 'COAYLLO', 'COAYLLO'),
(1346, '150507', 'LIMA', 'CAÑETE', 'IMPERIAL', 'IMPERIAL'),
(1347, '150508', 'LIMA', 'CAÑETE', 'LUNAHUANA', 'LUNAHUANA'),
(1348, '150509', 'LIMA', 'CAÑETE', 'MALA', 'MALA'),
(1349, '150510', 'LIMA', 'CAÑETE', 'NUEVO IMPERIAL', 'NUEVO IMPERIAL'),
(1350, '150511', 'LIMA', 'CAÑETE', 'PACARAN', 'PACARAN'),
(1351, '150512', 'LIMA', 'CAÑETE', 'QUILMANA', 'QUILMANA'),
(1352, '150513', 'LIMA', 'CAÑETE', 'SAN ANTONIO', 'SAN ANTONIO'),
(1353, '150514', 'LIMA', 'CAÑETE', 'SAN LUIS', 'SAN LUIS'),
(1354, '150515', 'LIMA', 'CAÑETE', 'SANTA CRUZ DE FLORES', 'SANTA CRUZ DE FLORES'),
(1355, '150516', 'LIMA', 'CAÑETE', 'ZUÑIGA', 'ZUÑIGA'),
(1356, '150601', 'LIMA', 'HUARAL', 'HUARAL', 'HUARAL'),
(1357, '150602', 'LIMA', 'HUARAL', 'ATAVILLOS ALTO', 'PIRCA'),
(1358, '150603', 'LIMA', 'HUARAL', 'ATAVILLOS BAJO', 'SAN AGUSTIN DE HUAYOPAMPA'),
(1359, '150604', 'LIMA', 'HUARAL', 'AUCALLAMA', 'AUCALLAMA'),
(1360, '150605', 'LIMA', 'HUARAL', 'CHANCAY', 'CHANCAY'),
(1361, '150606', 'LIMA', 'HUARAL', 'IHUARI', 'IHUARI'),
(1362, '150607', 'LIMA', 'HUARAL', 'LAMPIAN', 'LAMPIAN'),
(1363, '150608', 'LIMA', 'HUARAL', 'PACARAOS', 'PACARAOS'),
(1364, '150609', 'LIMA', 'HUARAL', 'SAN MIGUEL DE ACOS', 'ACOS'),
(1365, '150610', 'LIMA', 'HUARAL', 'SANTA CRUZ DE ANDAMARCA', 'SANTA CRUZ DE ANDAMARCA'),
(1366, '150611', 'LIMA', 'HUARAL', 'SUMBILCA', 'SUMBILCA'),
(1367, '150612', 'LIMA', 'HUARAL', 'VEINTISIETE DE NOVIEMBRE', 'CARAC'),
(1368, '150701', 'LIMA', 'HUAROCHIRI', 'MATUCANA', 'MATUCANA'),
(1369, '150702', 'LIMA', 'HUAROCHIRI', 'ANTIOQUIA', 'ANTIOQUIA'),
(1370, '150703', 'LIMA', 'HUAROCHIRI', 'CALLAHUANCA', 'CALLAHUANCA'),
(1371, '150704', 'LIMA', 'HUAROCHIRI', 'CARAMPOMA', 'CARAMPOMA'),
(1372, '150705', 'LIMA', 'HUAROCHIRI', 'CHICLA', 'CHICLA'),
(1373, '150706', 'LIMA', 'HUAROCHIRI', 'CUENCA', 'SAN JOSE DE LOS CHORRILLOS'),
(1374, '150707', 'LIMA', 'HUAROCHIRI', 'HUACHUPAMPA', 'SAN LORENZO DE HUACHUPAMPA'),
(1375, '150708', 'LIMA', 'HUAROCHIRI', 'HUANZA', 'HUANZA'),
(1376, '150709', 'LIMA', 'HUAROCHIRI', 'HUAROCHIRI', 'HUAROCHIRI'),
(1377, '150710', 'LIMA', 'HUAROCHIRI', 'LAHUAYTAMBO', 'LAHUAYTAMBO'),
(1378, '150711', 'LIMA', 'HUAROCHIRI', 'LANGA', 'LANGA'),
(1379, '150712', 'LIMA', 'HUAROCHIRI', 'SAN PEDRO DE LARAOS', 'LARAOS'),
(1380, '150713', 'LIMA', 'HUAROCHIRI', 'MARIATANA', 'MARIATANA'),
(1381, '150714', 'LIMA', 'HUAROCHIRI', 'RICARDO PALMA', 'RICARDO PALMA'),
(1382, '150715', 'LIMA', 'HUAROCHIRI', 'SAN ANDRES DE TUPICOCHA', 'SAN ANDRES DE TUPICOCHA'),
(1383, '150716', 'LIMA', 'HUAROCHIRI', 'SAN ANTONIO', 'CHACLLA'),
(1384, '150717', 'LIMA', 'HUAROCHIRI', 'SAN BARTOLOME', 'SAN BARTOLOME'),
(1385, '150718', 'LIMA', 'HUAROCHIRI', 'SAN DAMIAN', 'SAN DAMIAN'),
(1386, '150719', 'LIMA', 'HUAROCHIRI', 'SAN JUAN DE IRIS', 'SAN JUAN DE IRIS'),
(1387, '150720', 'LIMA', 'HUAROCHIRI', 'SAN JUAN DE TANTARANCHE', 'SAN JUAN DE TANTARANCHE'),
(1388, '150721', 'LIMA', 'HUAROCHIRI', 'SAN LORENZO DE QUINTI', 'SAN LORENZO DE QUINTI'),
(1389, '150722', 'LIMA', 'HUAROCHIRI', 'SAN MATEO', 'SAN MATEO'),
(1390, '150723', 'LIMA', 'HUAROCHIRI', 'SAN MATEO DE OTAO', 'SAN JUAN DE LANCA'),
(1391, '150724', 'LIMA', 'HUAROCHIRI', 'SAN PEDRO DE CASTA', 'SAN PEDRO DE CASTA'),
(1392, '150725', 'LIMA', 'HUAROCHIRI', 'SAN PEDRO DE HUANCAYRE', 'SAN PEDRO'),
(1393, '150726', 'LIMA', 'HUAROCHIRI', 'SANGALLAYA', 'SANGALLAYA'),
(1394, '150727', 'LIMA', 'HUAROCHIRI', 'SANTA CRUZ DE COCACHACRA', 'COCACHACRA'),
(1395, '150728', 'LIMA', 'HUAROCHIRI', 'SANTA EULALIA', 'SANTA EULALIA'),
(1396, '150729', 'LIMA', 'HUAROCHIRI', 'SANTIAGO DE ANCHUCAYA', 'SANTIAGO DE ANCHUCAYA'),
(1397, '150730', 'LIMA', 'HUAROCHIRI', 'SANTIAGO DE TUNA', 'SANTIAGO DE TUNA'),
(1398, '150731', 'LIMA', 'HUAROCHIRI', 'SANTO DOMINGO DE LOS OLLEROS', 'SANTO DOMINGO DE LOS OLLEROS'),
(1399, '150732', 'LIMA', 'HUAROCHIRI', 'SURCO', 'SURCO'),
(1400, '150801', 'LIMA', 'HUAURA', 'HUACHO', 'HUACHO'),
(1401, '150802', 'LIMA', 'HUAURA', 'AMBAR', 'AMBAR'),
(1402, '150803', 'LIMA', 'HUAURA', 'CALETA DE CARQUIN', 'CALETA DE CARQUIN'),
(1403, '150804', 'LIMA', 'HUAURA', 'CHECRAS', 'MARAY'),
(1404, '150805', 'LIMA', 'HUAURA', 'HUALMAY', 'HUALMAY'),
(1405, '150806', 'LIMA', 'HUAURA', 'HUAURA', 'HUAURA'),
(1406, '150807', 'LIMA', 'HUAURA', 'LEONCIO PRADO', 'SANTA CRUZ'),
(1407, '150808', 'LIMA', 'HUAURA', 'PACCHO', 'PACCHO'),
(1408, '150809', 'LIMA', 'HUAURA', 'SANTA LEONOR', 'JUCUL'),
(1409, '150810', 'LIMA', 'HUAURA', 'SANTA MARIA', 'CRUZ BLANCA'),
(1410, '150811', 'LIMA', 'HUAURA', 'SAYAN', 'SAYAN'),
(1411, '150812', 'LIMA', 'HUAURA', 'VEGUETA', 'VEGUETA'),
(1412, '150901', 'LIMA', 'OYON', 'OYON', 'OYON'),
(1413, '150902', 'LIMA', 'OYON', 'ANDAJES', 'ANDAJES'),
(1414, '150903', 'LIMA', 'OYON', 'CAUJUL', 'CAUJUL'),
(1415, '150904', 'LIMA', 'OYON', 'COCHAMARCA', 'COCHAMARCA'),
(1416, '150905', 'LIMA', 'OYON', 'NAVAN', 'NAVAN'),
(1417, '150906', 'LIMA', 'OYON', 'PACHANGARA', 'CHURIN'),
(1418, '151001', 'LIMA', 'YAUYOS', 'YAUYOS', 'YAUYOS'),
(1419, '151002', 'LIMA', 'YAUYOS', 'ALIS', 'ALIS'),
(1420, '151003', 'LIMA', 'YAUYOS', 'ALLAUCA', 'ALLAUCA'),
(1421, '151004', 'LIMA', 'YAUYOS', 'AYAVIRI', 'AYAVIRI'),
(1422, '151005', 'LIMA', 'YAUYOS', 'AZANGARO', 'AZANGARO'),
(1423, '151006', 'LIMA', 'YAUYOS', 'CACRA', 'CACRA'),
(1424, '151007', 'LIMA', 'YAUYOS', 'CARANIA', 'CARANIA'),
(1425, '151008', 'LIMA', 'YAUYOS', 'CATAHUASI', 'CATAHUASI'),
(1426, '151009', 'LIMA', 'YAUYOS', 'CHOCOS', 'CHOCOS'),
(1427, '151010', 'LIMA', 'YAUYOS', 'COCHAS', 'COCHAS'),
(1428, '151011', 'LIMA', 'YAUYOS', 'COLONIA', 'COLONIA'),
(1429, '151012', 'LIMA', 'YAUYOS', 'HONGOS', 'HONGOS'),
(1430, '151013', 'LIMA', 'YAUYOS', 'HUAMPARA', 'HUAMPARA'),
(1431, '151014', 'LIMA', 'YAUYOS', 'HUANCAYA', 'HUANCAYA'),
(1432, '151015', 'LIMA', 'YAUYOS', 'HUANGASCAR', 'HUANGASCAR'),
(1433, '151016', 'LIMA', 'YAUYOS', 'HUANTAN', 'HUANTAN'),
(1434, '151017', 'LIMA', 'YAUYOS', 'HUAÑEC', 'HUAÑEC'),
(1435, '151018', 'LIMA', 'YAUYOS', 'LARAOS', 'LARAOS'),
(1436, '151019', 'LIMA', 'YAUYOS', 'LINCHA', 'LINCHA'),
(1437, '151020', 'LIMA', 'YAUYOS', 'MADEAN', 'MADEAN'),
(1438, '151021', 'LIMA', 'YAUYOS', 'MIRAFLORES', 'MIRAFLORES'),
(1439, '151022', 'LIMA', 'YAUYOS', 'OMAS', 'OMAS'),
(1440, '151023', 'LIMA', 'YAUYOS', 'PUTINZA', 'SAN LORENZO DE PUTINZA'),
(1441, '151024', 'LIMA', 'YAUYOS', 'QUINCHES', 'QUINCHES'),
(1442, '151025', 'LIMA', 'YAUYOS', 'QUINOCAY', 'QUINOCAY'),
(1443, '151026', 'LIMA', 'YAUYOS', 'SAN JOAQUIN', 'SAN JOAQUIN'),
(1444, '151027', 'LIMA', 'YAUYOS', 'SAN PEDRO DE PILAS', 'SAN PEDRO DE PILAS'),
(1445, '151028', 'LIMA', 'YAUYOS', 'TANTA', 'TANTA'),
(1446, '151029', 'LIMA', 'YAUYOS', 'TAURIPAMPA', 'TAURIPAMPA'),
(1447, '151030', 'LIMA', 'YAUYOS', 'TOMAS', 'TOMAS'),
(1448, '151031', 'LIMA', 'YAUYOS', 'TUPE', 'TUPE'),
(1449, '151032', 'LIMA', 'YAUYOS', 'VIÑAC', 'VIÑAC'),
(1450, '151033', 'LIMA', 'YAUYOS', 'VITIS', 'VITIS'),
(1451, '160101', 'LORETO', 'MAYNAS', 'IQUITOS', 'IQUITOS'),
(1452, '160102', 'LORETO', 'MAYNAS', 'ALTO NANAY', 'SANTA MARIA DE NANAY'),
(1453, '160103', 'LORETO', 'MAYNAS', 'FERNANDO LORES', 'TAMSHIYACU'),
(1454, '160104', 'LORETO', 'MAYNAS', 'INDIANA', 'INDIANA'),
(1455, '160105', 'LORETO', 'MAYNAS', 'LAS AMAZONAS', 'FRANCISCO DE ORELLANA'),
(1456, '160106', 'LORETO', 'MAYNAS', 'MAZAN', 'MAZAN'),
(1457, '160107', 'LORETO', 'MAYNAS', 'NAPO', 'SANTA CLOTILDE'),
(1458, '160108', 'LORETO', 'MAYNAS', 'PUNCHANA', 'PUNCHANA'),
(1459, '160110', 'LORETO', 'MAYNAS', 'TORRES CAUSANA', 'PANTOJA'),
(1460, '160112', 'LORETO', 'MAYNAS', 'BELEN', 'BELEN'),
(1461, '160113', 'LORETO', 'MAYNAS', 'SAN JUAN BAUTISTA', 'SAN JUAN'),
(1462, '160201', 'LORETO', 'ALTO AMAZONAS', 'YURIMAGUAS', 'YURIMAGUAS'),
(1463, '160202', 'LORETO', 'ALTO AMAZONAS', 'BALSAPUERTO', 'BALSAPUERTO'),
(1464, '160205', 'LORETO', 'ALTO AMAZONAS', 'JEBEROS', 'JEBEROS'),
(1465, '160206', 'LORETO', 'ALTO AMAZONAS', 'LAGUNAS', 'LAGUNAS'),
(1466, '160210', 'LORETO', 'ALTO AMAZONAS', 'SANTA CRUZ', 'SANTA CRUZ'),
(1467, '160211', 'LORETO', 'ALTO AMAZONAS', 'TENIENTE CESAR LOPEZ ROJAS', 'SHUCUSHUYACU'),
(1468, '160301', 'LORETO', 'LORETO', 'NAUTA', 'NAUTA'),
(1469, '160302', 'LORETO', 'LORETO', 'PARINARI', 'PARINARI'),
(1470, '160303', 'LORETO', 'LORETO', 'TIGRE', 'INTUTU'),
(1471, '160304', 'LORETO', 'LORETO', 'TROMPETEROS', 'VILLA TROMPETEROS'),
(1472, '160305', 'LORETO', 'LORETO', 'URARINAS', 'CONCORDIA'),
(1473, '160401', 'LORETO', 'MARISCAL RAMON CASTILLA', 'RAMON CASTILLA', 'CABALLOCOCHA'),
(1474, '160402', 'LORETO', 'MARISCAL RAMON CASTILLA', 'PEBAS', 'PEBAS'),
(1475, '160403', 'LORETO', 'MARISCAL RAMON CASTILLA', 'YAVARI', 'AMELIA /14'),
(1476, '160404', 'LORETO', 'MARISCAL RAMON CASTILLA', 'SAN PABLO', 'SAN PABLO DE LORETO'),
(1477, '160501', 'LORETO', 'REQUENA', 'REQUENA', 'REQUENA'),
(1478, '160502', 'LORETO', 'REQUENA', 'ALTO TAPICHE', 'SANTA ELENA'),
(1479, '160503', 'LORETO', 'REQUENA', 'CAPELO', 'FLOR DE PUNGA'),
(1480, '160504', 'LORETO', 'REQUENA', 'EMILIO SAN MARTIN', 'TAMANCO'),
(1481, '160505', 'LORETO', 'REQUENA', 'MAQUIA', 'SANTA ISABEL'),
(1482, '160506', 'LORETO', 'REQUENA', 'PUINAHUA', 'BRETAÑA'),
(1483, '160507', 'LORETO', 'REQUENA', 'SAQUENA', 'BAGAZAN'),
(1484, '160508', 'LORETO', 'REQUENA', 'SOPLIN', 'NUEVA ALEJANDRIA (CURINGA)'),
(1485, '160509', 'LORETO', 'REQUENA', 'TAPICHE', 'IBERIA'),
(1486, '160510', 'LORETO', 'REQUENA', 'JENARO HERRERA', 'JENARO HERRERA'),
(1487, '160511', 'LORETO', 'REQUENA', 'YAQUERANA', 'ANGAMOS'),
(1488, '160601', 'LORETO', 'UCAYALI', 'CONTAMANA', 'CONTAMANA'),
(1489, '160602', 'LORETO', 'UCAYALI', 'INAHUAYA', 'INAHUAYA'),
(1490, '160603', 'LORETO', 'UCAYALI', 'PADRE MARQUEZ', 'TIRUNTAN'),
(1491, '160604', 'LORETO', 'UCAYALI', 'PAMPA HERMOSA', 'PAMPA HERMOSA'),
(1492, '160605', 'LORETO', 'UCAYALI', 'SARAYACU', 'DOS DE MAYO'),
(1493, '160606', 'LORETO', 'UCAYALI', 'VARGAS GUERRA', 'ORELLANA'),
(1494, '160701', 'LORETO', 'DATEM DEL MARAÑON', 'BARRANCA', 'SAN LORENZO'),
(1495, '160702', 'LORETO', 'DATEM DEL MARAÑON', 'CAHUAPANAS', 'SANTA MARIA DE CAHUAPANAS'),
(1496, '160703', 'LORETO', 'DATEM DEL MARAÑON', 'MANSERICHE', 'SARAMIRIZA'),
(1497, '160704', 'LORETO', 'DATEM DEL MARAÑON', 'MORONA', 'PUERTO ALEGRIA'),
(1498, '160705', 'LORETO', 'DATEM DEL MARAÑON', 'PASTAZA', 'ULLPAYACU'),
(1499, '160706', 'LORETO', 'DATEM DEL MARAÑON', 'ANDOAS', 'ALIANZA CRISTIANA'),
(1500, '160801', 'LORETO', 'PUTUMAYO', 'PUTUMAYO', 'SAN ANTONIO DEL ESTRECHO'),
(1501, '160802', 'LORETO', 'PUTUMAYO', 'ROSA PANDURO', 'SANTA MERCEDES'),
(1502, '160803', 'LORETO', 'PUTUMAYO', 'TENIENTE MANUEL CLAVERO', 'SOPLIN VARGAS'),
(1503, '160804', 'LORETO', 'PUTUMAYO', 'YAGUAS', 'REMANSO'),
(1504, '170101', 'MADRE DE DIOS', 'TAMBOPATA', 'TAMBOPATA', 'PUERTO MALDONADO'),
(1505, '170102', 'MADRE DE DIOS', 'TAMBOPATA', 'INAMBARI', 'MAZUKO'),
(1506, '170103', 'MADRE DE DIOS', 'TAMBOPATA', 'LAS PIEDRAS', 'LAS PIEDRAS (PLANCHON)'),
(1507, '170104', 'MADRE DE DIOS', 'TAMBOPATA', 'LABERINTO', 'PUERTO ROSARIO DE LABERINTO'),
(1508, '170201', 'MADRE DE DIOS', 'MANU', 'MANU', 'SALVACION'),
(1509, '170202', 'MADRE DE DIOS', 'MANU', 'FITZCARRALD', 'BOCA MANU'),
(1510, '170203', 'MADRE DE DIOS', 'MANU', 'MADRE DE DIOS', 'BOCA COLORADO'),
(1511, '170204', 'MADRE DE DIOS', 'MANU', 'HUEPETUHE', 'HUEPETUHE'),
(1512, '170301', 'MADRE DE DIOS', 'TAHUAMANU', 'IÑAPARI', 'IÑAPARI'),
(1513, '170302', 'MADRE DE DIOS', 'TAHUAMANU', 'IBERIA', 'IBERIA'),
(1514, '170303', 'MADRE DE DIOS', 'TAHUAMANU', 'TAHUAMANU', 'SAN LORENZO'),
(1515, '180101', 'MOQUEGUA', 'MARISCAL NIETO', 'MOQUEGUA', 'MOQUEGUA'),
(1516, '180102', 'MOQUEGUA', 'MARISCAL NIETO', 'CARUMAS', 'CARUMAS'),
(1517, '180103', 'MOQUEGUA', 'MARISCAL NIETO', 'CUCHUMBAYA', 'CUCHUMBAYA'),
(1518, '180104', 'MOQUEGUA', 'MARISCAL NIETO', 'SAMEGUA', 'SAMEGUA'),
(1519, '180105', 'MOQUEGUA', 'MARISCAL NIETO', 'SAN CRISTOBAL', 'CALACOA'),
(1520, '180106', 'MOQUEGUA', 'MARISCAL NIETO', 'TORATA', 'TORATA'),
(1521, '180201', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'OMATE', 'OMATE'),
(1522, '180202', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'CHOJATA', 'CHOJATA'),
(1523, '180203', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'COALAQUE', 'COALAQUE'),
(1524, '180204', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'ICHUÑA', 'ICHUÑA'),
(1525, '180205', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'LA CAPILLA', 'LA CAPILLA'),
(1526, '180206', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'LLOQUE', 'LLOQUE'),
(1527, '180207', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'MATALAQUE', 'MATALAQUE'),
(1528, '180208', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'PUQUINA', 'PUQUINA'),
(1529, '180209', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'QUINISTAQUILLAS', 'QUINISTAQUILLAS'),
(1530, '180210', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'UBINAS', 'UBINAS'),
(1531, '180211', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'YUNGA', 'YUNGA'),
(1532, '180301', 'MOQUEGUA', 'ILO', 'ILO', 'ILO'),
(1533, '180302', 'MOQUEGUA', 'ILO', 'EL ALGARROBAL', 'EL ALGARROBAL'),
(1534, '180303', 'MOQUEGUA', 'ILO', 'PACOCHA', 'PUEBLO NUEVO'),
(1535, '190101', 'PASCO', 'PASCO', 'CHAUPIMARCA', 'CERRO DE PASCO'),
(1536, '190102', 'PASCO', 'PASCO', 'HUACHON', 'HUACHON'),
(1537, '190103', 'PASCO', 'PASCO', 'HUARIACA', 'HUARIACA'),
(1538, '190104', 'PASCO', 'PASCO', 'HUAYLLAY', 'HUAYLLAY'),
(1539, '190105', 'PASCO', 'PASCO', 'NINACACA', 'NINACACA'),
(1540, '190106', 'PASCO', 'PASCO', 'PALLANCHACRA', 'PALLANCHACRA'),
(1541, '190107', 'PASCO', 'PASCO', 'PAUCARTAMBO', 'PAUCARTAMBO'),
(1542, '190108', 'PASCO', 'PASCO', 'SAN FRANCISCO DE ASIS DE YARUSYACAN', 'YARUSYACAN'),
(1543, '190109', 'PASCO', 'PASCO', 'SIMON BOLIVAR', 'SAN ANTONIO DE RANCAS'),
(1544, '190110', 'PASCO', 'PASCO', 'TICLACAYAN', 'TICLACAYAN'),
(1545, '190111', 'PASCO', 'PASCO', 'TINYAHUARCO', 'TINYAHUARCO (SMELTER)'),
(1546, '190112', 'PASCO', 'PASCO', 'VICCO', 'VICCO'),
(1547, '190113', 'PASCO', 'PASCO', 'YANACANCHA', 'YANACANCHA');
INSERT INTO `ubigeo` (`id_ubigeo`, `ubigeo_cod`, `ubigeo_departamento`, `ubigeo_provincia`, `ubigeo_distrito`, `ubigeo_capital`) VALUES
(1548, '190201', 'PASCO', 'DANIEL ALCIDES CARRION', 'YANAHUANCA', 'YANAHUANCA'),
(1549, '190202', 'PASCO', 'DANIEL ALCIDES CARRION', 'CHACAYAN', 'CHACAYAN'),
(1550, '190203', 'PASCO', 'DANIEL ALCIDES CARRION', 'GOYLLARISQUIZGA', 'GOYLLARISQUIZGA'),
(1551, '190204', 'PASCO', 'DANIEL ALCIDES CARRION', 'PAUCAR', 'PAUCAR'),
(1552, '190205', 'PASCO', 'DANIEL ALCIDES CARRION', 'SAN PEDRO DE PILLAO', 'SAN PEDRO DE PILLAO'),
(1553, '190206', 'PASCO', 'DANIEL ALCIDES CARRION', 'SANTA ANA DE TUSI', 'SANTA ANA DE TUSI'),
(1554, '190207', 'PASCO', 'DANIEL ALCIDES CARRION', 'TAPUC', 'TAPUC'),
(1555, '190208', 'PASCO', 'DANIEL ALCIDES CARRION', 'VILCABAMBA', 'VILCABAMBA'),
(1556, '190301', 'PASCO', 'OXAPAMPA', 'OXAPAMPA', 'OXAPAMPA'),
(1557, '190302', 'PASCO', 'OXAPAMPA', 'CHONTABAMBA', 'CHONTABAMBA'),
(1558, '190303', 'PASCO', 'OXAPAMPA', 'HUANCABAMBA', 'HUANCABAMBA'),
(1559, '190304', 'PASCO', 'OXAPAMPA', 'PALCAZU', 'ISCOZACIN'),
(1560, '190305', 'PASCO', 'OXAPAMPA', 'POZUZO', 'POZUZO'),
(1561, '190306', 'PASCO', 'OXAPAMPA', 'PUERTO BERMUDEZ', 'PUERTO BERMUDEZ'),
(1562, '190307', 'PASCO', 'OXAPAMPA', 'VILLA RICA', 'VILLA RICA'),
(1563, '190308', 'PASCO', 'OXAPAMPA', 'CONSTITUCION', 'CONSTITUCION'),
(1564, '200101', 'PIURA', 'PIURA', 'PIURA', 'PIURA'),
(1565, '200104', 'PIURA', 'PIURA', 'CASTILLA', 'CASTILLA'),
(1566, '200105', 'PIURA', 'PIURA', 'CATACAOS', 'CATACAOS'),
(1567, '200107', 'PIURA', 'PIURA', 'CURA MORI', 'CUCUNGARA'),
(1568, '200108', 'PIURA', 'PIURA', 'EL TALLAN', 'SINCHAO'),
(1569, '200109', 'PIURA', 'PIURA', 'LA ARENA', 'LA ARENA'),
(1570, '200110', 'PIURA', 'PIURA', 'LA UNION', 'LA UNION'),
(1571, '200111', 'PIURA', 'PIURA', 'LAS LOMAS', 'LAS LOMAS'),
(1572, '200114', 'PIURA', 'PIURA', 'TAMBO GRANDE', 'TAMBO GRANDE'),
(1573, '200115', 'PIURA', 'PIURA', 'VEINTISEIS DE OCTUBRE', 'SAN MARTIN'),
(1574, '200201', 'PIURA', 'AYABACA', 'AYABACA', 'AYABACA'),
(1575, '200202', 'PIURA', 'AYABACA', 'FRIAS', 'FRIAS'),
(1576, '200203', 'PIURA', 'AYABACA', 'JILILI', 'JILILI'),
(1577, '200204', 'PIURA', 'AYABACA', 'LAGUNAS', 'LAGUNAS'),
(1578, '200205', 'PIURA', 'AYABACA', 'MONTERO', 'MONTERO'),
(1579, '200206', 'PIURA', 'AYABACA', 'PACAIPAMPA', 'PACAIPAMPA'),
(1580, '200207', 'PIURA', 'AYABACA', 'PAIMAS', 'PAIMAS'),
(1581, '200208', 'PIURA', 'AYABACA', 'SAPILLICA', 'SAPILLICA'),
(1582, '200209', 'PIURA', 'AYABACA', 'SICCHEZ', 'SICCHEZ'),
(1583, '200210', 'PIURA', 'AYABACA', 'SUYO', 'SUYO'),
(1584, '200301', 'PIURA', 'HUANCABAMBA', 'HUANCABAMBA', 'HUANCABAMBA'),
(1585, '200302', 'PIURA', 'HUANCABAMBA', 'CANCHAQUE', 'CANCHAQUE'),
(1586, '200303', 'PIURA', 'HUANCABAMBA', 'EL CARMEN DE LA FRONTERA', 'SAPALACHE'),
(1587, '200304', 'PIURA', 'HUANCABAMBA', 'HUARMACA', 'HUARMACA'),
(1588, '200305', 'PIURA', 'HUANCABAMBA', 'LALAQUIZ', 'TUNAL'),
(1589, '200306', 'PIURA', 'HUANCABAMBA', 'SAN MIGUEL DE EL FAIQUE', 'SAN MIGUEL DE EL FAIQUE'),
(1590, '200307', 'PIURA', 'HUANCABAMBA', 'SONDOR', 'SONDOR'),
(1591, '200308', 'PIURA', 'HUANCABAMBA', 'SONDORILLO', 'SONDORILLO'),
(1592, '200401', 'PIURA', 'MORROPON', 'CHULUCANAS', 'CHULUCANAS'),
(1593, '200402', 'PIURA', 'MORROPON', 'BUENOS AIRES', 'BUENOS AIRES'),
(1594, '200403', 'PIURA', 'MORROPON', 'CHALACO', 'CHALACO'),
(1595, '200404', 'PIURA', 'MORROPON', 'LA MATANZA', 'LA MATANZA'),
(1596, '200405', 'PIURA', 'MORROPON', 'MORROPON', 'MORROPON'),
(1597, '200406', 'PIURA', 'MORROPON', 'SALITRAL', 'SALITRAL'),
(1598, '200407', 'PIURA', 'MORROPON', 'SAN JUAN DE BIGOTE', 'BIGOTE'),
(1599, '200408', 'PIURA', 'MORROPON', 'SANTA CATALINA DE MOSSA', 'PALTASHACO'),
(1600, '200409', 'PIURA', 'MORROPON', 'SANTO DOMINGO', 'SANTO DOMINGO'),
(1601, '200410', 'PIURA', 'MORROPON', 'YAMANGO', 'YAMANGO'),
(1602, '200501', 'PIURA', 'PAITA', 'PAITA', 'PAITA'),
(1603, '200502', 'PIURA', 'PAITA', 'AMOTAPE', 'AMOTAPE'),
(1604, '200503', 'PIURA', 'PAITA', 'ARENAL', 'ARENAL'),
(1605, '200504', 'PIURA', 'PAITA', 'COLAN', 'SAN LUCAS (PUEBLO NUEVO DE COLAN)'),
(1606, '200505', 'PIURA', 'PAITA', 'LA HUACA', 'LA HUACA'),
(1607, '200506', 'PIURA', 'PAITA', 'TAMARINDO', 'TAMARINDO'),
(1608, '200507', 'PIURA', 'PAITA', 'VICHAYAL', 'SAN FELIPE DE VICHAYAL'),
(1609, '200601', 'PIURA', 'SULLANA', 'SULLANA', 'SULLANA'),
(1610, '200602', 'PIURA', 'SULLANA', 'BELLAVISTA', 'BELLAVISTA'),
(1611, '200603', 'PIURA', 'SULLANA', 'IGNACIO ESCUDERO', 'SAN JACINTO'),
(1612, '200604', 'PIURA', 'SULLANA', 'LANCONES', 'LANCONES'),
(1613, '200605', 'PIURA', 'SULLANA', 'MARCAVELICA', 'MARCAVELICA'),
(1614, '200606', 'PIURA', 'SULLANA', 'MIGUEL CHECA', 'SOJO'),
(1615, '200607', 'PIURA', 'SULLANA', 'QUERECOTILLO', 'QUERECOTILLO'),
(1616, '200608', 'PIURA', 'SULLANA', 'SALITRAL', 'SALITRAL'),
(1617, '200701', 'PIURA', 'TALARA', 'PARIÑAS', 'TALARA'),
(1618, '200702', 'PIURA', 'TALARA', 'EL ALTO', 'EL ALTO'),
(1619, '200703', 'PIURA', 'TALARA', 'LA BREA', 'NEGRITOS'),
(1620, '200704', 'PIURA', 'TALARA', 'LOBITOS', 'LOBITOS'),
(1621, '200705', 'PIURA', 'TALARA', 'LOS ORGANOS', 'LOS ORGANOS'),
(1622, '200706', 'PIURA', 'TALARA', 'MANCORA', 'MANCORA'),
(1623, '200801', 'PIURA', 'SECHURA', 'SECHURA', 'SECHURA'),
(1624, '200802', 'PIURA', 'SECHURA', 'BELLAVISTA DE LA UNION', 'BELLAVISTA'),
(1625, '200803', 'PIURA', 'SECHURA', 'BERNAL', 'BERNAL'),
(1626, '200804', 'PIURA', 'SECHURA', 'CRISTO NOS VALGA', 'SAN CRISTO'),
(1627, '200805', 'PIURA', 'SECHURA', 'VICE', 'VICE'),
(1628, '200806', 'PIURA', 'SECHURA', 'RINCONADA LLICUAR', 'DOS PUEBLOS'),
(1629, '210101', 'PUNO', 'PUNO', 'PUNO', 'PUNO'),
(1630, '210102', 'PUNO', 'PUNO', 'ACORA', 'ACORA'),
(1631, '210103', 'PUNO', 'PUNO', 'AMANTANI', 'AMANTANI'),
(1632, '210104', 'PUNO', 'PUNO', 'ATUNCOLLA', 'ATUNCOLLA'),
(1633, '210105', 'PUNO', 'PUNO', 'CAPACHICA', 'CAPACHICA'),
(1634, '210106', 'PUNO', 'PUNO', 'CHUCUITO', 'CHUCUITO'),
(1635, '210107', 'PUNO', 'PUNO', 'COATA', 'COATA'),
(1636, '210108', 'PUNO', 'PUNO', 'HUATA', 'HUATA'),
(1637, '210109', 'PUNO', 'PUNO', 'MAÑAZO', 'MAÑAZO'),
(1638, '210110', 'PUNO', 'PUNO', 'PAUCARCOLLA', 'PAUCARCOLLA'),
(1639, '210111', 'PUNO', 'PUNO', 'PICHACANI', 'LARAQUERI'),
(1640, '210112', 'PUNO', 'PUNO', 'PLATERIA', 'PLATERIA'),
(1641, '210113', 'PUNO', 'PUNO', 'SAN ANTONIO', 'SAN ANTONIO DE ESQUILACHE /15'),
(1642, '210114', 'PUNO', 'PUNO', 'TIQUILLACA', 'TIQUILLACA'),
(1643, '210115', 'PUNO', 'PUNO', 'VILQUE', 'VILQUE'),
(1644, '210201', 'PUNO', 'AZANGARO', 'AZANGARO', 'AZANGARO'),
(1645, '210202', 'PUNO', 'AZANGARO', 'ACHAYA', 'ACHAYA'),
(1646, '210203', 'PUNO', 'AZANGARO', 'ARAPA', 'ARAPA'),
(1647, '210204', 'PUNO', 'AZANGARO', 'ASILLO', 'ASILLO'),
(1648, '210205', 'PUNO', 'AZANGARO', 'CAMINACA', 'CAMINACA'),
(1649, '210206', 'PUNO', 'AZANGARO', 'CHUPA', 'CHUPA'),
(1650, '210207', 'PUNO', 'AZANGARO', 'JOSE DOMINGO CHOQUEHUANCA', 'ESTACION DE PUCARA'),
(1651, '210208', 'PUNO', 'AZANGARO', 'MUÑANI', 'MUÑANI'),
(1652, '210209', 'PUNO', 'AZANGARO', 'POTONI', 'POTONI'),
(1653, '210210', 'PUNO', 'AZANGARO', 'SAMAN', 'SAMAN'),
(1654, '210211', 'PUNO', 'AZANGARO', 'SAN ANTON', 'SAN ANTON'),
(1655, '210212', 'PUNO', 'AZANGARO', 'SAN JOSE', 'SAN JOSE'),
(1656, '210213', 'PUNO', 'AZANGARO', 'SAN JUAN DE SALINAS', 'SAN JUAN DE SALINAS'),
(1657, '210214', 'PUNO', 'AZANGARO', 'SANTIAGO DE PUPUJA', 'SANTIAGO DE PUPUJA'),
(1658, '210215', 'PUNO', 'AZANGARO', 'TIRAPATA', 'TIRAPATA'),
(1659, '210301', 'PUNO', 'CARABAYA', 'MACUSANI', 'MACUSANI'),
(1660, '210302', 'PUNO', 'CARABAYA', 'AJOYANI', 'AJOYANI'),
(1661, '210303', 'PUNO', 'CARABAYA', 'AYAPATA', 'AYAPATA'),
(1662, '210304', 'PUNO', 'CARABAYA', 'COASA', 'COASA'),
(1663, '210305', 'PUNO', 'CARABAYA', 'CORANI', 'CORANI'),
(1664, '210306', 'PUNO', 'CARABAYA', 'CRUCERO', 'CRUCERO'),
(1665, '210307', 'PUNO', 'CARABAYA', 'ITUATA', 'ITUATA /16'),
(1666, '210308', 'PUNO', 'CARABAYA', 'OLLACHEA', 'OLLACHEA'),
(1667, '210309', 'PUNO', 'CARABAYA', 'SAN GABAN', 'LANLACUNI BAJO'),
(1668, '210310', 'PUNO', 'CARABAYA', 'USICAYOS', 'USICAYOS'),
(1669, '210401', 'PUNO', 'CHUCUITO', 'JULI', 'JULI'),
(1670, '210402', 'PUNO', 'CHUCUITO', 'DESAGUADERO', 'DESAGUADERO'),
(1671, '210403', 'PUNO', 'CHUCUITO', 'HUACULLANI', 'HUACULLANI'),
(1672, '210404', 'PUNO', 'CHUCUITO', 'KELLUYO', 'KELLUYO'),
(1673, '210405', 'PUNO', 'CHUCUITO', 'PISACOMA', 'PISACOMA'),
(1674, '210406', 'PUNO', 'CHUCUITO', 'POMATA', 'POMATA'),
(1675, '210407', 'PUNO', 'CHUCUITO', 'ZEPITA', 'ZEPITA'),
(1676, '210501', 'PUNO', 'EL COLLAO', 'ILAVE', 'ILAVE'),
(1677, '210502', 'PUNO', 'EL COLLAO', 'CAPAZO', 'CAPAZO'),
(1678, '210503', 'PUNO', 'EL COLLAO', 'PILCUYO', 'PILCUYO'),
(1679, '210504', 'PUNO', 'EL COLLAO', 'SANTA ROSA', 'MAZO CRUZ'),
(1680, '210505', 'PUNO', 'EL COLLAO', 'CONDURIRI', 'CONDURIRI'),
(1681, '210601', 'PUNO', 'HUANCANE', 'HUANCANE', 'HUANCANE'),
(1682, '210602', 'PUNO', 'HUANCANE', 'COJATA', 'COJATA'),
(1683, '210603', 'PUNO', 'HUANCANE', 'HUATASANI', 'HUATASANI'),
(1684, '210604', 'PUNO', 'HUANCANE', 'INCHUPALLA', 'INCHUPALLA'),
(1685, '210605', 'PUNO', 'HUANCANE', 'PUSI', 'PUSI'),
(1686, '210606', 'PUNO', 'HUANCANE', 'ROSASPATA', 'ROSASPATA'),
(1687, '210607', 'PUNO', 'HUANCANE', 'TARACO', 'TARACO'),
(1688, '210608', 'PUNO', 'HUANCANE', 'VILQUE CHICO', 'VILQUE CHICO'),
(1689, '210701', 'PUNO', 'LAMPA', 'LAMPA', 'LAMPA'),
(1690, '210702', 'PUNO', 'LAMPA', 'CABANILLA', 'CABANILLA'),
(1691, '210703', 'PUNO', 'LAMPA', 'CALAPUJA', 'CALAPUJA'),
(1692, '210704', 'PUNO', 'LAMPA', 'NICASIO', 'NICASIO'),
(1693, '210705', 'PUNO', 'LAMPA', 'OCUVIRI', 'OCUVIRI'),
(1694, '210706', 'PUNO', 'LAMPA', 'PALCA', 'PALCA'),
(1695, '210707', 'PUNO', 'LAMPA', 'PARATIA', 'PARATIA'),
(1696, '210708', 'PUNO', 'LAMPA', 'PUCARA', 'PUCARA'),
(1697, '210709', 'PUNO', 'LAMPA', 'SANTA LUCIA', 'SANTA LUCIA'),
(1698, '210710', 'PUNO', 'LAMPA', 'VILAVILA', 'VILAVILA'),
(1699, '210801', 'PUNO', 'MELGAR', 'AYAVIRI', 'AYAVIRI'),
(1700, '210802', 'PUNO', 'MELGAR', 'ANTAUTA', 'ANTAUTA'),
(1701, '210803', 'PUNO', 'MELGAR', 'CUPI', 'CUPI'),
(1702, '210804', 'PUNO', 'MELGAR', 'LLALLI', 'LLALLI'),
(1703, '210805', 'PUNO', 'MELGAR', 'MACARI', 'MACARI'),
(1704, '210806', 'PUNO', 'MELGAR', 'NUÑOA', 'NUÑOA'),
(1705, '210807', 'PUNO', 'MELGAR', 'ORURILLO', 'ORURILLO'),
(1706, '210808', 'PUNO', 'MELGAR', 'SANTA ROSA', 'SANTA ROSA'),
(1707, '210809', 'PUNO', 'MELGAR', 'UMACHIRI', 'UMACHIRI'),
(1708, '210901', 'PUNO', 'MOHO', 'MOHO', 'MOHO'),
(1709, '210902', 'PUNO', 'MOHO', 'CONIMA', 'CONIMA'),
(1710, '210903', 'PUNO', 'MOHO', 'HUAYRAPATA', 'HUAYRAPATA'),
(1711, '210904', 'PUNO', 'MOHO', 'TILALI', 'TILALI'),
(1712, '211001', 'PUNO', 'SAN ANTONIO DE PUTINA', 'PUTINA', 'PUTINA'),
(1713, '211002', 'PUNO', 'SAN ANTONIO DE PUTINA', 'ANANEA', 'ANANEA'),
(1714, '211003', 'PUNO', 'SAN ANTONIO DE PUTINA', 'PEDRO VILCA APAZA', 'AYRAMPUNI'),
(1715, '211004', 'PUNO', 'SAN ANTONIO DE PUTINA', 'QUILCAPUNCU', 'QUILCAPUNCU'),
(1716, '211005', 'PUNO', 'SAN ANTONIO DE PUTINA', 'SINA', 'SINA'),
(1717, '211101', 'PUNO', 'SAN ROMAN', 'JULIACA', 'JULIACA'),
(1718, '211102', 'PUNO', 'SAN ROMAN', 'CABANA', 'CABANA'),
(1719, '211103', 'PUNO', 'SAN ROMAN', 'CABANILLAS', 'DEUSTUA'),
(1720, '211104', 'PUNO', 'SAN ROMAN', 'CARACOTO', 'CARACOTO'),
(1721, '211105', 'PUNO', 'SAN ROMAN', 'SAN MIGUEL', 'SAN MIGUEL'),
(1722, '211201', 'PUNO', 'SANDIA', 'SANDIA', 'SANDIA'),
(1723, '211202', 'PUNO', 'SANDIA', 'CUYOCUYO', 'CUYOCUYO'),
(1724, '211203', 'PUNO', 'SANDIA', 'LIMBANI', 'LIMBANI'),
(1725, '211204', 'PUNO', 'SANDIA', 'PATAMBUCO', 'PATAMBUCO'),
(1726, '211205', 'PUNO', 'SANDIA', 'PHARA', 'PHARA'),
(1727, '211206', 'PUNO', 'SANDIA', 'QUIACA', 'QUIACA'),
(1728, '211207', 'PUNO', 'SANDIA', 'SAN JUAN DEL ORO', 'SAN JUAN DEL ORO'),
(1729, '211208', 'PUNO', 'SANDIA', 'YANAHUAYA', 'YANAHUAYA'),
(1730, '211209', 'PUNO', 'SANDIA', 'ALTO INAMBARI', 'MASSIAPO'),
(1731, '211210', 'PUNO', 'SANDIA', 'SAN PEDRO DE PUTINA PUNCO', 'PUTINA PUNCO'),
(1732, '211301', 'PUNO', 'YUNGUYO', 'YUNGUYO', 'YUNGUYO'),
(1733, '211302', 'PUNO', 'YUNGUYO', 'ANAPIA', 'ANAPIA'),
(1734, '211303', 'PUNO', 'YUNGUYO', 'COPANI', 'COPANI'),
(1735, '211304', 'PUNO', 'YUNGUYO', 'CUTURAPI', 'SAN JUAN DE CUTURAPI'),
(1736, '211305', 'PUNO', 'YUNGUYO', 'OLLARAYA', 'SAN MIGUEL DE OLLARAYA'),
(1737, '211306', 'PUNO', 'YUNGUYO', 'TINICACHI', 'TINICACHI'),
(1738, '211307', 'PUNO', 'YUNGUYO', 'UNICACHI', 'MARCAJA'),
(1739, '220101', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA', 'MOYOBAMBA'),
(1740, '220102', 'SAN MARTIN', 'MOYOBAMBA', 'CALZADA', 'CALZADA'),
(1741, '220103', 'SAN MARTIN', 'MOYOBAMBA', 'HABANA', 'HABANA'),
(1742, '220104', 'SAN MARTIN', 'MOYOBAMBA', 'JEPELACIO', 'JEPELACIO'),
(1743, '220105', 'SAN MARTIN', 'MOYOBAMBA', 'SORITOR', 'SORITOR'),
(1744, '220106', 'SAN MARTIN', 'MOYOBAMBA', 'YANTALO', 'YANTALO'),
(1745, '220201', 'SAN MARTIN', 'BELLAVISTA', 'BELLAVISTA', 'BELLAVISTA'),
(1746, '220202', 'SAN MARTIN', 'BELLAVISTA', 'ALTO BIAVO', 'CUZCO'),
(1747, '220203', 'SAN MARTIN', 'BELLAVISTA', 'BAJO BIAVO', 'NUEVO LIMA'),
(1748, '220204', 'SAN MARTIN', 'BELLAVISTA', 'HUALLAGA', 'LEDOY'),
(1749, '220205', 'SAN MARTIN', 'BELLAVISTA', 'SAN PABLO', 'SAN PABLO'),
(1750, '220206', 'SAN MARTIN', 'BELLAVISTA', 'SAN RAFAEL', 'SAN RAFAEL'),
(1751, '220301', 'SAN MARTIN', 'EL DORADO', 'SAN JOSE DE SISA', 'SAN JOSE DE SISA'),
(1752, '220302', 'SAN MARTIN', 'EL DORADO', 'AGUA BLANCA', 'AGUA BLANCA'),
(1753, '220303', 'SAN MARTIN', 'EL DORADO', 'SAN MARTIN', 'SAN MARTIN'),
(1754, '220304', 'SAN MARTIN', 'EL DORADO', 'SANTA ROSA', 'SANTA ROSA'),
(1755, '220305', 'SAN MARTIN', 'EL DORADO', 'SHATOJA', 'SHATOJA'),
(1756, '220401', 'SAN MARTIN', 'HUALLAGA', 'SAPOSOA', 'SAPOSOA'),
(1757, '220402', 'SAN MARTIN', 'HUALLAGA', 'ALTO SAPOSOA', 'PASARRAYA'),
(1758, '220403', 'SAN MARTIN', 'HUALLAGA', 'EL ESLABON', 'EL ESLABON'),
(1759, '220404', 'SAN MARTIN', 'HUALLAGA', 'PISCOYACU', 'PISCOYACU'),
(1760, '220405', 'SAN MARTIN', 'HUALLAGA', 'SACANCHE', 'SACANCHE'),
(1761, '220406', 'SAN MARTIN', 'HUALLAGA', 'TINGO DE SAPOSOA', 'TINGO DE SAPOSOA'),
(1762, '220501', 'SAN MARTIN', 'LAMAS', 'LAMAS', 'LAMAS'),
(1763, '220502', 'SAN MARTIN', 'LAMAS', 'ALONSO DE ALVARADO', 'ROQUE'),
(1764, '220503', 'SAN MARTIN', 'LAMAS', 'BARRANQUITA', 'BARRANQUITA'),
(1765, '220504', 'SAN MARTIN', 'LAMAS', 'CAYNARACHI', 'PONGO DE CAYNARACHI'),
(1766, '220505', 'SAN MARTIN', 'LAMAS', 'CUÑUMBUQUI', 'CUÑUMBUQUI'),
(1767, '220506', 'SAN MARTIN', 'LAMAS', 'PINTO RECODO', 'PINTO RECODO'),
(1768, '220507', 'SAN MARTIN', 'LAMAS', 'RUMISAPA', 'RUMISAPA'),
(1769, '220508', 'SAN MARTIN', 'LAMAS', 'SAN ROQUE DE CUMBAZA', 'SAN ROQUE DE CUMBAZA'),
(1770, '220509', 'SAN MARTIN', 'LAMAS', 'SHANAO', 'SHANAO'),
(1771, '220510', 'SAN MARTIN', 'LAMAS', 'TABALOSOS', 'TABALOSOS'),
(1772, '220511', 'SAN MARTIN', 'LAMAS', 'ZAPATERO', 'ZAPATERO'),
(1773, '220601', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI', 'JUANJUI'),
(1774, '220602', 'SAN MARTIN', 'MARISCAL CACERES', 'CAMPANILLA', 'CAMPANILLA'),
(1775, '220603', 'SAN MARTIN', 'MARISCAL CACERES', 'HUICUNGO', 'HUICUNGO'),
(1776, '220604', 'SAN MARTIN', 'MARISCAL CACERES', 'PACHIZA', 'PACHIZA'),
(1777, '220605', 'SAN MARTIN', 'MARISCAL CACERES', 'PAJARILLO', 'PAJARILLO'),
(1778, '220701', 'SAN MARTIN', 'PICOTA', 'PICOTA', 'PICOTA'),
(1779, '220702', 'SAN MARTIN', 'PICOTA', 'BUENOS AIRES', 'BUENOS AIRES'),
(1780, '220703', 'SAN MARTIN', 'PICOTA', 'CASPISAPA', 'CASPISAPA'),
(1781, '220704', 'SAN MARTIN', 'PICOTA', 'PILLUANA', 'PILLUANA'),
(1782, '220705', 'SAN MARTIN', 'PICOTA', 'PUCACACA', 'PUCACACA'),
(1783, '220706', 'SAN MARTIN', 'PICOTA', 'SAN CRISTOBAL', 'PUERTO RICO'),
(1784, '220707', 'SAN MARTIN', 'PICOTA', 'SAN HILARION', 'SAN CRISTOBAL DE SISA'),
(1785, '220708', 'SAN MARTIN', 'PICOTA', 'SHAMBOYACU', 'SHAMBOYACU'),
(1786, '220709', 'SAN MARTIN', 'PICOTA', 'TINGO DE PONASA', 'TINGO DE PONASA'),
(1787, '220710', 'SAN MARTIN', 'PICOTA', 'TRES UNIDOS', 'TRES UNIDOS'),
(1788, '220801', 'SAN MARTIN', 'RIOJA', 'RIOJA', 'RIOJA'),
(1789, '220802', 'SAN MARTIN', 'RIOJA', 'AWAJUN', 'BAJO NARANJILLO'),
(1790, '220803', 'SAN MARTIN', 'RIOJA', 'ELIAS SOPLIN VARGAS', 'SEGUNDA JERUSALEN-AZUNGUILLO'),
(1791, '220804', 'SAN MARTIN', 'RIOJA', 'NUEVA CAJAMARCA', 'NUEVA CAJAMARCA'),
(1792, '220805', 'SAN MARTIN', 'RIOJA', 'PARDO MIGUEL', 'NARANJOS'),
(1793, '220806', 'SAN MARTIN', 'RIOJA', 'POSIC', 'POSIC'),
(1794, '220807', 'SAN MARTIN', 'RIOJA', 'SAN FERNANDO', 'SAN FERNANDO'),
(1795, '220808', 'SAN MARTIN', 'RIOJA', 'YORONGOS', 'YORONGOS'),
(1796, '220809', 'SAN MARTIN', 'RIOJA', 'YURACYACU', 'YURACYACU'),
(1797, '220901', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO', 'TARAPOTO'),
(1798, '220902', 'SAN MARTIN', 'SAN MARTIN', 'ALBERTO LEVEAU', 'UTCURARCA'),
(1799, '220903', 'SAN MARTIN', 'SAN MARTIN', 'CACATACHI', 'CACATACHI'),
(1800, '220904', 'SAN MARTIN', 'SAN MARTIN', 'CHAZUTA', 'CHAZUTA'),
(1801, '220905', 'SAN MARTIN', 'SAN MARTIN', 'CHIPURANA', 'NAVARRO'),
(1802, '220906', 'SAN MARTIN', 'SAN MARTIN', 'EL PORVENIR', 'PELEJO'),
(1803, '220907', 'SAN MARTIN', 'SAN MARTIN', 'HUIMBAYOC', 'HUIMBAYOC'),
(1804, '220908', 'SAN MARTIN', 'SAN MARTIN', 'JUAN GUERRA', 'JUAN GUERRA'),
(1805, '220909', 'SAN MARTIN', 'SAN MARTIN', 'LA BANDA DE SHILCAYO', 'LA BANDA'),
(1806, '220910', 'SAN MARTIN', 'SAN MARTIN', 'MORALES', 'MORALES'),
(1807, '220911', 'SAN MARTIN', 'SAN MARTIN', 'PAPAPLAYA', 'PAPAPLAYA'),
(1808, '220912', 'SAN MARTIN', 'SAN MARTIN', 'SAN ANTONIO', 'SAN ANTONIO'),
(1809, '220913', 'SAN MARTIN', 'SAN MARTIN', 'SAUCE', 'SAUCE'),
(1810, '220914', 'SAN MARTIN', 'SAN MARTIN', 'SHAPAJA', 'SHAPAJA'),
(1811, '221001', 'SAN MARTIN', 'TOCACHE', 'TOCACHE', 'TOCACHE'),
(1812, '221002', 'SAN MARTIN', 'TOCACHE', 'NUEVO PROGRESO', 'NUEVO PROGRESO'),
(1813, '221003', 'SAN MARTIN', 'TOCACHE', 'POLVORA', 'POLVORA'),
(1814, '221004', 'SAN MARTIN', 'TOCACHE', 'SHUNTE', 'TAMBO DE PAJA /18'),
(1815, '221005', 'SAN MARTIN', 'TOCACHE', 'UCHIZA', 'UCHIZA'),
(1816, '230101', 'TACNA', 'TACNA', 'TACNA', 'TACNA'),
(1817, '230102', 'TACNA', 'TACNA', 'ALTO DE LA ALIANZA', 'LA ESPERANZA'),
(1818, '230103', 'TACNA', 'TACNA', 'CALANA', 'CALANA'),
(1819, '230104', 'TACNA', 'TACNA', 'CIUDAD NUEVA', 'CIUDAD NUEVA'),
(1820, '230105', 'TACNA', 'TACNA', 'INCLAN', 'SAMA GRANDE'),
(1821, '230106', 'TACNA', 'TACNA', 'PACHIA', 'PACHIA'),
(1822, '230107', 'TACNA', 'TACNA', 'PALCA', 'PALCA'),
(1823, '230108', 'TACNA', 'TACNA', 'POCOLLAY', 'POCOLLAY'),
(1824, '230109', 'TACNA', 'TACNA', 'SAMA', 'LAS YARAS'),
(1825, '230110', 'TACNA', 'TACNA', 'CORONEL GREGORIO ALBARRACIN LANCHIPA', 'ALFONSO UGARTE'),
(1826, '230111', 'TACNA', 'TACNA', 'LA YARADA LOS PALOS', 'LOS PALOS'),
(1827, '230201', 'TACNA', 'CANDARAVE', 'CANDARAVE', 'CANDARAVE'),
(1828, '230202', 'TACNA', 'CANDARAVE', 'CAIRANI', 'CAIRANI'),
(1829, '230203', 'TACNA', 'CANDARAVE', 'CAMILACA', 'ALTO CAMILACA'),
(1830, '230204', 'TACNA', 'CANDARAVE', 'CURIBAYA', 'CURIBAYA'),
(1831, '230205', 'TACNA', 'CANDARAVE', 'HUANUARA', 'HUANUARA'),
(1832, '230206', 'TACNA', 'CANDARAVE', 'QUILAHUANI', 'QUILAHUANI'),
(1833, '230301', 'TACNA', 'JORGE BASADRE', 'LOCUMBA', 'LOCUMBA'),
(1834, '230302', 'TACNA', 'JORGE BASADRE', 'ILABAYA', 'ILABAYA'),
(1835, '230303', 'TACNA', 'JORGE BASADRE', 'ITE', 'ITE'),
(1836, '230401', 'TACNA', 'TARATA', 'TARATA', 'TARATA'),
(1837, '230402', 'TACNA', 'TARATA', 'HEROES ALBARRACIN', 'CHUCATAMANI'),
(1838, '230403', 'TACNA', 'TARATA', 'ESTIQUE', 'ESTIQUE'),
(1839, '230404', 'TACNA', 'TARATA', 'ESTIQUE-PAMPA', 'ESTIQUE-PAMPA'),
(1840, '230405', 'TACNA', 'TARATA', 'SITAJARA', 'SITAJARA'),
(1841, '230406', 'TACNA', 'TARATA', 'SUSAPAYA', 'SUSAPAYA'),
(1842, '230407', 'TACNA', 'TARATA', 'TARUCACHI', 'TARUCACHI'),
(1843, '230408', 'TACNA', 'TARATA', 'TICACO', 'TICACO'),
(1844, '240101', 'TUMBES', 'TUMBES', 'TUMBES', 'TUMBES'),
(1845, '240102', 'TUMBES', 'TUMBES', 'CORRALES', 'SAN PEDRO DE LOS INCAS'),
(1846, '240103', 'TUMBES', 'TUMBES', 'LA CRUZ', 'CALETA CRUZ'),
(1847, '240104', 'TUMBES', 'TUMBES', 'PAMPAS DE HOSPITAL', 'PAMPAS DE HOSPITAL'),
(1848, '240105', 'TUMBES', 'TUMBES', 'SAN JACINTO', 'SAN JACINTO'),
(1849, '240106', 'TUMBES', 'TUMBES', 'SAN JUAN DE LA VIRGEN', 'SAN JUAN DE LA VIRGEN'),
(1850, '240201', 'TUMBES', 'CONTRALMIRANTE VILLAR', 'ZORRITOS', 'ZORRITOS'),
(1851, '240202', 'TUMBES', 'CONTRALMIRANTE VILLAR', 'CASITAS', 'CAÑAVERAL'),
(1852, '240203', 'TUMBES', 'CONTRALMIRANTE VILLAR', 'CANOAS DE PUNTA SAL', 'CANCAS'),
(1853, '240301', 'TUMBES', 'ZARUMILLA', 'ZARUMILLA', 'ZARUMILLA'),
(1854, '240302', 'TUMBES', 'ZARUMILLA', 'AGUAS VERDES', 'AGUAS VERDES'),
(1855, '240303', 'TUMBES', 'ZARUMILLA', 'MATAPALO', 'MATAPALO'),
(1856, '240304', 'TUMBES', 'ZARUMILLA', 'PAPAYAL', 'PAPAYAL'),
(1857, '250101', 'UCAYALI', 'CORONEL PORTILLO', 'CALLERIA', 'PUCALLPA'),
(1858, '250102', 'UCAYALI', 'CORONEL PORTILLO', 'CAMPOVERDE', 'CAMPO VERDE'),
(1859, '250103', 'UCAYALI', 'CORONEL PORTILLO', 'IPARIA', 'IPARIA'),
(1860, '250104', 'UCAYALI', 'CORONEL PORTILLO', 'MASISEA', 'MASISEA'),
(1861, '250105', 'UCAYALI', 'CORONEL PORTILLO', 'YARINACOCHA', 'PUERTO CALLAO'),
(1862, '250106', 'UCAYALI', 'CORONEL PORTILLO', 'NUEVA REQUENA', 'NUEVA REQUENA'),
(1863, '250107', 'UCAYALI', 'CORONEL PORTILLO', 'MANANTAY', 'SAN FERNANDO'),
(1864, '250201', 'UCAYALI', 'ATALAYA', 'RAYMONDI', 'ATALAYA'),
(1865, '250202', 'UCAYALI', 'ATALAYA', 'SEPAHUA', 'SEPAHUA'),
(1866, '250203', 'UCAYALI', 'ATALAYA', 'TAHUANIA', 'BOLOGNESI'),
(1867, '250204', 'UCAYALI', 'ATALAYA', 'YURUA', 'BREU'),
(1868, '250301', 'UCAYALI', 'PADRE ABAD', 'PADRE ABAD', 'AGUAYTIA'),
(1869, '250302', 'UCAYALI', 'PADRE ABAD', 'IRAZOLA', 'SAN ALEJANDRO'),
(1870, '250303', 'UCAYALI', 'PADRE ABAD', 'CURIMANA', 'CURIMANA'),
(1871, '250304', 'UCAYALI', 'PADRE ABAD', 'NESHUYA', 'MONTE ALEGRE'),
(1872, '250305', 'UCAYALI', 'PADRE ABAD', 'ALEXANDER VON HUMBOLDT', 'ALEXANDER VON HUMBOLDT'),
(1873, '250401', 'UCAYALI', 'PURUS', 'PURUS', 'ESPERANZA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_de_medida`
--

CREATE TABLE `unidad_de_medida` (
  `id_unidad` int NOT NULL,
  `unidad_nombre` varchar(100) DEFAULT NULL,
  `unidad_codigo` varchar(100) DEFAULT NULL,
  `unidad_estado` tinyint(1) DEFAULT NULL,
  `creacion_usuario` int DEFAULT NULL,
  `creacion_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `unidad_de_medida`
--

INSERT INTO `unidad_de_medida` (`id_unidad`, `unidad_nombre`, `unidad_codigo`, `unidad_estado`, `creacion_usuario`, `creacion_datetime`) VALUES
(1, 'BOBINAS                                           ', '4A', 0, 1, '2023-09-29 22:00:09'),
(2, 'BALDE                                             ', 'BJ', 0, 1, '2023-09-29 22:00:09'),
(3, 'BARRILES                                          ', 'BLL', 0, 1, '2023-09-29 22:00:09'),
(4, 'BOLSA                                             ', 'BG', 1, 1, '2023-09-29 22:00:09'),
(5, 'BOTELLAS                                          ', 'BO', 1, 1, '2023-09-29 22:00:09'),
(6, 'CAJA                                              ', 'BX', 1, 1, '2023-09-29 22:00:09'),
(7, 'CARTONES                                          ', 'CT', 0, 1, '2023-09-29 22:00:09'),
(8, 'CENTIMETRO CUADRADO                               ', 'CMK', 0, 1, '2023-09-29 22:00:09'),
(9, 'CENTIMETRO CUBICO                                 ', 'CMQ', 0, 1, '2023-09-29 22:00:09'),
(10, 'CENTIMETRO LINEAL                                 ', 'CMT', 0, 1, '2023-09-29 22:00:09'),
(11, 'CIENTO DE UNIDADES                                ', 'CEN', 0, 1, '2023-09-29 22:00:09'),
(12, 'CILINDRO                                          ', 'CY', 1, 1, '2023-09-29 22:00:09'),
(13, 'CONOS                                             ', 'CJ', 0, 1, '2023-09-29 22:00:09'),
(14, 'DOCENA                                            ', 'DZN', 0, 1, '2023-09-29 22:00:09'),
(15, 'DOCENA POR 10**6                                  ', 'DZP', 0, 1, '2023-09-29 22:00:09'),
(16, 'FARDO                                             ', 'BE', 0, 1, '2023-09-29 22:00:09'),
(17, 'GALON INGLES (4,545956L)', 'GLI', 0, 1, '2023-09-29 22:00:09'),
(18, 'GRAMO                                             ', 'GRM', 1, 1, '2023-09-29 22:00:09'),
(19, 'GRUESA                                            ', 'GRO', 0, 1, '2023-09-29 22:00:09'),
(20, 'HECTOLITRO                                        ', 'HLT', 0, 1, '2023-09-29 22:00:09'),
(21, 'HOJA                                              ', 'LEF', 0, 1, '2023-09-29 22:00:09'),
(22, 'JUEGO                                             ', 'SET', 0, 1, '2023-09-29 22:00:09'),
(23, 'KILOGRAMO                                         ', 'KGM', 1, 1, '2023-09-29 22:00:09'),
(24, 'KILOMETRO                                         ', 'KTM', 0, 1, '2023-09-29 22:00:09'),
(25, 'KILOVATIO HORA                                    ', 'KWH', 0, 1, '2023-09-29 22:00:09'),
(26, 'KIT                                               ', 'KT', 0, 1, '2023-09-29 22:00:09'),
(27, 'LATAS                                             ', 'CA', 0, 1, '2023-09-29 22:00:09'),
(28, 'LIBRAS                                            ', 'LBR', 0, 1, '2023-09-29 22:00:09'),
(29, 'LITRO                                             ', 'LTR', 1, 1, '2023-09-29 22:00:09'),
(30, 'MEGAWATT HORA                                     ', 'MWH', 0, 1, '2023-09-29 22:00:09'),
(31, 'METRO                                             ', 'MTR', 1, 1, '2023-09-29 22:00:09'),
(32, 'METRO CUADRADO                                    ', 'MTK', 0, 1, '2023-09-29 22:00:09'),
(33, 'METRO CUBICO                                      ', 'MTQ', 0, 1, '2023-09-29 22:00:09'),
(34, 'MILIGRAMOS                                        ', 'MGM', 0, 1, '2023-09-29 22:00:09'),
(35, 'MILILITRO                                         ', 'MLT', 0, 1, '2023-09-29 22:00:09'),
(36, 'MILIMETRO                                         ', 'MMT', 0, 1, '2023-09-29 22:00:09'),
(37, 'MILIMETRO CUADRADO                                ', 'MMK', 0, 1, '2023-09-29 22:00:09'),
(38, 'MILIMETRO CUBICO                                  ', 'MMQ', 0, 1, '2023-09-29 22:00:09'),
(39, 'MILLARES                                          ', 'MLL', 0, 1, '2023-09-29 22:00:09'),
(40, 'MILLON DE UNIDADES                                ', 'UM', 0, 1, '2023-09-29 22:00:09'),
(41, 'ONZAS                                             ', 'ONZ', 0, 1, '2023-09-29 22:00:09'),
(42, 'PALETAS                                           ', 'PF', 0, 1, '2023-09-29 22:00:09'),
(43, 'PAQUETE                                           ', 'PK', 0, 1, '2023-09-29 22:00:09'),
(44, 'PAR                                               ', 'PR', 0, 1, '2023-09-29 22:00:09'),
(45, 'PIES                                              ', 'FOT', 0, 1, '2023-09-29 22:00:09'),
(46, 'PIES CUADRADOS                                    ', 'FTK', 0, 1, '2023-09-29 22:00:09'),
(47, 'PIES CUBICOS                                      ', 'FTQ', 0, 1, '2023-09-29 22:00:09'),
(48, 'PIEZAS                                            ', 'C62', 0, 1, '2023-09-29 22:00:09'),
(49, 'PLACAS                                            ', 'PG', 0, 1, '2023-09-29 22:00:09'),
(50, 'PLIEGO                                            ', 'ST', 0, 1, '2023-09-29 22:00:09'),
(51, 'PULGADAS                                          ', 'INH', 0, 1, '2023-09-29 22:00:09'),
(52, 'RESMA                                             ', 'RM', 0, 1, '2023-09-29 22:00:09'),
(53, 'TAMBOR                                            ', 'DR', 0, 1, '2023-09-29 22:00:09'),
(54, 'TONELADA CORTA                                    ', 'STN', 0, 1, '2023-09-29 22:00:09'),
(55, 'TONELADA LARGA                                    ', 'LTN', 0, 1, '2023-09-29 22:00:09'),
(56, 'TONELADAS                                         ', 'TNE', 1, 1, '2023-09-29 22:00:09'),
(57, 'TUBOS                                             ', 'TU', 0, 1, '2023-09-29 22:00:09'),
(58, 'UNIDAD (BIENES)                                   ', 'NIU', 1, 1, '2023-09-29 22:00:09'),
(59, 'UNIDAD (SERVICIOS) ', 'ZZ', 1, 1, '2023-09-29 22:00:09'),
(60, 'US GALON (3,7843 L)', 'GLL', 0, 1, '2023-09-29 22:00:09'),
(61, 'YARDA                                             ', 'YRD', 0, 1, '2023-09-29 22:00:09'),
(62, 'YARDA CUADRADA                                    ', 'YDK', 0, 1, '2023-09-29 22:00:09'),
(63, 'BIG BAG', 'BG', 1, 1, '2023-09-29 22:00:09'),
(64, 'BULK DRUM', 'DR', 1, 1, '2023-09-29 22:00:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `id_persona` int NOT NULL,
  `id_empresa` int NOT NULL DEFAULT '1',
  `id_rol` int NOT NULL,
  `usuario_nickname` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `usuario_contrasenha` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `usuario_email` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `usuario_imagen` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `usuario_estado` tinyint(1) NOT NULL,
  `usuario_creacion` datetime NOT NULL,
  `usuario_ultimo_login` datetime NOT NULL,
  `usuario_ultima_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_persona`, `id_empresa`, `id_rol`, `usuario_nickname`, `usuario_contrasenha`, `usuario_email`, `usuario_imagen`, `usuario_estado`, `usuario_creacion`, `usuario_ultimo_login`, `usuario_ultima_modificacion`) VALUES
(1, 1, 1, 2, 'superadmin', '$2y$10$oPOOOgTUr4zIh511ATm/q.vzsAmxP.e2.vzyEbRn/1pzyWz2oXj0a', 'cesarjose@bufeotec.com', 'media/usuarios/usuario.jpg', 1, '2020-09-17 00:00:00', '2023-10-25 19:55:44', '2020-09-17 00:00:00'),
(2, 2, 1, 3, 'admin', '$2y$10$8ZxmfjUaJocc1SOYS8vDNufcPgcru5aMiEp4HP9J8KA.7mnlkFfiu', 'carlos@gmail.com', 'media/usuarios/usuario.jpg', 1, '2020-10-27 18:29:10', '2020-10-27 18:29:10', '2020-10-27 18:29:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `guia_remision`
--
ALTER TABLE `guia_remision`
  ADD PRIMARY KEY (`id_guia`);

--
-- Indices de la tabla `guia_remision_detalle`
--
ALTER TABLE `guia_remision_detalle`
  ADD PRIMARY KEY (`id_guia_remision_detalle`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id_moneda`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id_opcion`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `id_opcion` (`id_opcion`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `restricciones`
--
ALTER TABLE `restricciones`
  ADD PRIMARY KEY (`id_restriccion`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_opcion` (`id_opcion`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `roles_menus`
--
ALTER TABLE `roles_menus`
  ADD PRIMARY KEY (`id_rol_menu`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id_serie`);

--
-- Indices de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  ADD PRIMARY KEY (`id_tipodocumento`);

--
-- Indices de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
  ADD PRIMARY KEY (`id_ubigeo`);

--
-- Indices de la tabla `unidad_de_medida`
--
ALTER TABLE `unidad_de_medida`
  ADD PRIMARY KEY (`id_unidad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `guia_remision`
--
ALTER TABLE `guia_remision`
  MODIFY `id_guia` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guia_remision_detalle`
--
ALTER TABLE `guia_remision_detalle`
  MODIFY `id_guia_remision_detalle` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id_moneda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id_opcion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `restricciones`
--
ALTER TABLE `restricciones`
  MODIFY `id_restriccion` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles_menus`
--
ALTER TABLE `roles_menus`
  MODIFY `id_rol_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `serie`
--
ALTER TABLE `serie`
  MODIFY `id_serie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  MODIFY `id_tipodocumento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
  MODIFY `id_ubigeo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1874;

--
-- AUTO_INCREMENT de la tabla `unidad_de_medida`
--
ALTER TABLE `unidad_de_medida`
  MODIFY `id_unidad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `opciones_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menus` (`id_menu`);

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_opcion`) REFERENCES `opciones` (`id_opcion`);

--
-- Filtros para la tabla `restricciones`
--
ALTER TABLE `restricciones`
  ADD CONSTRAINT `restricciones_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `restricciones_ibfk_2` FOREIGN KEY (`id_opcion`) REFERENCES `opciones` (`id_opcion`);

--
-- Filtros para la tabla `roles_menus`
--
ALTER TABLE `roles_menus`
  ADD CONSTRAINT `roles_menus_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `roles_menus_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menus` (`id_menu`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
