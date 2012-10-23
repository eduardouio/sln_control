-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-10-2012 a las 21:44:10
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `slnecc_control`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acondicionador_lodo`
--

CREATE TABLE IF NOT EXISTS `acondicionador_lodo` (
  `id_acondicionador_lodo` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `proceso` varchar(60) NOT NULL COMMENT 'desarenador\\ndesarcillador',
  `presion` decimal(3,1) DEFAULT NULL,
  `peso_entrada` decimal(3,1) DEFAULT NULL COMMENT 'los valores tienen un + al final preguntar que es ejem 5.6+\\n',
  `peso_salida` decimal(3,1) DEFAULT NULL COMMENT 'los valores tienen un + al final preguntar que es ejem 5.6+\\n',
  `peso_descargados` decimal(3,1) DEFAULT NULL,
  `consumo_malla_dia` smallint(5) unsigned NOT NULL DEFAULT '0',
  `horas_dia` decimal(2,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_acondicionador_lodo`),
  KEY `fk_acondicionador_lodo_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='se guardan los atributos unicos y el consumo de mallas esta ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambios_db`
--

CREATE TABLE IF NOT EXISTS `cambios_db` (
  `id_cambio_db` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` smallint(5) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tabla` varchar(60) NOT NULL,
  PRIMARY KEY (`id_cambio_db`),
  KEY `fk_cambios_db_usuarios_idx` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='gestiona los cambios que se realizan en las tablas de la bas' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centrifugas`
--

CREATE TABLE IF NOT EXISTS `centrifugas` (
  `id_centrifugas` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `centrifuga` varchar(50) NOT NULL,
  `fluido_tratamiento` varchar(100) NOT NULL,
  `horas` decimal(2,1) DEFAULT NULL,
  `rpm` decimal(4,1) DEFAULT NULL,
  `gpm` decimal(3,1) DEFAULT NULL,
  `ppg_entrada` decimal(3,1) DEFAULT NULL,
  `ppg_salida` decimal(3,1) DEFAULT NULL,
  `ppg_descarga` decimal(3,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_centrifugas`),
  UNIQUE KEY `id_reporte_UNIQUE` (`id_reporte`),
  KEY `fk_centrifugas_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entidad encargada de recibor los valores de las decanter se ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion_costos`
--

CREATE TABLE IF NOT EXISTS `clasificacion_costos` (
  `id_clasificacion_costos` mediumint(8) unsigned NOT NULL,
  `id_proyecto` mediumint(8) unsigned NOT NULL,
  `nombre` varchar(90) NOT NULL,
  `notas` mediumtext,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_clasificacion_costos`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  KEY `fk_clasificacion_costo_proyecto_idx` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='entidad que maneja los costos para una operacion o un proyec';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_comentarios` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `comentarios` mediumtext,
  `responsable` varchar(50) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_comentarios`),
  KEY `fk_comentarios_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_solidos`
--

CREATE TABLE IF NOT EXISTS `contenido_solidos` (
  `id_contenido_solidos` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `solidos` decimal(2,1) DEFAULT NULL,
  `arena` decimal(2,1) DEFAULT NULL,
  `lgs` decimal(2,1) DEFAULT NULL,
  `hgs` decimal(2,1) DEFAULT NULL,
  `mtb` smallint(5) unsigned DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_contenido_solidos`),
  UNIQUE KEY `id_reporte_UNIQUE` (`id_reporte`),
  KEY `fk_contenido_solidos_reportes_idx` (`id_reporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='la mayoria de los parametros son en porcentajes con exepcion' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `contenido_solidos`
--

INSERT INTO `contenido_solidos` (`id_contenido_solidos`, `id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`, `creacion`) VALUES
(1, 1, '1.8', '0.0', '1.4', '0.3', 0, '2012-10-22 23:24:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costos`
--

CREATE TABLE IF NOT EXISTS `costos` (
  `id_costos` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_clasificacion_costos` mediumint(8) unsigned NOT NULL,
  `descripcion_costo` varchar(50) NOT NULL,
  `costo` decimal(6,2) NOT NULL,
  `notas` mediumtext,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_costos`),
  KEY `fk_costo_clasificacion_idx` (`id_clasificacion_costos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entidad encargada de almacenar los detalles de los costos pa' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_lodo`
--

CREATE TABLE IF NOT EXISTS `datos_lodo` (
  `id_datos_lodos` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `compania` varchar(50) DEFAULT NULL,
  `sistema` varchar(50) DEFAULT NULL,
  `peso_lodo` decimal(4,1) DEFAULT NULL,
  `viscosidad_plastica` varchar(7) DEFAULT NULL,
  `yield_point` decimal(4,1) DEFAULT NULL,
  `volumen_sa` decimal(5,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_datos_lodos`),
  UNIQUE KEY `id_reporte_UNIQUE` (`id_reporte`),
  KEY `fk_datos_lodo_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='entidad que recibe los datos del lodo, los datos necesitan u' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `datos_lodo`
--

INSERT INTO `datos_lodo` (`id_datos_lodos`, `id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`, `creacion`) VALUES
(1, 1, 'Halliburton/baroid', 'Aquagel/Chemical', '8.6', '3@120', '6.0', '470.0', '2012-10-22 23:22:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id_logs` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario` smallint(5) unsigned NOT NULL,
  `actividad` varchar(500) NOT NULL,
  `nombre_equipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_logs`),
  KEY `fk_logs_usuarios_idx` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_cambios_bd`
--

CREATE TABLE IF NOT EXISTS `log_cambios_bd` (
  `id_log_cambios_bd` mediumint(8) unsigned NOT NULL,
  `id_cambio_db` mediumint(8) unsigned NOT NULL,
  `id_registro` mediumint(8) unsigned NOT NULL,
  `nombre_columna` varchar(60) DEFAULT NULL,
  `valor_original` varchar(100) DEFAULT NULL,
  `valor_nuevo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_log_cambios_bd`),
  KEY `fk_log_cambios_cambios_db_idx` (`id_cambio_db`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='no se van a registrar los cambios realizados a los campos de';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manejo_cortes`
--

CREATE TABLE IF NOT EXISTS `manejo_cortes` (
  `id_manejo_cortes` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `bbls_dia` decimal(4,1) DEFAULT NULL,
  `celda_no` smallint(5) unsigned DEFAULT NULL,
  `cap_bls` decimal(5,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_manejo_cortes`),
  KEY `fk_manejo_cortes_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manejo_efluentes`
--

CREATE TABLE IF NOT EXISTS `manejo_efluentes` (
  `id_manejo_efluentes` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `tanque1` decimal(4,1) DEFAULT NULL,
  `tanque2` decimal(4,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_manejo_efluentes`),
  KEY `fk_manejo_efluentes_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='entidad de opciones:\n\ntipo:\n\ntratados\nevacuados\nfloculos' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_prima`
--

CREATE TABLE IF NOT EXISTS `materia_prima` (
  `id_materia_prima` mediumint(9) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `unidad_medida` varchar(45) DEFAULT NULL,
  `cantidad` decimal(4,1) DEFAULT NULL,
  `costo` decimal(4,1) DEFAULT NULL,
  `stock_min` decimal(4,1) DEFAULT NULL,
  `stock_max` decimal(5,1) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `id_materia_prima_UNIQUE` (`id_materia_prima`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entidad encargada de manejar las materias primas usados en e' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_mp`
--

CREATE TABLE IF NOT EXISTS `movimientos_mp` (
  `id_movimientos_mp` mediumint(9) NOT NULL AUTO_INCREMENT,
  `id_parametros_mp` mediumint(9) NOT NULL,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `fecha` date DEFAULT NULL,
  `movimiento` varchar(45) DEFAULT NULL,
  `cantidad` decimal(5,1) DEFAULT NULL,
  `procedimiento` varchar(45) DEFAULT NULL,
  `notas` mediumtext,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_movimientos_mp`),
  KEY `fk_movimientos_mp_parametros_idx` (`id_parametros_mp`),
  KEY `fk_movimientos_mp-reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Esta es la entidad que controla el uso de los quimicos en la' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_cortes`
--

CREATE TABLE IF NOT EXISTS `movimiento_cortes` (
  `id_movimiento_cortes` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `volqueta` varchar(12) DEFAULT NULL,
  `m3` decimal(3,1) DEFAULT NULL,
  `diario` decimal(2,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_movimiento_cortes`),
  KEY `fk_movimiento_cortes_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='entidad con opciones:\n\nvolqueta:\n1\n2\n3\n4\n\nlos acumulados van' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_efluentes`
--

CREATE TABLE IF NOT EXISTS `movimiento_efluentes` (
  `id_movimiento_efluentes` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `vaccum` varchar(12) NOT NULL,
  `capacidad_bls` decimal(4,1) DEFAULT NULL,
  `no_viajes_diario` smallint(5) unsigned DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_movimiento_efluentes`),
  KEY `fk_movimiento_efluentes_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='El valor acumulado es parqa cada uno para cada vaccum' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros_mp`
--

CREATE TABLE IF NOT EXISTS `parametros_mp` (
  `id_parametros_mp` mediumint(9) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `procedimiento` varchar(50) NOT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`,`procedimiento`),
  UNIQUE KEY `id_parametros_mp_UNIQUE` (`id_parametros_mp`),
  KEY `fk_param_mp_idx` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta entidad se controla el uso de los quimicos con los p';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perforacion`
--

CREATE TABLE IF NOT EXISTS `perforacion` (
  `id_perforacion` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `profundidad_inicial` decimal(5,1) DEFAULT NULL,
  `porosidad` decimal(2,1) DEFAULT NULL COMMENT 'se registra en porcentaje\\n',
  `wash_out` decimal(2,1) DEFAULT NULL COMMENT 'se registra en porcentaje\\n',
  `factor_expancion` decimal(2,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_perforacion`),
  UNIQUE KEY `id_reporte_UNIQUE` (`id_reporte`),
  KEY `fk_perforacion_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `perforacion`
--

INSERT INTO `perforacion` (`id_perforacion`, `id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`, `creacion`) VALUES
(1, 1, '0.0', '0.0', '9.9', '1.0', '2012-10-22 23:25:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_locacion`
--

CREATE TABLE IF NOT EXISTS `personal_locacion` (
  `id_personal_locacion` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_personal_locacion`),
  UNIQUE KEY `id_reporte_UNIQUE` (`id_reporte`),
  KEY `fk_personal_locacion_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='la cantidad de personal en la locacion depende del cargo que' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pozo`
--

CREATE TABLE IF NOT EXISTS `pozo` (
  `id_pozo` mediumint(8) unsigned NOT NULL,
  `id_proyecto` mediumint(8) unsigned NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(300) NOT NULL,
  `inicio_actividad` date NOT NULL,
  `fin_actividad` date NOT NULL,
  `notas` mediumtext,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pozo`),
  KEY `fk_pozo_proyecto_idx` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Esta es la entidad que controla los informes de esta entidad';

--
-- Volcado de datos para la tabla `pozo`
--

INSERT INTO `pozo` (`id_pozo`, `id_proyecto`, `nombre`, `ubicacion`, `inicio_actividad`, `fin_actividad`, `notas`, `creacion`) VALUES
(1, 1, 'Rumyacu', 'Coca Auca', '2010-01-01', '2010-02-01', 'proyecto de un mes', '2012-10-22 23:14:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE IF NOT EXISTS `proyecto` (
  `id_proyecto` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cliente` varchar(45) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `notas` mediumtext,
  `creacio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_proyecto`,`cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Esta es la entidad que representa a un proyecto, la manera e' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `cliente`, `fecha_inicio`, `fecha_fin`, `notas`, `creacio`) VALUES
(1, 'Sinopec', '2012-01-01', '2012-06-01', 'Proyecto iniciado con precios referencialesd', '2012-10-22 23:11:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE IF NOT EXISTS `reporte` (
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `id_pozo` mediumint(8) unsigned NOT NULL,
  `no_reprote` mediumint(9) NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `profundidad_final` decimal(5,1) NOT NULL,
  `seccion` decimal(5,1) DEFAULT NULL,
  `company_man` varchar(50) NOT NULL,
  `tool_pusher` varchar(50) DEFAULT NULL,
  `superintendente` varchar(50) DEFAULT NULL,
  `rig_manager` varchar(50) DEFAULT NULL,
  `supervisor_sln` varchar(50) DEFAULT NULL COMMENT 'El supervisor esta en la lista de personal en pozo',
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pozo`,`no_reprote`),
  UNIQUE KEY `id_reporte_UNIQUE` (`id_reporte`),
  KEY `fk_reporte_pozo_idx` (`id_pozo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='inicio del informe verificaer la informacion del taladro ant';

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`id_reporte`, `id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`, `creacion`) VALUES
(1, 1, 1, 'OP-RG-04', '2012-10-01', '0.0', '26.0', 'Juan Narvaez', 'Hiriberto Pauta', 'S/N', 'S/N', 'S/N', '2012-10-22 23:16:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revision_reporte`
--

CREATE TABLE IF NOT EXISTS `revision_reporte` (
  `id_revision` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_emision` date NOT NULL,
  `fecha_revision` date NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `notas` mediumtext,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Esta es la entidad donde se registran todos los cambios real' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(40) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`usuario`),
  UNIQUE KEY `id_usuario_UNIQUE` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vol_agua_operaciones`
--

CREATE TABLE IF NOT EXISTS `vol_agua_operaciones` (
  `id_vol_agua_operaciones` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `agua` varchar(50) DEFAULT NULL,
  `diario` decimal(4,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_vol_agua_operaciones`),
  KEY `fk_vol_agua_operaciones_reportes_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='entidad con opciones\n\nagua:\nfresca para polimero\nde dw para ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vol_cortes_fluidos`
--

CREATE TABLE IF NOT EXISTS `vol_cortes_fluidos` (
  `id_vol_cortes_fluidos` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `tanques` varchar(50) DEFAULT NULL,
  `cortes` varchar(50) DEFAULT NULL,
  `bbls` decimal(4,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_vol_cortes_fluidos`),
  KEY `fk_cortes_fluidos_reportes_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='entidad con opciones\n\ntanques:\n\ncatch tank 1\ncatch tank 2\nve' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vol_recolectados_procesados`
--

CREATE TABLE IF NOT EXISTS `vol_recolectados_procesados` (
  `id_vol_recolectados_procesados` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned DEFAULT NULL,
  `efluente` varchar(50) DEFAULT NULL,
  `diario` decimal(5,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_vol_recolectados_procesados`),
  UNIQUE KEY `id_reporte_UNIQUE` (`id_reporte`),
  KEY `fk_vol_recolectados_procesados_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entidad de opcion\n\nefluente:\n\nsistema activo\ncontrapozo\ntanq' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarandas`
--

CREATE TABLE IF NOT EXISTS `zarandas` (
  `id_zarandas` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_reporte` mediumint(8) unsigned NOT NULL,
  `zaranda_no` smallint(5) unsigned NOT NULL,
  `peso_entrada` decimal(3,1) DEFAULT NULL,
  `peso_salida` decimal(3,1) DEFAULT NULL,
  `peso_descargados` decimal(3,1) DEFAULT NULL,
  `consumo_malla_dia` smallint(5) unsigned DEFAULT NULL,
  `horas_dia` decimal(2,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_zarandas`),
  KEY `fk_zarandas_reporte_idx` (`id_reporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Esta entidad es una entidad compuesta ya que hay parametros ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zaranda_acondicionador`
--

CREATE TABLE IF NOT EXISTS `zaranda_acondicionador` (
  `id_zaranda_acondicionador` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_acondicionador_lodo` mediumint(8) unsigned NOT NULL,
  `malla_deck_no` smallint(6) DEFAULT NULL,
  `mesh` decimal(3,1) DEFAULT NULL,
  `horas` decimal(2,1) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_zaranda_acondicionador`),
  KEY `fk_mallas_acondicionador_idx` (`id_acondicionador_lodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zaranda_mallas`
--

CREATE TABLE IF NOT EXISTS `zaranda_mallas` (
  `id_zaranda_mallas` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_zarandas` mediumint(8) unsigned NOT NULL,
  `malla_deck_no` smallint(6) DEFAULT NULL,
  `mesh` decimal(3,1) DEFAULT NULL,
  `horas` decimal(2,1) DEFAULT NULL COMMENT 'en el informe de peuebas veo que las horas se aumentan en 36\\n',
  `zaranda_mallascol` varchar(45) DEFAULT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_zaranda_mallas`),
  KEY `mallas_zarandas_idx` (`id_zarandas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Almacena los valores para las mallas en mesh y horas, depend' AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acondicionador_lodo`
--
ALTER TABLE `acondicionador_lodo`
  ADD CONSTRAINT `fk_acondicionador_lodo_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cambios_db`
--
ALTER TABLE `cambios_db`
  ADD CONSTRAINT `fk_cambios_db_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `centrifugas`
--
ALTER TABLE `centrifugas`
  ADD CONSTRAINT `fk_centrifugas_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `clasificacion_costos`
--
ALTER TABLE `clasificacion_costos`
  ADD CONSTRAINT `fk_clasificacion_costo_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `contenido_solidos`
--
ALTER TABLE `contenido_solidos`
  ADD CONSTRAINT `fk_contenido_solidos_reportes` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `costos`
--
ALTER TABLE `costos`
  ADD CONSTRAINT `fk_costo_clasificacion` FOREIGN KEY (`id_clasificacion_costos`) REFERENCES `clasificacion_costos` (`id_clasificacion_costos`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos_lodo`
--
ALTER TABLE `datos_lodo`
  ADD CONSTRAINT `fk_datos_lodo_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_logs_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `log_cambios_bd`
--
ALTER TABLE `log_cambios_bd`
  ADD CONSTRAINT `fk_log_cambios_cambios_db` FOREIGN KEY (`id_cambio_db`) REFERENCES `cambios_db` (`id_cambio_db`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `manejo_cortes`
--
ALTER TABLE `manejo_cortes`
  ADD CONSTRAINT `fk_manejo_cortes_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `manejo_efluentes`
--
ALTER TABLE `manejo_efluentes`
  ADD CONSTRAINT `fk_manejo_efluentes_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movimientos_mp`
--
ALTER TABLE `movimientos_mp`
  ADD CONSTRAINT `fk_movimientos_mp_parametros` FOREIGN KEY (`id_parametros_mp`) REFERENCES `parametros_mp` (`id_parametros_mp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_movimientos_mp_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movimiento_cortes`
--
ALTER TABLE `movimiento_cortes`
  ADD CONSTRAINT `fk_movimiento_cortes_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movimiento_efluentes`
--
ALTER TABLE `movimiento_efluentes`
  ADD CONSTRAINT `fk_movimiento_efluentes_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `parametros_mp`
--
ALTER TABLE `parametros_mp`
  ADD CONSTRAINT `fk_param_mp` FOREIGN KEY (`codigo`) REFERENCES `materia_prima` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perforacion`
--
ALTER TABLE `perforacion`
  ADD CONSTRAINT `fk_perforacion_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personal_locacion`
--
ALTER TABLE `personal_locacion`
  ADD CONSTRAINT `fk_personal_locacion_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pozo`
--
ALTER TABLE `pozo`
  ADD CONSTRAINT `fk_pozo_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `fk_reporte_pozo` FOREIGN KEY (`id_pozo`) REFERENCES `pozo` (`id_pozo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `vol_agua_operaciones`
--
ALTER TABLE `vol_agua_operaciones`
  ADD CONSTRAINT `fk_vol_agua_operaciones_reportes` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `vol_cortes_fluidos`
--
ALTER TABLE `vol_cortes_fluidos`
  ADD CONSTRAINT `fk_cortes_fluidos_reportes` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `vol_recolectados_procesados`
--
ALTER TABLE `vol_recolectados_procesados`
  ADD CONSTRAINT `fk_vol_recolectados_procesados_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `zarandas`
--
ALTER TABLE `zarandas`
  ADD CONSTRAINT `fk_zarandas_reporte` FOREIGN KEY (`id_reporte`) REFERENCES `reporte` (`id_reporte`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `zaranda_acondicionador`
--
ALTER TABLE `zaranda_acondicionador`
  ADD CONSTRAINT `fk_mallas_acondicionador` FOREIGN KEY (`id_acondicionador_lodo`) REFERENCES `acondicionador_lodo` (`id_acondicionador_lodo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `zaranda_mallas`
--
ALTER TABLE `zaranda_mallas`
  ADD CONSTRAINT `fk_mallas_zarandas` FOREIGN KEY (`id_zarandas`) REFERENCES `zarandas` (`id_zarandas`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
