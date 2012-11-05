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
INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '2', 'OP-RG-04', '2012-10-31', '267', '26', 'Juan Narvaez', 'Hiriberto Pauta', 'S/N', 'S/N', 'Roberto Guama');


-- -----------------------------------------------------
-- Table `slnecc_control`.`datos_lodo`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`datos_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('1', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '8.6', '3@120', '6', '470');
INSERT INTO `slnecc_control`.`datos_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('2', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '8.6', '5@120', '4.0', '495');
-- -----------------------------------------------------
-- Table `slnecc_control`.`contenido_solidos`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`contenido_solidos` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('1', '1.8', '0', '1.4', '0.3', '0');
INSERT INTO `slnecc_control`.`contenido_solidos` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('2', '1.8', '0.0', '1.4', '0.3', '0');


-- -----------------------------------------------------
-- Table `slnecc_control`.`perforacion`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`perforacion`(`id_perforacion`,`id_reporte`,`profundidad_inicial`,`porosidad`,`wash_out`,`factor_expancion`)VALUES('1', '1' ,'0.0','0.0','20.0','1.0');
INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('2', '0', '0', '20', '1');



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
INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('113', 'Marcelo', 'Araguellin', 'Ign.');


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
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '1', '1');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '2', '14');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '3', '2');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '3', '3');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '4', '4');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '4', '5');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '5', '6');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '5', '7');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '5', '8');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '5', '9');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '6', '10');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '6', '11');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '6', '12');
INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('2', '6', '13');
-- -----------------------------------------------------
-- Table `slnecc_control`.`zaranda`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '1', '0', '0', '0', '4', '0');
INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '2', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '3', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('2', '1', '8.9', '8.8', '14.1', '4', '16');
INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('2', '2', '8.9', '8.8', '14.1', '0', '16');
INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('2', '3', '8.9', '8.8', '14.1', '0', '16');

-- -----------------------------------------------------
-- Table `slnecc_control`.`zaranda_mallas`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '1', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '2', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '3', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '4', '175', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '1', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '2', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '3', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '4', '175', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '1', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '2', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '3', '210', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '4', '175', '0');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '1', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '2', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '3', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '4', '175', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '1', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '2', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '3', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '4', '175', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '1', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '2', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '3', '210', '16');
INSERT INTO `slnecc_control`.`zaranda_mallas` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '4', '175', '16');


-- -----------------------------------------------------
-- Table `slnecc_control`.`acondicionador_lodo`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('1', 'Desarenador', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('1', 'Desarcillador', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('2', 'Desarenador', '35', '8.8', '8.7', '11', '16');
INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('2', 'Desarcillador', '20', '8.7', '8.7', '11.1', '16');





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
-- Table `slnecc_control`.`servicio_otro`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TR1', 'LGS/Sistema Activo', 'Tratamiento');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TR2', 'MQC/Sistema Activo', 'Tratamiento');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TR3', 'DW/ Recolectados', 'Tratamiento');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('EF1', 'Lodo Desplazado', 'Efluente');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('EF2', 'Contrapozo', 'Efluente');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('EF3', 'Tanques de Cortes', 'Efluente');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('EF4', 'Floculos', 'Efluente');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('EF5', 'Aguas Lodosas Lavados', 'Efluente');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('EF6', 'Cubetos', 'Efluente');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('EF7', 'Celdas Zona Cortes', 'Efluente');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('EF8', 'Otroa', 'Efluente');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('AG1', 'Fresca Para Polimero', 'Agua');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('AG2', 'De DW Para Polimero', 'Agua');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('AG3', 'De DW Retornada al S/A', 'Agua');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('AG4', 'Para Tratamiento', 'Agua');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TQ1', 'Catch Tank 1', 'Tanques');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TQ2', 'Catch Tank 2', 'Tanques');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TQ3', 'Vertical 1', 'Tanques');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TQ4', 'Vertical 2', 'Tanques');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TQ5', 'Vertical 3', 'Tanques');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TQ6', 'Vertical 4', 'Tanques');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TQ7', 'Australiano 1', 'Tanques');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('TQ8', 'Aistraliano 2', 'Tanques');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('MEF1', 'Tratados', 'Manejo Efluentes');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('MEF2', 'Evacuados', 'Manejo Efluentes');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('MEF3', 'Floculos', 'Manejo Efluentes');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('CR1', 'Producidos Perforacion', 'Cortes');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('CR2', 'Procesados en Cetrifugas', 'Cortes');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('CR3', 'Fondos Arriba', 'Cortes');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('CR4', 'Residuos con Cementos', 'Cortes');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('CR', 'Cortes', 'Cortes');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `descripcion`, `tipo`, `notas`) VALUES ('MQC', 'Mud Quality Control', 'se refieren al dewatering del lodo del sistema activo con retornos de agua ó agua lodosa al mismo sistema activo. La operación DW se refiere al dewatering de lodos recolectado y/o desplazados pero con envíos de agua a tratamiento', 'Mud Quality Control', '');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('DW', 'Dewatering', 'Dewatering');
INSERT INTO `slnecc_control`.`servicio_otro` (`codigo`, `nombre`, `tipo`) VALUES ('T/A', 'Tratamiento de Aguas', '');

-- -----------------------------------------------------
-- Table `slnecc_control`.`trabajo_equipo`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_otro`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_otro`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_otro`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_otro`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_otro`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_otro`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '1', '0', '0', '0', '0', '0', '0');


-- -----------------------------------------------------
-- Table `slnecc_control`.`vol_recolectados_procesados`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`vol_recolectados_procesados` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '4', '0');
INSERT INTO `slnecc_control`.`vol_recolectados_procesados` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '5', '0');
INSERT INTO `slnecc_control`.`vol_recolectados_procesados` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '6', '0');
INSERT INTO `slnecc_control`.`vol_recolectados_procesados` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '7', '0');
INSERT INTO `slnecc_control`.`vol_recolectados_procesados` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '8', '0');
INSERT INTO `slnecc_control`.`vol_recolectados_procesados` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '9', '0');
INSERT INTO `slnecc_control`.`vol_recolectados_procesados` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '10', '0');
INSERT INTO `slnecc_control`.`vol_recolectados_procesados` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '11', '0');

-- -----------------------------------------------------
-- Table `slnecc_control`.`vol_agua_operaciones`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`vol_agua_operaciones` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '12', '0');
INSERT INTO `slnecc_control`.`vol_agua_operaciones` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '13', '0');
INSERT INTO `slnecc_control`.`vol_agua_operaciones` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '14', '0');
INSERT INTO `slnecc_control`.`vol_agua_operaciones` (`id_reporte`, `id_servicio_otro`, `diario`) VALUES ('1', '15', '0');


-- -----------------------------------------------------
-- Table `slnecc_control`.`vol_cortes_fluidos`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`vol_cortes_fluidos` (`id_reporte`, `id_servicio_otro`) VALUES ('1', '16');
INSERT INTO `slnecc_control`.`vol_cortes_fluidos` (`id_reporte`, `id_servicio_otro`) VALUES ('1', '17');
INSERT INTO `slnecc_control`.`vol_cortes_fluidos` (`id_reporte`, `id_servicio_otro`) VALUES ('1', '18');
INSERT INTO `slnecc_control`.`vol_cortes_fluidos` (`id_reporte`, `id_servicio_otro`, `cortes_flidos`, `bbls`) VALUES ('1', '19', 'Agua Fresca', '450');
INSERT INTO `slnecc_control`.`vol_cortes_fluidos` (`id_reporte`, `id_servicio_otro`) VALUES ('1', '20');
INSERT INTO `slnecc_control`.`vol_cortes_fluidos` (`id_reporte`, `id_servicio_otro`) VALUES ('1', '21');
INSERT INTO `slnecc_control`.`vol_cortes_fluidos` (`id_reporte`, `id_servicio_otro`) VALUES ('1', '22');
INSERT INTO `slnecc_control`.`vol_cortes_fluidos` (`id_reporte`, `id_servicio_otro`) VALUES ('1', '23');

-- -----------------------------------------------------
-- Table `slnecc_control`.`manejo_efluentes`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`manejo_efluentes` (`id_reporte`, `id_servicio_otro`, `tanque1`, `tanque2`) VALUES ('1', '24', '0', '0');
INSERT INTO `slnecc_control`.`manejo_efluentes` (`id_reporte`, `id_servicio_otro`, `tanque1`, `tanque2`) VALUES ('1', '25', '0', '0');
INSERT INTO `slnecc_control`.`manejo_efluentes` (`id_reporte`, `id_servicio_otro`, `tanque1`, `tanque2`) VALUES ('1', '26', '0', '0');

-- -----------------------------------------------------
-- Table `slnecc_control`.`manejo_cortes`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`manejo_cortes` (`id_reporte`, `id_servicio_otro`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('1', '27', '0', '1', '13586');
INSERT INTO `slnecc_control`.`manejo_cortes` (`id_reporte`, `id_servicio_otro`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('1', '28', '0', '1', '13586');
INSERT INTO `slnecc_control`.`manejo_cortes` (`id_reporte`, `id_servicio_otro`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('1', '29', '0', '1', '13586');
INSERT INTO `slnecc_control`.`manejo_cortes` (`id_reporte`, `id_servicio_otro`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('1', '30', '0', '2', '2466');

-- -----------------------------------------------------
-- Table `slnecc_control`.`movimiento_efluentes`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`movimiento_efluentes` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('1', 's/n', '0', '0');



-- -----------------------------------------------------
-- Table `slnecc_control`.`movimiento_cortes`
-- -----------------------------------------------------

INSERT INTO `slnecc_control`.`movimiento_cortes` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('1', 'GGX 0464', '12', '0');


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`materia_prima`
  -- -----------------------------------------------------
  

INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `marca`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP1', 'Polimero 1569A', 'S/M', '25', 'Kg', '25.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP2', 'Polimero 1550 A', '25', 'Kg', '35.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP3', 'Sulfato de Aluminio', '25', 'Kg', '45.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP4', 'Hipo Clorito de Ca', '25', 'Kg', '55.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP5', 'Cal Hidratada', '25', 'Kg', '66.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP6', 'Silicato', '40', 'Kg', '75.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP7', 'Acido Fosforico', '7', 'Gl', '85.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP8', 'Acido Fosforico', '5', 'Gl', '95.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP9', 'Alli Alpa', '43', 'Kg', '25.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP10', 'Polucloruro de Al', '25', 'Kg', '35.65', '100');
INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`, `costo`, `stock_min`) VALUES ('MP11', 'Bisulfoto de Sodio', '25', 'Kg', '45.65', '100');

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`parametros_mp`
  -- -----------------------------------------------------
  INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('1', '32');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('1', '33');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('1', '34');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('2', '32');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('2', '33');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('3', '33');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('3', '34');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('4', '34');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('5', '33');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('5', '34');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('6', '31');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('7', '31');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('8', '31');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('9', '34');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('10', '34');
INSERT INTO `slnecc_control`.`parametros_mp` (`id_materia_prima`, `id_servicio_otro`) VALUES ('11', '34');


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`iventario_entrada`
  -- -----------------------------------------------------
  
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('1', '1', '2010-10-30', '1', '1600');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('2', '1', '2010-10-30', '1', '500');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('3', '1', '2010-10-30', '1', '2750');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('4', '1', '2010-10-30', '1', '10');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('5', '1', '2010-10-30', '1', '25');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('7', '1', '2010-10-30', '1', '4');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('8', '1', '2010-10-30', '1', '3');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('9', '1', '2010-10-30', '1', '2025');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('10', '1', '2010-10-30', '1', '75');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('11', '1', '2010-10-30', '1', '50');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('3', '1', '2010-10-30', '2', '6000');
INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `fecha`, `lote`, `cantidad`) VALUES ('5', '1', '2010-10-30', '2', '2000');



-- -----------------------------------------------------
  -- Table `slnecc_control`.`inventario_salida`
  -- -----------------------------------------------------
  
  -- -----------------------------------------------------
  -- Table `slnecc_control`.`clasificacion_costo`
  -- -----------------------------------------------------

INSERT INTO `slnecc_control`.`clasificacion_costo` (`id_proyecto`, `nombre`) VALUES ('1', 'Control de Sólidos');
INSERT INTO `slnecc_control`.`clasificacion_costo` (`id_proyecto`, `nombre`) VALUES ('1', 'Manejo de Cortes y Ripios de Perforacion');
INSERT INTO `slnecc_control`.`clasificacion_costo` (`id_proyecto`, `nombre`) VALUES ('1', 'Sistema de Deshidratacion de Lodo');
INSERT INTO `slnecc_control`.`clasificacion_costo` (`id_proyecto`, `nombre`) VALUES ('1', 'Sistema de Tratamiento de Aguas');
INSERT INTO `slnecc_control`.`clasificacion_costo` (`id_proyecto`, `nombre`) VALUES ('1', 'Personal En Pozo');
INSERT INTO `slnecc_control`.`clasificacion_costo` (`id_proyecto`, `nombre`) VALUES ('1', 'Tratamiento de Aguas Negras y Grises');
INSERT INTO `slnecc_control`.`clasificacion_costo` (`id_proyecto`, `nombre`) VALUES ('1', 'Equipo Adicional');
INSERT INTO `slnecc_control`.`clasificacion_costo` (`id_proyecto`, `nombre`) VALUES ('1', 'Trabajo en Locacion');


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`costo`
  -- -----------------------------------------------------
  
  INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('1', 'Centrifuga HH 5500', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('1', 'Bomba Centrifuga Standad', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('2', 'Tanque de Cortes de 40', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('2', 'Tanque de Cortes de 20', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('3', 'Centrifuga HV518 bomba Centrifuga', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('3', 'Unidad de Deshidratacion', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('3', 'Tanques Verticales', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('3', 'Bomba 6x5', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('3', 'Bomba de Aire T 15', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('3', 'Volqueta', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('3', 'Excabadora', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('4', 'Fast Tank', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('4', 'Tanque Mezclador', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('4', 'Bomba 4x3', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('4', 'Bomba de Aire PX 8', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('4', 'Camper 20 Pies', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('5', 'Ingeniero Supervisor', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('5', 'Ing. Tratamiento de Efluentes', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('5', 'Tecnicos de Control de Sólidos', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('5', 'Ayudantes de Operacion', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('6', 'Plantas de Tratamiento', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('7', 'Volqueta 8 M3', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('7', 'Volqueta 12 M3', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('7', 'Excavadora', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo`) VALUES ('8', 'Diesel', '100');


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`salida_costo`
  -- -----------------------------------------------------
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '1', '110', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '1', '120', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '1', '130', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '1', '140', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '1', '150', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '1', '160', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '1', '170', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '1', '180', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '1', '190', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '1', '200', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '1', '210', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '1', '220', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '1', '230', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '1', '240', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '1', '250', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '1', '260', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '1', '270', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '1', '280', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '1', '290', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '1', '300', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '1', '310', '21');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '1', '320', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '1', '330', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '1', '340', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('25', '1', '350', '0');  

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`comentarios`
  -- -----------------------------------------------------
  
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `responsable`) VALUES ('1', 'Control de Solidos', 'Equipos listos para trabajar de acuerdo a indicaciones de ingenieros de Lodos, se colocan 3 mallas NOV BRANDT´6BHX280ATRHD API 140 nuevas en lña zarnada No. 1 en Deck 1,2,3 se coloca una malla GN SOILDS MESH 140 en Zaranda 1 deck 1', 'Roberto Guama');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `responsable`) VALUES ('1', 'Tratamiento de Efluentes','Se realiza medicion de parametros de ph y cloro libre en platas de aguas negras y grises','Roberto Guama');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `responsable`) VALUES ('1', 'Manejos de Cortes','Excavadora trabajando en zona de cortes, Cononaco 20, se trabaja con una volqueta fija','Roberto Guama');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `responsable`) VALUES ('1', 'Seguridad y Salud Ocupacional','Peligros en excavaciones','Roberto Guama');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `responsable`) VALUES ('1', 'Actividad del Taladro','Luego de realizada las pruebas con carga de los equipos y componentes del RIG 127 se dan por iniciadas las operaciones en el pozo Rumiyacu 03 D@ 07H:00 del día martes 12 de octubre del 2012 Realizo inspeccion de tanques del sistema, alinea circuito corto para inicio de la perforacion del pozo Rumiyacu 03 D. Reviso he inspecciono funcionamiento de SHAKESR, y quipos de control de solidos primarios ok, inspecciono ECS. Cotinua Armando paradas 5"','Roberto Guama');


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
  