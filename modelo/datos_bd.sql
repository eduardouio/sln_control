-- ---------------------------------------------------
-- ---------------------------------------------------
-- datos del moedlo de datos
-- Sln 
-- Autor <@eduardouio>
-- los datos se van a manejar por separado desde este comit la db es controlada desde el script
-- modelo/basedatos.sql los cambio se reflejarn al gráfico y no al revez e grafico es solo
-- informativo y no se toma como referencia e el desarrollo de la aplicacion
-- ---------------------------------------------------
-- ---------------------------------------------------

USE `slnecc_control`;

-- -----------------------------------------------------
-- Table `slnecc_control`.`proyecto`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`proyecto` (`cliente`, `fecha_inicio`, `fecha_fin`, `notas`) VALUES ('Sinopec', '2012-01-01', '2012-06-01', 'Este proyecto es una prueba a travez de la cual nuestro cliente evaluará nuestro desempeño durante el desarrollo del mismo');

-- -----------------------------------------------------
-- Table `slnecc_control`.`pozo`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`pozo` (`id_proyecto`, `nombre`, `ubicacion`, `inicio_actividad`, `fin_actividad`, `notas`) VALUES ('1', 'Rumiyacu 03 D', 'Auca', '2012-01-01', '2012-06-01', 'en esta ocacion el inicio de actividades edl pozo coincide con el del proyecto, pero esto es solo una coincidencia');

-- -----------------------------------------------------
-- Table `slnecc_control`.`revision_reporte`
-- -----------------------------------------------------
INSERT INTO `slnecc_control`.`revision_reporte` (`fecha_emision`, `fecha_revision`, `notas`) VALUES ('2011-03-18', '2012-08-24', '1.- Debe colocarse las horas de trabajo de cada una de las mallas en la casilla añadida junto al número de MESH, tanto de zarandas como de mud cleaner.
2.- La operación MQC  (Mud Quality Control) se refieren al dewatering del lodo del sistema activo con retornos de agua ó agua lodosa al mismo sistema activo. La operación DW se refiere al dewatering de lodos recolectado y/o desplazados pero con envíos de agua a tratamiento.
3.- En los GPM que ingresan a las centrífugas colocar sólo lo del lodo, de tal forma que el volumen procesado sea igual a la sumatoria de lo indicado en la tabla VOLUMENES RECOLECTADOS PROCESADOS que también se ha añadido al reporte.  
4. – Reportar al detalle los VOLUMENES RECOLECTADOS PROCESADOS  así como los VOLUMENES DE AGUA EN OPERACIONES, según lo señalado en las tablas añadidas al reporte
5.- En el reporte debe colocarse los volúmenes  tanto en  tanques verticales (fluidos) como en  tinas de  (cortes); y  debe indicarse el nombre técnico del fluido (no colocar lodo nuevo o lodo viejo).
6.- En la sección química se emplearán unidades de kg, galones, Sx según se señala en el reporte. En los casilleros marcados con verde no colocar ningún consumo, pues los consumos están organizados por tratamientos. Si se utiliza sulfato o policloruro para bajar el pH de los sólidos de los cortes estos deben ir en la columna de tratamiento de aguas (T/A).
7.- En el balance general diariamente el total de dispuestos debe ser igual a la sumatoria de:  producidos en perforación + procesados en centrífugas + fondos arriba + residuos con cementos + volumen en catch tank 1 + volumen en catch tank 2. De igual manera el total de dispuestos debe ser igual a lo transportado en las volquetas (sumatoria de # viajes  x  volumen transportado).
8.- Se ha suprimido las tablas correspondientes a consumo de combustible y parámetros de aguas tratadas y de inmisón. 
Se ha incrementado el tamaño de las letras del reporte para mejorar la visualización del mismo por parte del cliente.
Con estas modificaciones esperamos comunicar de mejor manera nuestro trabajo al cliente con información accesible y valiosa la cual nos permita realizar de la mejor manera los respectivos análisis técnico-económicos de los proyectos.
');

-- -----------------------------------------------------
-- Table `slnecc_control`.`reporte`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '1', 'OP-RG-04', '2012-10-03', '0', '26', 'Juan Narvaez', 'Hiriberto Pauta', 'S/N', 'S/N', 'Roberto Guama');


-- -----------------------------------------------------
-- Table `slnecc_control`.`datos_lodo`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`datos_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('1', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '8.6', '3@120', '6', '470');

-- -----------------------------------------------------
-- Table `slnecc_control`.`contenido_solidos`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`contenido_solidos` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('1', '1.8', '0', '1.4', '0.3', '0');

-- -----------------------------------------------------
-- Table `slnecc_control`.`perforacion`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`perforacion`(`id_perforacion`,`id_reporte`,`profundidad_inicial`,`porosidad`,`wash_out`,`factor_expancion`)VALUES('1', '1' ,'0.0','0.0','20.0','1.0');

-- -----------------------------------------------------
-- Table `slnecc_control`.`cargo_sln`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`cargo_sln` (`cargo`, `descripcion`) VALUES ('Ing. Supervisor', 'Supervisor Pozo parte de Sln');
INSERT INTO `slnecc_control`.`cargo_sln` (`cargo`, `descripcion`) VALUES ('Ing. Tratamiento de Efluentes', 'Ingenieros de Tratamientos');
INSERT INTO `slnecc_control`.`cargo_sln` (`cargo`, `descripcion`) VALUES ('Tec. Control de Sólidos', 'Personal de manejo de control de sólidos');
INSERT INTO `slnecc_control`.`cargo_sln` (`cargo`, `descripcion`) VALUES ('Ayudantes de Operaciones', 'Ayudantes');
INSERT INTO `slnecc_control`.`cargo_sln` (`cargo`, `descripcion`) VALUES ('Operadores Excavadoras', 'Operadores');
INSERT INTO `slnecc_control`.`cargo_sln` (`cargo`, `descripcion`) VALUES ('Choferes Volquetas', 'Choferes');



-- -----------------------------------------------------
-- Table `slnecc_control`.`personal`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('100', 'Roberto', 'Guama', 'Ing.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('101', 'Daniel', 'Patino', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('102', 'Pedro', 'Pilay', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('103', 'Geovanny', 'Carrillo', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('104', 'Jaime', 'Arias', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('105', 'ayudante1', 'Castillo', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('106', 'ayudante2', 'Ramirez', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('107', 'ayudante3', 'Baldeon', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('108', 'ayudante4', 'Baldeon', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('109', 'volqueta1', 'Merchan', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('110', 'volqueta2', 'Zambrano', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('111', 'volqueta3', 'Merchan', 'Sr.');
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('112', 'volqueta4', 'Castro', 'Sr.');

-- -----------------------------------------------------
-- Table `slnecc_control`.`personal_locacion`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '1', '1');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '3', '2');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '3', '3');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '4', '4');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '4', '5');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '5', '6');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '5', '7');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '5', '8');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '5', '9');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '6', '10');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '6', '11');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '6', '12');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('1', '6', '13');

-- -----------------------------------------------------
-- Table `slnecc_control`.`zarandas`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`zarandas` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '1', '0', '0', '0', '4', '0');
INSERT INTO `slnecc_control`.`zarandas` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '2', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`zarandas` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '3', '0', '0', '0', '0', '0');

-- -----------------------------------------------------
-- Table `slnecc_control`.`zaranda_mallas`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '1', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '2', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '3', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '4', '175', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '1', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '2', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '3', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '4', '175', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '1', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '2', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '3', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zarandas`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '4', '175', '0');

-- -----------------------------------------------------
-- Table `slnecc_control`.`acondicionador_lodo`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('1', 'Desarenador', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('1', 'Desarcillador', '0', '0', '0', '0', '0');


-- -----------------------------------------------------
-- Table `slnecc_control`.`zaranda_acondicionador`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '1', '325', '0');
INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '2', '325', '0');
INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '3', '325', '0');
INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '4', '325', '0');


-- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_acondicionador_mallas`
  -- -----------------------------------------------------

INSERT INTO `slnecc_control`.`zaranda_acondicionador_mallas` (`id_reporte`, `consumo_malla_dia`) VALUES ('1', '0');

-- -----------------------------------------------------
-- Table `slnecc_control`.`equipo`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `modelo`, `tipo`) VALUES ('EQ1', 'HH 5500', 'HH 5500', 'Decanter');
INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `modelo`, `tipo`) VALUES ('EQ2', 'HV 518', 'HV 518', 'Decanter');

-- -----------------------------------------------------
-- Table `slnecc_control`.`tratamiento`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`tratamiento` (`codigo`, `nombre`, `tipo`) VALUES ('TR1', 'LGS/Sistema Activo', 'm');
INSERT INTO `slnecc_control`.`tratamiento` (`codigo`, `nombre`, `tipo`) VALUES ('TR2', 'MQC/Sistema Activo', 'm');
INSERT INTO `slnecc_control`.`tratamiento` (`codigo`, `nombre`, `tipo`) VALUES ('TR3', 'DW/ Recolectados', 'm');

-- -----------------------------------------------------
-- Table `slnecc_control`.`trabajo_equipo`
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table `slnecc_control`.`vol_recolectados_procesados`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`vol_agua_operaciones`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`vol_cortes_fluidos`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`manejo_efluentes`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`manejo_cortes`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`movimiento_efluentes`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`movimiento_cortes`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`materia_prima`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`parametros_mp`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`movimientos_mp`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`clasificacion_costos`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`costos`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`comentarios`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`usuarios`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`cambios_db`
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table `slnecc_control`.`log_cambios_bd`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`logs`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `slnecc_control`.`log_users`
-- -----------------------------------------------------
