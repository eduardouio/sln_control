-- ---------------------------------------------------
-- ---------------------------------------------------
-- Modelo de Datos Vacío
-- Sln 
-- Autor <@eduardouio> Eduardo Villota
--
-- Este es el modelo de referencia del proyecto, ya no se va a trabajar con el modelo grafica
-- Este script es la base para generar los modelos graficos, adjunto se encuentra un script
-- con las consultas para la insercion de datos a estas entidades datos_db.sql
-- ---------------------------------------------------
-- ---------------------------------------------------

  SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
  SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
  SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

  CREATE SCHEMA IF NOT EXISTS `slnecc_control` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
  USE `slnecc_control` ;

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`proyecto`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`proyecto` (
    `id_proyecto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `cliente` VARCHAR(45) NOT NULL ,
    `fecha_inicio` DATE NOT NULL ,
    `fecha_fin` DATE NULL ,
    `notas` MEDIUMTEXT NULL ,
    `creacio` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_proyecto`, `cliente`) )
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Esta es la entidad que representa a un proyecto, la manera e' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`pozo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`pozo` (
    `id_pozo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_proyecto` MEDIUMINT UNSIGNED NOT NULL ,
    `nombre` VARCHAR(100) NOT NULL ,
    `ubicacion` VARCHAR(300) NOT NULL ,
    `inicio_actividad` DATE NOT NULL ,
    `fin_actividad` DATE NOT NULL ,
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_pozo`) ,
    INDEX `fk_pozo_proyecto_idx` (`id_proyecto` ASC) ,
    CONSTRAINT `fk_pozo_proyecto`
      FOREIGN KEY (`id_proyecto` )
      REFERENCES `slnecc_control`.`proyecto` (`id_proyecto` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Esta es la entidad que controla los informes de esta entidad' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`revision_reporte`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`revision_reporte` (
    `id_revision` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `fecha_emision` DATE NOT NULL ,
    `fecha_revision` DATE NOT NULL ,    
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_revision`) )
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Esta es la entidad donde se registran todos los cambios real' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`reporte`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`reporte` (
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_pozo` MEDIUMINT UNSIGNED NOT NULL ,
    `no_reprote` MEDIUMINT NOT NULL ,
    `codigo` VARCHAR(45) NOT NULL ,
    `fecha` DATE NOT NULL ,
    `profundidad_final` DECIMAL(5,1) NOT NULL ,
    `seccion` DECIMAL(5,1) NULL ,
    `company_man` VARCHAR(50) NOT NULL ,
    `tool_pusher` VARCHAR(50) NULL ,
    `superintendente` VARCHAR(50) NULL ,
    `rig_manager` VARCHAR(50) NULL ,
    `supervisor_sln` VARCHAR(50) NULL COMMENT 'El supervisor esta en la lista de personal en pozo' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_pozo`, `no_reprote`) ,
    UNIQUE INDEX `id_reporte_UNIQUE` (`id_reporte` ASC) ,
    INDEX `fk_reporte_pozo_idx` (`id_pozo` ASC) ,
    CONSTRAINT `fk_reporte_pozo`
      FOREIGN KEY (`id_pozo` )
      REFERENCES `slnecc_control`.`pozo` (`id_pozo` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'inicio del informe verificaer la informacion del taladro ant' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`datos_lodo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`datos_lodo` (
    `id_datos_lodos` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `compania` VARCHAR(50) NULL ,
    `sistema` VARCHAR(50) NULL ,
    `peso_lodo` DECIMAL(4,1) NULL ,
    `viscosidad_plastica` VARCHAR(7) NULL ,
    `yield_point` DECIMAL(4,1) NULL ,
    `volumen_sa` DECIMAL(5,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_datos_lodos`) ,
    UNIQUE INDEX `id_reporte_UNIQUE` (`id_reporte` ASC) ,
    INDEX `fk_datos_lodo_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_datos_lodo_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'entidad que recibe los datos del lodo, los datos necesitan u' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`contenido_solidos`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`contenido_solidos` (
    `id_contenido_solidos` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `solidos` DECIMAL(3,1) NULL ,
    `arena` DECIMAL(3,1) NULL ,
    `lgs` DECIMAL(3,1) NULL ,
    `hgs` DECIMAL(3,1) NULL ,
    `mtb` SMALLINT UNSIGNED NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_contenido_solidos`) ,
    UNIQUE INDEX `id_reporte_UNIQUE` (`id_reporte` ASC) ,
    INDEX `fk_contenido_solidos_reportes_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_contenido_solidos_reportes`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'la mayoria de los parametros son en porcentajes con exepcion' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`perforacion`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`perforacion` (
    `id_perforacion` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `profundidad_inicial` DECIMAL(5,1) NULL ,
    `porosidad` DECIMAL(3,1) NULL COMMENT 'se registra en porcentaje\\n' ,
    `wash_out` DECIMAL(3,1) NULL COMMENT 'se registra en porcentaje\\n' ,
    `factor_expancion` DECIMAL(3,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_perforacion`) ,
    UNIQUE INDEX `id_reporte_UNIQUE` (`id_reporte` ASC) ,
    INDEX `fk_perforacion_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_perforacion_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`cargo_sln`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`cargo_sln` (
    `id_cargo_sln` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,    
    `cargo` VARCHAR(45) NOT NULL ,
    `descripcion` VARCHAR(45) NOT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_cargo_sln`))        
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Este es un listado de los cargos que estan disponibles para ' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`personal`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`personal` (
    `id_personal` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `cedula` VARCHAR(10) NOT NULL ,
    `nombres` VARCHAR(100) NOT NULL ,
    `apellidos` VARCHAR(100) NOT NULL ,
    `profesion` VARCHAR(50) NOT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_personal`) ,
    UNIQUE INDEX `cedula_UNIQUE` (`cedula` ASC) )
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Listado de personal que trabaja para sln sea directo o indir' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`personal_locacion`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`personal_locacion` (
    `id_personal_locacion` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_cargo_sln` MEDIUMINT UNSIGNED NOT NULL ,
    `id_personal` MEDIUMINT UNSIGNED NOT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,    
    PRIMARY KEY (`id_personal_locacion`) ,
    INDEX `fk_personal_locacion_reporte_idx` (`id_reporte` ASC) ,
    INDEX `fk__idx` (`id_cargo_sln` ASC) ,
    INDEX `fk_personal_locacion_personal_idx` (`id_personal` ASC) ,
    CONSTRAINT `fk_personal_locacion_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    CONSTRAINT `fk_personal_locacion_cargo_sln`
      FOREIGN KEY (`id_cargo_sln` )
      REFERENCES `slnecc_control`.`cargo_sln` (`id_cargo_sln` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    CONSTRAINT `fk_personal_locacion_personal`
      FOREIGN KEY (`id_personal` )
      REFERENCES `slnecc_control`.`personal` (`id_personal` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'entidad que maneja la relacion de los empleados y sus cargos' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zarandas`
  -- -----------------------------------------------------
    CREATE  TABLE IF NOT EXISTS `slnecc_control`.`zarandas` (
    `id_zarandas` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `zaranda_no` SMALLINT UNSIGNED NOT NULL ,
    `peso_entrada` DECIMAL(4,1) NULL ,
    `peso_salida` DECIMAL(4,1) NULL ,
    `peso_descargados` DECIMAL(4,1) NULL ,
    `consumo_malla_dia` SMALLINT UNSIGNED NULL ,
    `horas_dia` DECIMAL(3,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_zarandas`) ,
    INDEX `fk_zarandas_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_zarandas_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Esta entidad es una entidad compuesta ya que hay parametros ' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_mallas`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`zaranda_mallas` (
    `id_zaranda_mallas` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_zarandas` MEDIUMINT UNSIGNED NOT NULL ,
    `malla_deck_no` SMALLINT NULL ,
    `mesh` DECIMAL(4,1) NULL ,
    `horas` DECIMAL(3,1) NULL COMMENT 'en el informe de peuebas veo que las horas se aumentan en 36\\n' ,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_zaranda_mallas`) ,
    INDEX `mallas_zarandas_idx` (`id_zarandas` ASC) ,
    CONSTRAINT `fk_mallas_zarandas`
      FOREIGN KEY (`id_zarandas` )
      REFERENCES `slnecc_control`.`zarandas` (`id_zarandas` )
      ON DELETE CASCADE
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Almacena los valores para las mallas en mesh y horas, depend' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`acondicionador_lodo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`acondicionador_lodo` (
    `id_acondicionador_lodo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `proceso` VARCHAR(60) NOT NULL COMMENT 'desarenador\\ndesarcillador' ,
    `presion` DECIMAL(4,1) NULL ,
    `peso_entrada` DECIMAL(4,1) NULL COMMENT 'los valores tienen un + al final preguntar que es ejem 5.6+\\n' ,
    `peso_salida` DECIMAL(4,1) NULL COMMENT 'los valores tienen un + al final preguntar que es ejem 5.6+\\n' ,
    `peso_descargados` DECIMAL(4,1) NULL ,    
    `horas_dia` DECIMAL(3,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_acondicionador_lodo`) ,
    INDEX `fk_acondicionador_lodo_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_acondicionador_lodo_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'se guardan los atributos unicos y el consumo de mallas esta ' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_acondicionador`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`zaranda_acondicionador` (
    `id_zaranda_acondicionador` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `malla_deck_no` SMALLINT NULL ,
    `mesh` DECIMAL(4,1) NULL ,
    `horas` DECIMAL(3,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_zaranda_acondicionador`) ,
    INDEX `fk_zaranda_acondicionador_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_zaranda_acondicionador_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE      )
  ENGINE = InnoDB AUTO_INCREMENT=1 ;

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_acondicionador_mallas`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`zaranda_acondicionador_mallas` (
    `id_zaranda_acondicionador_mallas` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `consumo_malla_dia` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0 ,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_zaranda_acondicionador_mallas`) ,
    INDEX `fk_zaranda_acondicionador_mallas_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_zaranda_acondicionador_mallas_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE      )
  ENGINE = InnoDB AUTO_INCREMENT=1 ;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`equipo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`equipo` (
    `id_equipo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,    
    `codigo` VARCHAR(50) NOT NULL,    
    `nombre` VARCHAR(50) NOT NULL ,
    `modelo` VARCHAR(50) NOT NULL ,
    `tipo` VARCHAR(50) NOT NULL ,    
    `caracteristicas` MEDIUMTEXT ,
    `usos` MEDIUMTEXT,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_equipo`) ,
    UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC))
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Entidad encargada de recibor los valores de las decanter se ' /* comment truncated */;

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`servicio_otro`
  -- -----------------------------------------------------
  
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`servicio_otro` (
    `id_servicio_otro` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,    
    `codigo` VARCHAR(50) NOT NULL,    
    `nombre` VARCHAR(50) NOT NULL ,    
    `descripcion` VARCHAR(200) ,
    `tipo` VARCHAR(50) NOT NULL ,    
    `notas` MEDIUMTEXT,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_servicio_otro`) ,
    UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC))
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'despues de intentar ingresar la informacion a la base de datos noté que mucho nombres se repetian
            en los registros ed las diferentes tablas, lo que hizo e cambiar el nombre de la tabla
            tratamiento_efluente por servicios_otros como su nombre lo indica esta entidad almacenara
            la informacion que se esta repitiendo en las tablas, y luego se referenciara a esos datos a travez
            de un fk esto ayuda a que el detalle de los servicios y otros sea mas completa, las entidades que heredan de esta 
            entidad padre son trabajo_equipo, vol_recolectados_procesados, vol_agua_operaciones, vol_cortes_fluidos,
            manejo_efluentes, manejo_cortes cada registro e la tabla padre sera controlado por un campo llamado tipo que es 
            el que asigna lo que se ingresa en el registro valores de este campo Efluentes, Tratamiento/Fluido, Agua,
            Tanques, Cortes, Manejo Efluentes -> cada nombre es descriptivo y es una clasificacion de los registros';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`trabajos_centrifuga`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`trabajo_equipo` (
    `id_trabajo_equipo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_equipo` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_otro` MEDIUMINT UNSIGNED NOT NULL ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,        
    `horas` DECIMAL(3,1) NULL ,
    `rpm` DECIMAL(4,1) NULL ,
    `gpm` DECIMAL(4,1) NULL ,
    `ppg_entrada` DECIMAL(4,1) NULL ,
    `ppg_salida` DECIMAL(4,1) NULL ,
    `ppg_descarga` DECIMAL(4,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_trabajo_equipo`) ,    
    INDEX `fk_trabajo_equipo_equipo_idx` (`id_equipo` ASC) ,
    CONSTRAINT `fk_trabajos_equipo_equipo`
      FOREIGN KEY (`id_equipo` )
      REFERENCES `slnecc_control`.`equipo` (`id_equipo` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    INDEX `fk_id_servicio_otro_idx` (`id_servicio_otro` ASC) ,
    CONSTRAINT `fk_id_servicio_otro`
      FOREIGN KEY (`id_servicio_otro` )
      REFERENCES `slnecc_control`.`servicio_otro` (`id_servicio_otro` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    INDEX `fk_trabajos_equipo_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_trabajos_equipo_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Entidad encargada de recibor los valores de las decanter se ' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`vol_recolectados_procesados`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`vol_recolectados_procesados` (
    `id_vol_recolectados_procesados` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NULL ,
    `id_servicio_otro` MEDIUMINT UNSIGNED NOT NULL ,
    `diario` DECIMAL(5,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_vol_recolectados_procesados`) ,
    INDEX `fk_vlo_recolectados_procesados_servicio_otro_idx` (`id_servicio_otro` ASC) ,
    CONSTRAINT `fk_vlo_recolectados_procesados_servicio_otro`
      FOREIGN KEY (`id_servicio_otro` )
      REFERENCES `slnecc_control`.`servicio_otro` (`id_servicio_otro` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
    INDEX `fk_vol_recolectados_procesados_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_vol_recolectados_procesados_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Entidad de opcion\n\nefluente:\n\nsistema activo\ncontrapozo\ntanq' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`vol_agua_operaciones`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`vol_agua_operaciones` (
    `id_vol_agua_operaciones` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_otro` MEDIUMINT UNSIGNED NOT NULL ,    
    `diario` DECIMAL(4,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_vol_agua_operaciones`) ,
    INDEX `fk_vol_agua_operaciones_servicio_otro_idx` (`id_servicio_otro` ASC) ,
    CONSTRAINT `fk_vol_agua_operaciones_servicio_otro`
      FOREIGN KEY (`id_servicio_otro` )
      REFERENCES `slnecc_control`.`servicio_otro` (`id_servicio_otro` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
    INDEX `fk_vol_agua_operaciones_reportes_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_vol_agua_operaciones_reportes`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'entidad con opciones\n\nagua:\nfresca para polimero\nde dw para ' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`vol_cortes_fluidos`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`vol_cortes_fluidos` (
    `id_vol_cortes_fluidos` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_otro` MEDIUMINT UNSIGNED NOT NULL ,        
    `cortes_flidos` VARCHAR(50) NULL ,
    `bbls` DECIMAL(4,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_vol_cortes_fluidos`) ,
    INDEX `fk_vol_cortes_fluidos_servicio_otro_idx` (`id_servicio_otro` ASC) ,
    CONSTRAINT `fk_vol_cortes_fluidos_servicio_otro`
      FOREIGN KEY (`id_servicio_otro` )
      REFERENCES `slnecc_control`.`servicio_otro` (`id_servicio_otro` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
    INDEX `fk_cortes_fluidos_reportes_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_cortes_fluidos_reportes`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'los cortes fluidos son manejados por eusuario, solamente se almacenara la informacion de los tanques ' /* comment truncated */;

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`manejo_efluentes`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`manejo_efluentes` (
    `id_manejo_efluentes` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_otro` MEDIUMINT UNSIGNED NOT NULL ,    
    `tanque1` DECIMAL(5,1) NULL ,
    `tanque2` DECIMAL(5,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_manejo_efluentes`) ,
    INDEX `fk_manejo_efluentes_servicio_otro_idx` (`id_servicio_otro` ASC) ,
    CONSTRAINT `fk_manejo_efluentes_servicio_otro`
      FOREIGN KEY (`id_servicio_otro` )
      REFERENCES `slnecc_control`.`servicio_otro` (`id_servicio_otro` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    INDEX `fk_manejo_efluentes_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_manejo_efluentes_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'entidad de opciones:\n\ntipo:\n\ntratados\nevacuados\nfloculos';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`manejo_cortes`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`manejo_cortes` (
    `id_manejo_cortes` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_otro` MEDIUMINT UNSIGNED NOT NULL ,    
    `bbls_dia` DECIMAL(5,1) NULL ,
    `celda_no` SMALLINT UNSIGNED NULL ,
    `cap_bls` DECIMAL(6,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_manejo_cortes`) ,
    INDEX `fk_manejo_cortes_servicio_otro_idx` (`id_servicio_otro` ASC) ,
    CONSTRAINT `fk_manejo_cortes_servicio_otro`
      FOREIGN KEY (`id_servicio_otro` )
      REFERENCES `slnecc_control`.`servicio_otro` (`id_servicio_otro` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    INDEX `fk_manejo_cortes_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_manejo_cortes_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`movimiento_efluentes`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`movimiento_efluentes` (
    `id_movimiento_efluentes` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `vaccum` VARCHAR(12) NOT NULL ,
    `capacidad_bls` DECIMAL(5,1) NULL ,
    `no_viajes_diario` SMALLINT UNSIGNED NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_movimiento_efluentes`) ,
    INDEX `fk_movimiento_efluentes_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_movimiento_efluentes_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'El valor acumulado es parqa cada uno para cada vaccum';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`movimiento_cortes`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`movimiento_cortes` (
    `id_movimiento_cortes` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `volqueta` VARCHAR(12) NULL ,
    `m3` DECIMAL(4,1) NULL ,
    `diario` DECIMAL(3,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_movimiento_cortes`) ,
    INDEX `fk_movimiento_cortes_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_movimiento_cortes_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'entidad con opciones:\n\nvolqueta:\n1\n2\n3\n4\n\nlos acumulados van' /* comment truncated */;



  -- -----------------------------------------------------
  -- Table `slnecc_control`.`materia_prima`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`materia_prima` (
    `id_materia_prima` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `codigo` VARCHAR(20) NOT NULL ,
    `nombre` VARCHAR(50) NOT NULL ,
    `marca` VARCHAR(50) NOT NULL ,
    `cantidad_presentacion` DECIMAL(4,2) NULL ,
    `unidad_medida` VARCHAR(45) NULL ,
    `costo` DECIMAL(4,3) NULL ,
    `stock_min` DECIMAL(4,1) NOT NULL ,
    `stock_max` DECIMAL(5,1) NULL ,
    `ubicacion` VARCHAR(50) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    UNIQUE INDEX `id_materia_prima` (`id_materia_prima` ASC) ,    
    UNIQUE INDEX `codigo` (`codigo` ASC) ,    
    PRIMARY KEY (`nombre`,`marca`,`cantidad_presentacion`) )
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Entidad encargada de manejar las materias primas usados en e' /* comment truncated */;

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`parametros_mp`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`parametros_mp` (
    `id_parametros_mp` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_materia_prima` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_otro` MEDIUMINT UNSIGNED NOT NULL ,
    `procedimiento` VARCHAR(50) NOT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    UNIQUE INDEX `id_parametros_mp_UNIQUE` (`id_parametros_mp` ASC) ,
    PRIMARY KEY (`id_materia_prima`,`id_servicio_otro`) ,
    INDEX `fk_parametros_materia_mp_idx` (`id_materia_prima` ASC) ,    
    CONSTRAINT `fk_parametros_materia_mp`
      FOREIGN KEY (`id_materia_prima` )
      REFERENCES `slnecc_control`.`materia_prima` (`id_materia_prima` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
      INDEX `fk_parametros_mp_servicio_otro_idx` (`id_servicio_otro` ASC) ,    
    CONSTRAINT `fk_parametros_mp_servicio_otro`
      FOREIGN KEY (`id_servicio_otro` )
      REFERENCES `slnecc_control`.`servicio_otro` (`id_servicio_otro` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'En esta entidad se controla el uso de los quimicos con los p' /* comment truncated */;

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`iventario_entrada`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`inv_entrada` (
    `id_inv_entrada` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_parametros_mp` MEDIUMINT UNSIGNED NOT NULL,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL,
    `fecha` DATE NULL ,
    `lote` MEDIUMINT UNSIGNED COMMENT'en caso de no especificar un numero de guia se controla por lote es un valor autoincremental para cada lote de entrada',
    `guia_remision` VARCHAR(20) NOT NULL DEFAULT 0,
    `cantidad` DECIMAL(5,1) NULL ,    
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_inv_entrada`) ,
    INDEX `fk_inv_entrada_parametros_mp_idx` (`id_parametros_mp` ASC) ,
    INDEX `fk_inv_entrada_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_inv_entrada_parametros_mp`
      FOREIGN KEY (`id_parametros_mp` )
      REFERENCES `slnecc_control`.`parametros_mp` (`id_parametros_mp` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    CONSTRAINT `fk_inv_entrada_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Entidad que controla el ingreso de los quimicos al pozo';

-- -----------------------------------------------------
  -- Table `slnecc_control`.`inventario_salida`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`inv_salida` (
    `id_inv_salida` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_parametros_mp` MEDIUMINT UNSIGNED NOT NULL,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL,
    `fecha` DATE NULL ,
    `lote` MEDIUMINT UNSIGNED  COMMENT'se consulta al inv_entrada y se copia en esta columna',
    `guia_remision` VARCHAR(20) NOT NULL DEFAULT 0 COMMENT'se usa solo si la salida se controla',
    `cantidad` DECIMAL(5,1) NULL ,    
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_inv_salida`) ,
    INDEX `fk_inv_salida_parametros_mp_idx` (`id_parametros_mp` ASC) ,
    INDEX `fk_inv_salida_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_inv_salida_parametros_mp`
      FOREIGN KEY (`id_parametros_mp` )
      REFERENCES `slnecc_control`.`parametros_mp` (`id_parametros_mp` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    CONSTRAINT `fk_inv_salida_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Entidad que controla el uso y salida de los quimicos del pozo';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`clasificacion_costos`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`clasificacion_costo` (
    `id_clasificacion_costo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_proyecto` MEDIUMINT UNSIGNED NOT NULL ,
    `nombre` VARCHAR(90) NOT NULL ,    
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_clasificacion_costo`) ,
    UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) ,
    INDEX `fk_clasificacion_costo_proyecto_idx` (`id_proyecto` ASC) ,
    CONSTRAINT `fk_clasificacion_costo_proyecto`
      FOREIGN KEY (`id_proyecto` )
      REFERENCES `slnecc_control`.`proyecto` (`id_proyecto` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'entidad que maneja los costos para una operacion o un proyecto';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`costo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`costo` (
    `id_costo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_clasificacion_costo` MEDIUMINT UNSIGNED NOT NULL ,
    `descripcion_costo` VARCHAR(50) NOT NULL ,
    `costo` DECIMAL(6,2) NOT NULL ,    
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_costo`) ,
    INDEX `fk_costo_clasificacion_idx` (`id_clasificacion_costo` ASC) ,
    CONSTRAINT `fk_costo_clasificacion`
      FOREIGN KEY (`id_clasificacion_costo` )
      REFERENCES `slnecc_control`.`clasificacion_costo` (`id_clasificacion_costo` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Entidad encargada de almacenar los detalles de los costos para un proyecto';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`salida_costo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`salida_costo` (
    `id_salida_costo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_costo` MEDIUMINT UNSIGNED NOT NULL ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `costo` DECIMAL(6,2) NOT NULL COMMENT'Se copia el costo de la entidad costo',            
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_salida_costo`) ,
    INDEX `fk_salida_costo_costo_idx` (`id_costo` ASC) ,
    INDEX `fk_salida_costo_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_salida_costo_costo`
      FOREIGN KEY (`id_costo` )
      REFERENCES `slnecc_control`.`costo` (`id_costo` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    CONSTRAINT `fk_salida_costo_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'Entidad encargada de almacenar los detalles de los costos para un proyecto';  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`comentarios`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`comentarios` (
    `id_comentarios` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `titulo` VARCHAR(150) NULL ,
    `comentarios` MEDIUMTEXT NULL ,
    `responsable` VARCHAR(50) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_comentarios`) ,
    INDEX `fk_comentarios_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_comentarios_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`usuarios`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`usuarios` (
    `id_usuario` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `usuario` VARCHAR(40) NOT NULL ,
    `pass` VARCHAR(200) NOT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`usuario`) ,
    UNIQUE INDEX `id_usuario_UNIQUE` (`id_usuario` ASC) )
  ENGINE = InnoDB AUTO_INCREMENT=1;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`cambios_db`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`cambios_db` (
    `id_cambio_db` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_usuario` SMALLINT UNSIGNED NOT NULL ,
    `fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    `tabla` VARCHAR(60) NOT NULL ,
    PRIMARY KEY (`id_cambio_db`) ,
    INDEX `fk_cambios_db_usuarios_idx` (`id_usuario` ASC) ,
    CONSTRAINT `fk_cambios_db_usuarios`
      FOREIGN KEY (`id_usuario` )
      REFERENCES `slnecc_control`.`usuarios` (`id_usuario` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'gestiona los cambios que se realizan en las tablas de la bas' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`log_cambios_bd`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`log_cambios_bd` (
    `id_log_cambios_bd` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_cambio_db` MEDIUMINT UNSIGNED NOT NULL ,
    `id_registro` MEDIUMINT UNSIGNED NOT NULL ,
    `nombre_columna` VARCHAR(60) NULL ,
    `valor_original` VARCHAR(100) NULL ,
    `valor_nuevo` VARCHAR(100) NULL ,
    `fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_log_cambios_bd`) ,
    INDEX `fk_log_cambios_cambios_db_idx` (`id_cambio_db` ASC) ,
    CONSTRAINT `fk_log_cambios_cambios_db`
      FOREIGN KEY (`id_cambio_db` )
      REFERENCES `slnecc_control`.`cambios_db` (`id_cambio_db` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1
  COMMENT = 'no se van a registrar los cambios realizados a los campos de' /* comment truncated */;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`logs`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`logs` (
    `id_logs` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    `id_usuario` SMALLINT UNSIGNED NOT NULL ,
    `actividad` VARCHAR(500) NOT NULL ,
    `nombre_equipo` VARCHAR(50) NOT NULL ,
    PRIMARY KEY (`id_logs`) ,
    INDEX `fk_logs_usuarios_idx` (`id_usuario` ASC) ,
    CONSTRAINT `fk_logs_usuarios`
      FOREIGN KEY (`id_usuario` )
      REFERENCES `slnecc_control`.`usuarios` (`id_usuario` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE)
  ENGINE = InnoDB AUTO_INCREMENT=1;


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`log_users`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`log_users` (
    `id_log_users` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_usuario` SMALLINT NOT NULL ,
    `entrada` DATETIME NULL ,
    `salida` DATETIME NULL ,
    `hora_registro` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_log_users`) )
  ENGINE = InnoDB AUTO_INCREMENT=1;


  SET SQL_MODE=@OLD_SQL_MODE;
  SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
  SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;