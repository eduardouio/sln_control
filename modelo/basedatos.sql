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
  -- Table `slnecc_control`.`usuario`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`usuario` (
    `id_usuario` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `usuario` VARCHAR(40) NOT NULL ,
    `pass` VARCHAR(200) NOT NULL ,
    `tipo` VARCHAR(60) NOT NULL DEFAULT 'User' COMMENT  'Administrador, Medio, User' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`usuario`) ,
    UNIQUE INDEX `id_usuario_UNIQUE` (`id_usuario` ASC) 
    )
    ENGINE = InnoDB
    AUTO_INCREMENT = 1
    COMMENT = 'Entidad encargada de registrar a los usuarios del sistema, es padre de comentario, y luego de terminar con el modelo de datos
              se usará esta entidad para el registro de actividades del sistema pudiendo identificar a los resposables de la creacion edicion 
              de los informes, para ello se definen tres tipos de usuarios el user normal, el usuarui medio con capacidad de borrar algunas fk_costo_clasificacion
              este actuará como supervisor, y el Administrador que será quien pueda mandar todo al carajo, sin embargo se deben registrar todos 
              los cambios a la base de datos para que sea posible recuperar informacion en caso de que alguien meta mal el dedo';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`proyecto`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`proyecto` (
    `id_proyecto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `cliente` VARCHAR(45) NOT NULL ,
    `fecha_inicio` DATE NOT NULL ,
    `fecha_fin` DATE NULL ,
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_proyecto`, `cliente`) 
    )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que representa un proyecto, es un ente de control de los costos y manejo de presupuesto para su ejecución';


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
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad dependiente de proyecto, aqui se registrn los pozos en los que se trabajó durante el desarrollo del proyecto
             y ademas es un ente de control para el reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`revision_reporte`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`revision_reporte` (
    `id_revision` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `fecha_emision` DATE NOT NULL ,
    `fecha_revision` DATE NOT NULL ,    
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_revision`) 
    )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que regitra los cambios realizados a la estructura del reporte, no guarda ninguna dependencia del reporte, pero es 
            necesario que se registren aquí cualquier cambio (los cambios serán en su mayoria en el diseño de la app)';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`reporte`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`reporte` (
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_pozo` MEDIUMINT UNSIGNED NOT NULL ,
    `no_reprote` MEDIUMINT NOT NULL ,
    `codigo` VARCHAR(45) NOT NULL ,
    `fecha` DATE NOT NULL ,
    `profundidad_final` DECIMAL(5,1) NOT NULL DEFAULT '0.0' ,
    `seccion` DECIMAL(5,1) NOT NULL DEFAULT '0.0' ,
    `company_man` VARCHAR(50) NOT NULL ,
    `tool_pusher` VARCHAR(50) NOT NULL ,
    `superintendente` VARCHAR(50) NOT NULL ,
    `rig_manager` VARCHAR(50) NOT NULL ,
    `supervisor_sln` VARCHAR(50) NOT NULL COMMENT 'El supervisor esta en la lista de personal en pozo' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_pozo`, `no_reprote`) ,
    UNIQUE INDEX `id_reporte_UNIQUE` (`id_reporte` ASC) ,
    INDEX `fk_reporte_pozo_idx` (`id_pozo` ASC) ,
    CONSTRAINT `fk_reporte_pozo`
      FOREIGN KEY (`id_pozo` )
      REFERENCES `slnecc_control`.`pozo` (`id_pozo` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Esta entidad representa el informe diario y es un ente control para el igreso de la informacion del reporte
            es una tabla de la que dependen mas de una entidad para existir, a pesar de ser una entidad de control tambien almacena 
            informacion';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`datos_lodo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`datos_lodo` (
    `id_datos_lodos` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `compania` VARCHAR(50) NULL ,
    `sistema` VARCHAR(50) NULL ,
    `peso_lodo` VARCHAR(6) NOT NULL DEFAULT '0.0' ,
    `viscosidad_plastica` VARCHAR(7) NULL ,
    `yield_point` DECIMAL(4,1) NOT NULL DEFAULT '0.0' ,
    `volumen_sa` DECIMAL(5,1) NOT NULL DEFAULT '0.0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_datos_lodos`) ,
    UNIQUE INDEX `id_reporte_UNIQUE` (`id_reporte` ASC) ,
    INDEX `fk_datos_lodo_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_datos_lodo_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que registra los datos del lodo, la cual es dependiente de la entidad reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`contenido_solidos`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`contenido_solidos` (
    `id_contenido_solidos` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `solidos` DECIMAL(3,1) NOT NULL DEFAULT '0.0' ,
    `arena` DECIMAL(3,1) NOT NULL DEFAULT '0.0' ,
    `lgs` DECIMAL(3,1) NOT NULL DEFAULT '0.0' ,
    `hgs` DECIMAL(3,1) NOT NULL DEFAULT '0.0' ,
    `mtb` SMALLINT UNSIGNED NULL DEFAULT '0',
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_contenido_solidos`) ,
    UNIQUE INDEX `id_reporte_UNIQUE` (`id_reporte` ASC) ,
    INDEX `fk_contenido_solidos_reportes_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_contenido_solidos_reportes`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que registra el contenido de los solidos presentes en el Lodo de perforacion';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`perforacion`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`perforacion` (
    `id_perforacion` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `profundidad_inicial` DECIMAL(5,1) NOT NULL DEFAULT '0.0',
    `porosidad` DECIMAL(3,1) NOT NULL DEFAULT '0.0' COMMENT 'se registra en porcentaje\\n' ,
    `wash_out` DECIMAL(3,1) NOT NULL DEFAULT '0.0' COMMENT 'se registra en porcentaje\\n' ,
    `factor_expancion` DECIMAL(3,1) NOT NULL DEFAULT '0.0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_perforacion`) ,
    UNIQUE INDEX `id_reporte_UNIQUE` (`id_reporte` ASC) ,
    INDEX `fk_perforacion_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_perforacion_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad encargada de registrar los datos de la perforacion del pozo';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`cargo_sln`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`cargo_sln` (
    `id_cargo_sln` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,    
    `cargo` VARCHAR(45) NOT NULL ,
    `descripcion` VARCHAR(45) NOT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_cargo_sln`)
    )        
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'En esta entidad se regisrtan todos lo cargos que puedan existir dentro de la empresa, no es un Listado
            de las personas con su cargo es un listado de los cargos que existen en la empresa. es una tabla padre
            independiente del reporte';


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
    UNIQUE INDEX `cedula_UNIQUE` (`cedula` ASC) 
    )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que registra un listado de todo el personal de la empresa, solo la informacion de las personas no sus
            funciones dentro de la misma, esta es un entidad padre no dependiente del reporte';


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
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad encargada de relacionar y registrar el personal que trabaja en el pozo y los cargos que ocupaba cada uno
            , esta es una entidad hija dependiente de personal, cargos_sln y del reporte, como podemos ver es esta la entidad
            que controla los cargos del personal, esto es asi porque una persona puede cambiar de cargo asender de puesto, esto se puede hacer
            ademas de tener un historial completo de todos los cargos de cada persona, entidad que da cara al reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zarandas`
  -- -----------------------------------------------------
    CREATE  TABLE IF NOT EXISTS `slnecc_control`.`zaranda` (
    `id_zaranda` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `zaranda_no` SMALLINT UNSIGNED NOT NULL ,
    `peso_entrada` VARCHAR(6) NOT NULL DEFAULT '0.0' ,
    `peso_salida` VARCHAR(6) NOT NULL DEFAULT '0.0' ,
    `peso_descargados` VARCHAR(6) NOT NULL DEFAULT '0.0' ,
    `consumo_malla_dia` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
    `horas_dia` DECIMAL(3,1) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_zaranda`) ,
    INDEX `fk_zaranda_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_zaranda_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que registra el uso y consumo de las mallas en el pozo, entidad padre y a la vez entidad dependiente
            del informe';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_mallas`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`zaranda_mallas` (
    `id_zaranda_mallas` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_zaranda` MEDIUMINT UNSIGNED NOT NULL ,
    `malla_deck_no` SMALLINT NOT NULL ,
    `mesh` DECIMAL(4,1) NOT NULL DEFAULT '0.0' ,
    `horas` DECIMAL(3,1) NOT NULL DEFAULT '0.0' COMMENT 'en el informe de peuebas veo que las horas se aumentan en 36\\n' ,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_zaranda_mallas`) ,
    INDEX `mallas_zaranda_idx` (`id_zaranda` ASC) ,
    CONSTRAINT `fk_mallas_zaranda`
      FOREIGN KEY (`id_zaranda` )
      REFERENCES `slnecc_control`.`zaranda` (`id_zaranda` )
      ON DELETE CASCADE
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que registra el uso de las zarandas en horas y mesh valores numericos, entidad dependiente de zaranda
            no es parte del informe directamente, sino a travez de su entidad padre (zaranda)';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`acondicionador_lodo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`acondicionador_lodo` (
    `id_acondicionador_lodo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `proceso` VARCHAR(60) NOT NULL COMMENT 'desarenador\\ndesarcillador' ,
    `presion` DECIMAL(4,1) NOT NULL DEFAULT '0.0' ,
    `peso_entrada` VARCHAR(6) NOT NULL DEFAULT '0.0' COMMENT 'los valores tienen un + al final preguntar que es ejem 5.6+\\n' ,
    `peso_salida` VARCHAR(6) NOT NULL DEFAULT '0.0' COMMENT 'los valores tienen un + al final preguntar que es ejem 5.6+\\n' ,
    `peso_descargados` VARCHAR(6) NOT NULL DEFAULT '0.0' ,    
    `horas_dia` DECIMAL(3,1) NOT NULL DEFAULT '0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
	UNIQUE INDEX `id_acondicionador_lodo_UNIQUE` (`id_acondicionador_lodo` ASC),
	PRIMARY KEY (`id_reporte`,`proceso`) ,
    INDEX `fk_acondicionador_lodo_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_acondicionador_lodo_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que registra los parametros de uso del acondicionador de lodo para los procesos
              de desarenador y desarcillador, emntidad dependiente de reporte y padre de zaranda_acondicionador';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_acondicionador`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`zaranda_acondicionador` (
    `id_zaranda_acondicionador` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `malla_deck_no` SMALLINT NULL ,
    `mesh` DECIMAL(4,1) NOT NULL DEFAULT '0.0' ,
    `horas` DECIMAL(3,1) NOT NULL DEFAULT '0.0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_zaranda_acondicionador`) ,
    INDEX `fk_zaranda_acondicionador_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_zaranda_acondicionador_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE      
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1 
  COMMENT = 'Entidad que registra los datos correspondientes al uso de la zaranda acondicionador, entidad dependiente dependiente
            de acondicionador_lodo, por ende forma parte del reporte de forma indirecta';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_acondicionador_mallas`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`zaranda_acondicionador_mallas` (
    `id_zaranda_acondicionador_mallas` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `consumo_malla_dia` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0' ,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_reporte`) ,
UNIQUE INDEX `id_zaranda_acondicionador_mallas_UNIQUE` (`id_zaranda_acondicionador_mallas` ASC),	
    INDEX `fk_zaranda_acondicionador_mallas_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_zaranda_acondicionador_mallas_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1 
  COMMENT = 'entidad que registra el uso de mallas en el proceso de zaranda_acondicionador, no se registra en la entidad anterior
            porque es una vez por reporte y no por registro (en la entidad anterior la tabla tiene varios ingresos para el mismo reporte)
            es por eso que fue necesaria la creacion de una nueva entidad dependiente de informe, pero se entiende que lo unico que guarda es
            un valor de mallas usadas en este día, en caso de usar nada se deberá crear un regisrto con valor cero';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`equipo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`equipo` (
    `id_equipo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,    
    `codigo` VARCHAR(50) NOT NULL,    
    `nombre` VARCHAR(50) NOT NULL ,
    `modelo` VARCHAR(50) NOT NULL DEFAULT 'Sin/Modelo',
    `tipo` VARCHAR(50) NOT NULL DEFAULT 'Otros',    
    `caracteristicas` MEDIUMTEXT DEFAULT NULL,
    `usos` MEDIUMTEXT DEFAULT NULL,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_equipo`) ,
    UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC)
    )
    ENGINE = InnoDB 
    AUTO_INCREMENT = 1
    COMMENT = 'Entidad que se encarga de registrar todos los equipos del uso de la empresa dentro de un proyecto,
              no necesariamente se refiere al los equipos propios sino a los equipos usados en la ejecucion de los 
              trabajos en los proyectos, las mallas no son equipos son consumibles, entidad no dependiente del reporte
                y padre de trabajo_equipo';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`servicio_fluido`
  -- -----------------------------------------------------
  
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`servicio_fluido` (
    `id_servicio_fluido` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,    
    `codigo` VARCHAR(50) NOT NULL,    
    `nombre` VARCHAR(50) NOT NULL ,    
    `descripcion` VARCHAR(300) NOT NULL DEFAULT 'Sin/Descripción'  ,
    `tipo` VARCHAR(50) NOT NULL ,    
    `notas` MEDIUMTEXT NULL,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_servicio_fluido`) ,
    UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC)
    )
    ENGINE = InnoDB 
    AUTO_INCREMENT = 1
    COMMENT = 'Entidad que registran todos los servicion que la compañia ofrece para la ejecucion del proyecto
              ademas de los servicios se registra fluidos cortes y demas actividades que se realicen en los trabajos
            Entidad no dependiente de reporte y padre de trabajo_equipo, vol_recolectados_procesados, vol_agua_operaciones
            vol_cortes_fluidos(maneja doble herencia), manejo_efluentes, manejo_cortes, manejo_efluentes';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`trabajos_centrifuga`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`trabajo_equipo` (
    `id_trabajo_equipo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_equipo` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_fluido` MEDIUMINT UNSIGNED NOT NULL ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,        
    `horas` DECIMAL(3,1) NOT NULL DEFAULT '0.0' ,
    `rpm` DECIMAL(4,1) NOT NULL DEFAULT '0.0' ,
    `gpm` DECIMAL(4,1) NOT NULL DEFAULT '0.0' ,
    `ppg_entrada` VARCHAR(6) NOT NULL DEFAULT '0.0' ,
    `ppg_salida` VARCHAR(6) NOT NULL DEFAULT '0.0' ,
    `ppg_descarga` VARCHAR(6) NOT NULL DEFAULT '0.0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_trabajo_equipo`) ,    
    INDEX `fk_trabajo_equipo_equipo_idx` (`id_equipo` ASC) ,
    CONSTRAINT `fk_trabajos_equipo_equipo`
      FOREIGN KEY (`id_equipo` )
      REFERENCES `slnecc_control`.`equipo` (`id_equipo` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    INDEX `fk_id_servicio_fluido_idx` (`id_servicio_fluido` ASC) ,
    CONSTRAINT `fk_id_servicio_fluido`
      FOREIGN KEY (`id_servicio_fluido` )
      REFERENCES `slnecc_control`.`servicio_fluido` (`id_servicio_fluido` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    INDEX `fk_trabajos_equipo_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_trabajos_equipo_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'entidad que se encarga de registra el uso de los equipos del tipo centrifugas, los registros almacenan
            valores para tipos de tratamientos heredados ed la entidad servicio_fluido, entidad dependiente ademas de reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`vol_recolectados_procesados`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`vol_recolectados_procesados` (
    `id_vol_recolectados_procesados` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NULL ,
    `id_servicio_fluido` MEDIUMINT UNSIGNED NOT NULL ,
    `diario` DECIMAL(5,1) NOT NULL DEFAULT '0.0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_vol_recolectados_procesados`) ,
    INDEX `fk_vlo_recolectados_procesados_servicio_fluido_idx` (`id_servicio_fluido` ASC) ,
    CONSTRAINT `fk_vlo_recolectados_procesados_servicio_fluido`
      FOREIGN KEY (`id_servicio_fluido` )
      REFERENCES `slnecc_control`.`servicio_fluido` (`id_servicio_fluido` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
    INDEX `fk_vol_recolectados_procesados_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_vol_recolectados_procesados_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
    ENGINE = InnoDB AUTO_INCREMENT = 1
    COMMENT = 'Entidad encargada de registrar los volumenes de efluentes recolectados y procesados para cada dia(reporte)
              esta entidad es edpendiente de servicio_fluido y de el reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`vol_agua_operaciones`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`vol_agua_operaciones` (
    `id_vol_agua_operaciones` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_fluido` MEDIUMINT UNSIGNED NOT NULL ,    
    `diario` DECIMAL(4,1) NOT NULL DEFAULT '0.0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_vol_agua_operaciones`) ,
    INDEX `fk_vol_agua_operaciones_servicio_fluido_idx` (`id_servicio_fluido` ASC) ,
    CONSTRAINT `fk_vol_agua_operaciones_servicio_fluido`
      FOREIGN KEY (`id_servicio_fluido` )
      REFERENCES `slnecc_control`.`servicio_fluido` (`id_servicio_fluido` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
    INDEX `fk_vol_agua_operaciones_reportes_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_vol_agua_operaciones_reportes`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que guarda los valores para los volumenes de agua usados en el trabajo diario, se registra un
            valor diario para cada tipo de agua por defecto es cero, entidad edpendiente de reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`vol_cortes_fluidos`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`vol_cortes_fluidos` (
    `id_vol_cortes_fluidos` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_fluido` MEDIUMINT UNSIGNED NOT NULL ,        
    `id_equipo` MEDIUMINT UNSIGNED NULL DEFAULT NULL ,            
    `bbls` DECIMAL(4,1) NOT NULL DEFAULT '0.0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_vol_cortes_fluidos`) ,
    INDEX `fk_vol_cortes_fluidos_servicio_fluido_idx` (`id_servicio_fluido` ASC) ,
    CONSTRAINT `fk_vol_cortes_fluidos_servicio_fluido`
      FOREIGN KEY (`id_servicio_fluido` )
      REFERENCES `slnecc_control`.`servicio_fluido` (`id_servicio_fluido` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE, 
      INDEX `fk_vol_cortes_fluidos_equipo_idx` (`id_equipo` ASC) ,
    CONSTRAINT `fk_vol_cortes_fluidos_equipo`
      FOREIGN KEY (`id_equipo` )
      REFERENCES `slnecc_control`.`equipo` (`id_equipo` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,     
    INDEX `fk_cortes_fluidos_reportes_idx` (`id_reporte` ASC) ,    
    CONSTRAINT `fk_cortes_fluidos_reportes`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad encargada de registrar los volumenes de cortes y fluidos usados en la perforacion, para el reporte
            vigente, ademas esta entidad es doblemente dependiente de servicio_fluido ya quu se regustra los tanques y los
            fluidos de estos datos que estan en la tabla padre(servicio_fluido), entidad dependiente de reporte';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`manejo_efluentes`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`manejo_efluentes` (
    `id_manejo_efluentes` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_fluido` MEDIUMINT UNSIGNED NOT NULL ,    
    `tanque1` DECIMAL(5,1) NOT NULL DEFAULT '0.0' ,
    `tanque2` DECIMAL(5,1) NOT NULL DEFAULT '0.0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_manejo_efluentes`) ,
    INDEX `fk_manejo_efluentes_servicio_fluido_idx` (`id_servicio_fluido` ASC) ,
    CONSTRAINT `fk_manejo_efluentes_servicio_fluido`
      FOREIGN KEY (`id_servicio_fluido` )
      REFERENCES `slnecc_control`.`servicio_fluido` (`id_servicio_fluido` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    INDEX `fk_manejo_efluentes_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_manejo_efluentes_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
    ENGINE = InnoDB 
    AUTO_INCREMENT = 1
    COMMENT = 'Entidad que se encargada ed amacenar los valores para el manejo de efluentes, del tipo tratados, evacuados,
            entidad dependiente de servicio_fluido (tipos de efluente) y de reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`manejo_cortes`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`manejo_cortes` (
    `id_manejo_cortes` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_fluido` MEDIUMINT UNSIGNED NOT NULL ,    
    `bbls_dia` DECIMAL(5,1) NOT NULL DEFAULT '0.0' ,
    `celda_no` SMALLINT UNSIGNED NOT NULL ,
    `cap_bls` DECIMAL(6,1) NOT NULL DEFAULT '0.0' ,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_manejo_cortes`) ,
    INDEX `fk_manejo_cortes_servicio_fluido_idx` (`id_servicio_fluido` ASC) ,
    CONSTRAINT `fk_manejo_cortes_servicio_fluido`
      FOREIGN KEY (`id_servicio_fluido` )
      REFERENCES `slnecc_control`.`servicio_fluido` (`id_servicio_fluido` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    INDEX `fk_manejo_cortes_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_manejo_cortes_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
    ENGINE = InnoDB 
    AUTO_INCREMENT = 1
    COMMENT = 'Entida que registra los valores para el manejo de cortes del sia de trabajo, entidad dependiente de reporte y de servicio_fluido';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`movimiento_efluentes`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`movimiento_efluentes` (
    `id_movimiento_efluentes` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `vaccum` VARCHAR(12) NOT NULL ,
    `capacidad_bls` DECIMAL(5,1) NOT NULL DEFAULT '0.0' ,
    `no_viajes_diario` SMALLINT UNSIGNED NOT NULL DEFAULT '0' ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_movimiento_efluentes`) ,
    INDEX `fk_movimiento_efluentes_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_movimiento_efluentes_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
    ENGINE = InnoDB 
    AUTO_INCREMENT = 1
    COMMENT = 'Entidad que registra los valores en bls del movimiento de efluentes para cada reporte, entidad dependiente de reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`movimiento_cortes`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`movimiento_cortes` (
    `id_movimiento_cortes` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `volqueta` VARCHAR(12) NOT NULL ,
    `m3` DECIMAL(4,1) NOT NULL ,
    `diario` DECIMAL(3,1) NOT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_movimiento_cortes`) ,
    INDEX `fk_movimiento_cortes_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_movimiento_cortes_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
    ENGINE = InnoDB 
    AUTO_INCREMENT = 1
    COMMENT = 'Entidad que registra el movimiento de cortes en m3, entidad dependiente de reporte';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`materia_prima`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`materia_prima` (
    `id_materia_prima` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `codigo` VARCHAR(20) NOT NULL ,
    `nombre` VARCHAR(50) NOT NULL ,
    `marca` VARCHAR(50) NOT NULL DEFAULT 'S/M' ,
    `cantidad_presentacion` DECIMAL(4,2) NULL ,
    `unidad_medida` VARCHAR(45) NOT NULL DEFAULT 'Unidades',    
    `stock_min` SMALLINT NOT NULL DEFAULT '0' ,
    `stock_max` SMALLINT NOT NULL DEFAULT '0' ,
    `ubicacion` VARCHAR(50) NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    UNIQUE INDEX `id_materia_prima` (`id_materia_prima` ASC) ,    
    UNIQUE INDEX `codigo` (`codigo` ASC) ,    
    PRIMARY KEY (`nombre`,`marca`,`cantidad_presentacion`) )
  ENGINE = InnoDB AUTO_INCREMENT = 1
  COMMENT = 'Entidad que registra un listado de materia prima usada en opracion, se considera materia prima a los
            productos consumibles para la ejecucion correcta de los trabajos en locacion, entidad no dependiente de
            reporte y padre de inv_entrada y de inventario_salida';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`parametros_mp`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`parametros_mp` (
    `id_parametros_mp` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_materia_prima` MEDIUMINT UNSIGNED NOT NULL ,
    `id_servicio_fluido` MEDIUMINT UNSIGNED NOT NULL ,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    UNIQUE INDEX `id_parametros_mp_UNIQUE` (`id_parametros_mp` ASC) ,
    PRIMARY KEY (`id_materia_prima`,`id_servicio_fluido`) ,
    INDEX `fk_parametros_materia_mp_idx` (`id_materia_prima` ASC) ,    
    CONSTRAINT `fk_parametros_materia_mp`
      FOREIGN KEY (`id_materia_prima` )
      REFERENCES `slnecc_control`.`materia_prima` (`id_materia_prima` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
      INDEX `fk_parametros_mp_servicio_fluido_idx` (`id_servicio_fluido` ASC) ,    
    CONSTRAINT `fk_parametros_mp_servicio_fluido`
      FOREIGN KEY (`id_servicio_fluido` )
      REFERENCES `slnecc_control`.`servicio_fluido` (`id_servicio_fluido` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'En esta entidad se controla el uso de los quimicos, de esta forma se optimiza su uso,
            ademas es hija de materia_prima y de servicio_fluido y padre de inventario_salida, como se dijo arriba
            esta es solo una entidad de control';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`iventario_entrada`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`inv_entrada` (
    `id_inv_entrada` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_materia_prima` MEDIUMINT UNSIGNED NOT NULL,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL,
    `fecha` DATE NOT NULL,
    `lote` MEDIUMINT UNSIGNED COMMENT'en caso de no especificar un numero de guia se controla por lote es un valor autoincremental para cada lote de entrada',
    `guia_remision` VARCHAR(20) NOT NULL DEFAULT 0,
    `cantidad` DECIMAL(5,1) NOT NULL ,  
    `costo` DECIMAL(4,2) NOT NULL ,  
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_inv_entrada`) ,
    INDEX `fk_inv_entrada_matria_mp_idx` (`id_materia_prima` ASC) ,
    INDEX `fk_inv_entrada_reporte_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_inv_entrada_materia_mp`
      FOREIGN KEY (`id_materia_prima` )
      REFERENCES `slnecc_control`.`materia_prima` (`id_materia_prima` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    CONSTRAINT `fk_inv_entrada_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
    ENGINE = InnoDB 
    AUTO_INCREMENT = 1
    COMMENT = 'Entidad que controla el ingreso de los quimicos al pozo, es dependiende de reporte y de materia_prima, el costo se ingresa
              para cada registro';

-- -----------------------------------------------------
  -- Table `slnecc_control`.`inventario_salida`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`inv_salida` (
    `id_inv_salida` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_parametros_mp` MEDIUMINT UNSIGNED NOT NULL,
    `id_inv_entrada` MEDIUMINT UNSIGNED NOT NULL,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL,
    `fecha` DATE NOT NULL ,
    `lote` MEDIUMINT UNSIGNED  COMMENT'se consulta al inv_entrada y se copia en esta columna',
    `guia_remision` VARCHAR(20) NOT NULL DEFAULT 0 COMMENT'se usa solo si la salida se controla',
    `cantidad` DECIMAL(5,1) NULL ,    
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_inv_salida`) ,
    INDEX `fk_inv_salida_parametros_mp_idx` (`id_parametros_mp` ASC) ,
    INDEX `fk_inv_salida_reporte_idx` (`id_reporte` ASC) ,
    INDEX `fk_inv_salida_inv_entrada_idx` (`id_parametros_mp` ASC) ,
    CONSTRAINT `fk_inv_salida_parametros_mp`
      FOREIGN KEY (`id_parametros_mp` )
      REFERENCES `slnecc_control`.`parametros_mp` (`id_parametros_mp` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
      CONSTRAINT `fk_inv_salida_inv_entrada`
      FOREIGN KEY (`id_inv_entrada` )
      REFERENCES `slnecc_control`.`inv_entrada` (`id_inv_entrada` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
    CONSTRAINT `fk_inv_salida_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que controla el uso y salida de los quimicos del pozo, entidad dependiende del inv_entrada para que las
              salidas sean controladas de acuerdo a las existencias y del reporte';

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
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que maneja la clasificacion de los costos para un proyecto, lo que significa que para cada proyecto se deberá generar
            una nueva clasificacion Entidad dependiente de proyecto y padre de costo';


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`costo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`costo` (
    `id_costo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_clasificacion_costo` MEDIUMINT UNSIGNED NOT NULL ,
    `descripcion_costo` VARCHAR(50) NOT NULL ,
    `costo_diario` DECIMAL(6,2) NOT NULL DEFAULT '0.0' ,    
    `costo_total` DECIMAL(6,2) NOT NULL DEFAULT '0.0',     
    `notas` MEDIUMTEXT NULL ,
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_costo`) ,
    INDEX `fk_costo_clasificacion_idx` (`id_clasificacion_costo` ASC) ,
    CONSTRAINT `fk_costo_clasificacion`
      FOREIGN KEY (`id_clasificacion_costo` )
      REFERENCES `slnecc_control`.`clasificacion_costo` (`id_clasificacion_costo` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad encargada de almacenar los detalles de los costos para un proyecto, ademas es un ente de control en las salidas de los 
            costos se tiene dos campos el uno es para registrar el costo diario (Esto en vista de que algunos procedimientos y materia prima tienen un 
              valor definido para cada dia, pero tambien se controlará el uso real de los gatos de materia prima a travez de las entidades encargadas
              ) en caso de no haber costo diario este puede quedar en cero, y el otro es para registrar el maximo del costo, elm mismo
            que deberá ser menor a la suma del costo diario para que un rpoyecto sea rentable, esta tabla no es dependiente del informe pero si 
            de la clasificacion de costo y es padre de salida_costo ';

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`salida_costo`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`salida_costo` (
    `id_salida_costo` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_costo` MEDIUMINT UNSIGNED NOT NULL ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `costo` DECIMAL(6,2) NOT NULL COMMENT'Se copia el costo de la entidad costo',            
    `cantidad` SMALLINT UNSIGNED NOT NULL DEFAULT '0.0' , 
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
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'Entidad que se encarga de registrar la salida de los costos al informe, los costos se manejan de la misma forma que los
            inventarios con la diferencia que son costos en lugar de materia, se ha creado un campo costo esto es para registrar el costo
            con el que baja de la tabla padre, para que cuando haya un cambio en algun costo la integridad de los informes pasados se mantenga
            esta entidad es hija de costo y de reporte ayuda a registrar los costos en el reporte diario';  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`comentario`
  -- -----------------------------------------------------
  CREATE  TABLE IF NOT EXISTS `slnecc_control`.`comentario` (
    `id_comentario` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `id_reporte` MEDIUMINT UNSIGNED NOT NULL ,
    `id_usuario` SMALLINT UNSIGNED NOT NULL ,
    `titulo` VARCHAR(150) NOT NULL ,
    `comentarios` MEDIUMTEXT NOT NULL ,    
    `creacion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id_comentario`) ,
    INDEX `fk_comentario_reporte_idx` (`id_reporte` ASC) ,
    INDEX `fk_comentario_id_usuario_idx` (`id_reporte` ASC) ,
    CONSTRAINT `fk_comentario_id_usuario`
      FOREIGN KEY (`id_usuario` )
      REFERENCES `slnecc_control`.`usuario` (`id_usuario` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE,
      CONSTRAINT `fk_comentario_reporte`
      FOREIGN KEY (`id_reporte` )
      REFERENCES `slnecc_control`.`reporte` (`id_reporte` )
      ON DELETE RESTRICT
      ON UPDATE CASCADE
      )
  ENGINE = InnoDB 
  AUTO_INCREMENT = 1
  COMMENT = 'En esta entidad se registran los comentarios que el reporte posee estos comentarios estan estructurados como los muestra el informe
            ademas como todos los usuarios que usan el sistema deben ser autoridades de la empresa los commentarios guardados responden a un id
            de usuario, para definir responsables entidad hija de reporte y de usuario' ;

  SET SQL_MODE=@OLD_SQL_MODE;
  SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
  SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;