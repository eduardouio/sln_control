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
	 -- Table `slnecc_control`.`usuarios`
	 -- -----------------------------------------------------

	 INSERT INTO `slnecc_control`.`usuario` (`usuario`, `pass`, `tipo`) VALUES ('admin', 'admin', 'administrador');

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
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '2', 'OP-RG-04', '2012-10-04', '267', '26', 'Juan Narvaez', 'Hiriberto Pauta', 'S/N', 'S/N', 'Roberto Guama');
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '3', 'OP-RG-04', '2012-10-05', '811', '16', 'Juan Narvaez', 'Jaime Garcia', 'S/N', 'S/N', 'Roberto Guama');
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '4', 'OP-RG-04', '2012-10-06', '2008', '16', 'Juan Narvaez', 'Jaime Garcia', 'S/N', 'S/N', 'Roberto Guama');
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '5', 'OP-RG-04', '2012-10-07', '4027', '16', 'Juan Narvaez', 'Jaime Garcia', 'S/N', 'S/N', 'Roberto Guama');
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '6', 'OP-RG-04', '2012-10-08', '5218', '16', 'Juan Narvaez', 'Jaime Garcia', 'S/N', 'S/N', 'Roberto Guama');
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '7', 'OP-RG-04', '2012-10-09', '6100', '16', 'Juan Narvaez', 'Jaime Garcia', 'S/N', 'S/N', 'Roberto Guama');
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '8', 'OP-RG-04', '2012-10-10', '6550', '16', 'Juan Narvaez', 'Jaime Garcia', 'S/N', 'S/N', 'Roberto Guama');
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '9', 'OP-RG-04', '2012-10-11', '6857', '16', 'Juan Narvaez', 'Jaime Garcia', 'S/N', 'S/N', 'Roberto Guama');
	INSERT INTO `slnecc_control`.`reporte` (`id_pozo`, `no_reprote`, `codigo`, `fecha`, `profundidad_final`, `seccion`, `company_man`, `tool_pusher`, `superintendente`, `rig_manager`, `supervisor_sln`) VALUES ('1', '10', 'OP-RG-04', '2012-10-12', '7091', '16', 'Armando Chancay', 'Jaime Garcia', 'S/N', 'S/N', 'Roberto Guama');

	-- -----------------------------------------------------
	-- Table `slnecc_control`.`datos_lodo`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('1', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '8.6', '3@120', '6', '470');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('2', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '8.6', '5@120', '4.0', '495');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('3', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '8.7', '5@120', '5.0', '789');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('4', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '9.5', '6@120', '6.0', '1234');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('5', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '9.8', '5@120', '8.0', '1627');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('6', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '10.1', '5@120', '12', '1812');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('7', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '10.2', '5@120', '15', '2081');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('8', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '10.2', '5@120', '16', '2157');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('9', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '10.2', '5@120', '16', '2242');
	INSERT INTO `slnecc_control`.`dato_lodo` (`id_reporte`, `compania`, `sistema`, `peso_lodo`, `viscosidad_plastica`, `yield_point`, `volumen_sa`) VALUES ('10', 'HALLIBURTON/Baroid', 'AQUAGEL/Chemical', '10.4', '6@120', '14', '2355');

	-- -----------------------------------------------------
	-- Table `slnecc_control`.`contenido_solidos`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('1', '1.8', '0', '1.4', '0.3', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('2', '1.8', '0.0', '1.4', '0.3', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('3', '2.1', '0.1', '1.3', '0.8', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('4', '4.8', '0.1', '0.7', '4.1', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('5', '5.8', '0.1', '0.5', '5.3', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('6', '7.1', '0.2', '0', '0', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('7', '8', '0.2', '1.9', '6.1', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('8', '8.4', '0.2', '2.6', '5.7', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('9', '8.3', '0.2', '2.4', '5.8', '0');
	INSERT INTO `slnecc_control`.`contenido_solido` (`id_reporte`, `solidos`, `arena`, `lgs`, `hgs`, `mtb`) VALUES ('10', '8.3', '0.2', '2.9', '6.3', '0');


	-- -----------------------------------------------------
	-- Table `slnecc_control`.`perforacion`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`perforacion`(`id_perforacion`,`id_reporte`,`profundidad_inicial`,`porosidad`,`wash_out`,`factor_expancion`)VALUES('1', '1' ,'0.0','0.0','20.0','1.0');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('2', '0', '0', '20', '1');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('3', '267', '0', '20', '1');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('4', '811', '0', '20', '1');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('5', '2808', '0', '20', '1');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('6', '4027', '0', '20', '1');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('7', '5218', '0', '20', '1');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('8', '6100', '0', '20', '1');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('9', '6550', '0', '20', '1');
	INSERT INTO `slnecc_control`.`perforacion` (`id_reporte`, `profundidad_inicial`, `porosidad`, `wash_out`, `factor_expancion`) VALUES ('10', '6857', '0', '20', '1');



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
	INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('114', 'Jaime ', 'Vasquez', 'Sr.');
	INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('115', 'Leandro', 'Pallo', 'Sr.');
	INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('116', 'Fabian', 'Silvestre', 'Sr.');
	INSERT INTO `slnecc_control`.`personal` (`cedula`, `nombres`, `apellidos`, `profesion`) VALUES ('117', 'Loenardo', 'Cortez', 'Sr.');

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
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '1', '1');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '2', '14');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '3', '2');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '3', '3');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '4', '4');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '4', '5');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '5', '6');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '5', '7');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '5', '8');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '5', '9');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '6', '10');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '6', '11');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '6', '12');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('3', '6', '13');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '1', '1');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '2', '14');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '3', '2');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '3', '3');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '4', '4');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '4', '5');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '5', '6');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '5', '7');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '5', '8');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '5', '9');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '6', '10');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '6', '11');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '6', '12');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('4', '6', '13');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '1', '1');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '2', '14');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '3', '2');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '3', '3');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '4', '4');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '4', '5');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '5', '6');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '5', '7');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '5', '8');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '5', '9');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '6', '10');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '6', '11');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '6', '12');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('5', '6', '13');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '1', '1');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '2', '14');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '3', '2');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '3', '3');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '4', '4');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '4', '5');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '5', '6');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '5', '7');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '5', '8');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '5', '9');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '6', '10');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '6', '11');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '6', '12');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('6', '6', '13');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '1', '1');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '2', '14');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '3', '2');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '3', '3');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '4', '4');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '4', '5');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '5', '6');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '5', '7');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '5', '8');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '5', '9');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '6', '10');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '6', '11');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '6', '12');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('7', '6', '13');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '1', '1');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '2', '14');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '3', '2');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '3', '3');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '4', '4');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '4', '5');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '5', '6');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '5', '7');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '5', '8');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '5', '9');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '6', '10');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '6', '11');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '6', '12');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('8', '6', '13');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '1', '1');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '2', '14');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '3', '2');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '3', '3');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '4', '4');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '4', '5');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '5', '6');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '5', '7');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '5', '8');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '5', '9');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '6', '10');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '6', '11');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '6', '12');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('9', '6', '13');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '1', '1');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '2', '14');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '3', '15');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '3', '16');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '4', '17');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '4', '18');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '5', '6');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '5', '7');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '5', '8');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '5', '9');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '6', '10');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '6', '11');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '6', '12');
	INSERT INTO `slnecc_control`.`personal_locacion` (`id_reporte`, `id_cargo_sln`, `id_personal`) VALUES ('10', '6', '13');

	-- -----------------------------------------------------
	-- Table `slnecc_control`.`zaranda`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '1', '0', '0', '0', '4', '0');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '2', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('1', '3', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('2', '1', '8.9', '8.8', '14.1', '0', '16');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('2', '2', '8.9', '8.8', '14.1', '0', '16');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('2', '3', '8.9', '8.8', '14.1', '0', '16');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('3', '1', '9', '8.9', '14.3', '0', '16');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('3', '2', '9', '8.9', '14.3', '0', '16');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('3', '3', '9', '8.9', '14.3', '0', '16');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('4', '1', '9.8', '9.7', '14.5', '0', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('4', '2', '9.8', '9.7', '14.5', '0', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('4', '3', '9.8', '9.7', '14.5', '1', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('5', '1', '10.1', '10', '14.8', '0', '19');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('5', '2', '10.1', '10', '14.8', '0', '19');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('5', '3', '10.1', '10', '14.8', '0', '19');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('6', '1', '10.4', '10.3', '14.9', '0', '19');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('6', '2', '10.4', '10.3', '14.9', '0', '19');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('6', '3', '10.4', '10.3', '14.9', '0', '19');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('7', '1', '10.5', '10.4', '15', '0', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('7', '2', '10.5', '10.4', '15', '0', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('7', '3', '10.5', '10.4', '15', '0', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('8', '1', '10.5', '10.4', '15', '0', '18');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('8', '2', '10.5', '10.4', '15', '0', '18');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('8', '3', '10.5', '10.4', '15', '0', '18');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('9', '1', '10.5', '10.4', '15', '0', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('9', '2', '10.5', '10.4', '15', '0', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('9', '3', '10.5', '10.4', '15', '0', '24');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('10', '1', '10.7', '10.6', '15.1', '0', '14');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('10', '2', '10.7', '10.6', '15.1', '0', '14');
	INSERT INTO `slnecc_control`.`zaranda` (`id_reporte`, `zaranda_no`, `peso_entrada`, `peso_salida`, `peso_descargados`, `consumo_malla_dia`, `horas_dia`) VALUES ('10', '3', '10.7', '10.6', '15.1', '0', '14');



	-- -----------------------------------------------------
	-- Table `slnecc_control`.`zaranda_mallas`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '1', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '2', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '3', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '4', '175', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '1', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '2', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '3', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '4', '175', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '1', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '2', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '3', '210', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '4', '175', '0');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '1', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '2', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '3', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '4', '175', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '1', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '2', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '3', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '4', '175', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '1', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '2', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '3', '210', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '4', '175', '16');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('7', '1', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('7', '2', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('7', '3', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('7', '4', '175', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('8', '1', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('8', '2', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('8', '3', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('8', '4', '175', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('9', '1', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('9', '2', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('9', '3', '210', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('9', '4', '175', '32');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('10', '1', '210', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('10', '2', '210', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('10', '3', '210', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('10', '4', '175', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('11', '1', '210', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('11', '2', '210', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('11', '3', '210', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('11', '4', '175', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('12', '1', '210', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('12', '2', '210', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('12', '3', '210', '15');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('12', '4', '175', '56');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('13', '1', '210', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('13', '2', '210', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('13', '3', '210', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('13', '4', '175', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('14', '1', '210', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('14', '2', '210', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('14', '3', '210', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('14', '4', '175', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('15', '1', '210', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('15', '2', '210', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('15', '3', '210', '34');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('15', '4', '175', '75');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('16', '1', '210', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('16', '2', '210', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('16', '3', '210', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('16', '4', '175', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('17', '1', '210', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('17', '2', '210', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('17', '3', '210', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('17', '4', '175', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('18', '1', '210', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('18', '2', '210', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('18', '3', '210', '53');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('18', '4', '175', '94');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('19', '1', '210', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('19', '2', '210', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('19', '3', '210', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('19', '4', '175', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('20', '1', '210', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('20', '2', '210', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('20', '3', '210', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('20', '4', '175', '188');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('21', '1', '210', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('21', '2', '210', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('21', '3', '210', '77');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('21', '4', '175', '118');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('22', '1', '210', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('22', '2', '210', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('22', '3', '210', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('22', '4', '175', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('23', '1', '210', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('23', '2', '210', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('23', '3', '210', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('23', '4', '175', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('24', '1', '210', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('24', '2', '210', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('24', '3', '210', '77');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('24', '4', '175', '136');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('25', '1', '210', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('25', '2', '210', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('25', '3', '210', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('25', '4', '175', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('26', '1', '210', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('26', '2', '210', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('26', '3', '210', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('26', '4', '175', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('27', '1', '210', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('27', '2', '210', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('27', '3', '210', '101');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('27', '4', '175', '160');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('28', '1', '210', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('28', '2', '210', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('28', '3', '210', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('28', '4', '175', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('29', '1', '210', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('29', '2', '210', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('29', '3', '210', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('29', '4', '175', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('30', '1', '210', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('30', '2', '210', '174');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('30', '3', '210', '115');
	INSERT INTO `slnecc_control`.`zaranda_malla` (`id_zaranda`, `malla_deck_no`, `mesh`, `horas`) VALUES ('30', '4', '175', '174');

	-- -----------------------------------------------------
	-- Table `slnecc_control`.`acondicionador_lodo`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('1', 'Desarenador', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('1', 'Desarcillador', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('1', 'Zaranda Acondicionador', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('2', 'Desarenador', '35', '8.8', '8.7+', '11', '16');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('2', 'Desarcillador', '20', '8.7+', '8.7', '11.1', '16');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('2', 'Zaranda Acondicionador', '0', '8.7', '8.6', '12.40', '16');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('3', 'Desarenador', '35', '8.9', '8.8+', '11.1', '16');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('3', 'Desarcillador', '20', '8.8+', '8.8', '11.2', '16');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('3', 'Zaranda Acondicionador', '0', '8.8', '8.7', '12.50', '16');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('4', 'Desarenador', '35', '9.7', '9.6+', '11.2', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('4', 'Desarcillador', '20', '9.6+', '9.6', '11.2', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('4', 'Zaranda Acondicionador', '0', '9.6', '9.5', '12.5', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('5', 'Desarenador', '35', '10', '9.9+', '11.2', '19');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('5', 'Desarcillador', '20', '9.9+', '9.9', '11.2', '19');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('5', 'Zaranda Acondicionador', '0', '9.9', '9.8', '12.6', '19');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('6', 'Desarcillador', '20', '10.2+', '10.2', '11.3', '19');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('6', 'Desarenador', '35', '10.3', '10.2+', '11.3', '19');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('6', 'Zaranda Acondicionador', '0', '10.2', '10.1', '12.7', '19');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('7', 'Desarcillador', '20', '10.3+', '10.3', '11.5', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('7', 'Desarenador', '35', '10.4', '10.3+', '11.5', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('7', 'Zaranda Acondicionador', '0', '10.3', '10.2', '12.8', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('8', 'Desarcillador', '20', '10.3+', '10.3', '11.5', '18');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('8', 'Desarenador', '35', '10.4', '10.3+', '11.5', '18');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('8', 'Zaranda Acondicionador', '0', '10.3', '10.2', '12.8', '18');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('9', 'Desarcillador', '20', '10.3+', '10.3', '11.5', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('9', 'Desarenador', '35', '10.4', '10.3+', '11.5', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('9', 'Zaranda Acondicionador', '0', '10.3', '10.2', '12.8', '24');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('10', 'Desarcillador', '20', '10.5+', '10.5', '11.6', '14');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('10', 'Desarenador', '35', '10.6', '10.5+', '11.6', '14');
	INSERT INTO `slnecc_control`.`acondicionador_lodo` (`id_reporte`, `proceso`, `presion`, `peso_entrada`, `peso_salida`, `peso_descargados`, `horas_dia`) VALUES ('10', 'Zaranda Acondicionador', '0', '10.5', '10.4', '12.9', '14');
	-- -----------------------------------------------------
	-- Table `slnecc_control`.`zaranda_acondicionador`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '1', '325', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '2', '325', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '3', '325', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('1', '4', '325', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '1', '325', '16');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '2', '325', '16');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '3', '325', '16');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('2', '4', '325', '16');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '1', '325', '32');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '2', '325', '32');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '3', '325', '32');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('3', '4', '325', '32');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '1', '325', '56');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '2', '325', '15');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '3', '325', '56');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('4', '4', '325', '56');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '1', '325', '19');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '2', '325', '34');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '3', '325', '19');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('5', '4', '325', '75');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '1', '325', '38');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '2', '325', '56');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '3', '325', '38');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('6', '4', '325', '94');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('7', '1', '325', '62');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('7', '2', '325', '53');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('7', '3', '325', '62');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('7', '4', '325', '118');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('8', '1', '325', '80');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('8', '2', '325', '71');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('8', '3', '325', '80');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('8', '4', '325', '136');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('9', '1', '325', '104');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('9', '2', '325', '95');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('9', '3', '325', '104');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('9', '4', '325', '160');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('10', '1', '325', '118');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('10', '2', '325', '109');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('10', '3', '325', '118');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador` (`id_reporte`, `malla_deck_no`, `mesh`, `horas`) VALUES ('10', '4', '325', '174');

	-- -----------------------------------------------------
	  -- Table `slnecc_control`.`zaranda_acondicionador_mallas`
	  -- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('1', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('2', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('3', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('4', '1');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('5', '2');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('6', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('7', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('8', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('9', '0');
	INSERT INTO `slnecc_control`.`zaranda_acondicionador_malla` (`id_reporte`, `consumo_malla_dia`) VALUES ('10', '0');

	-- -----------------------------------------------------
	-- Table `slnecc_control`.`equipo`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `modelo`, `tipo`) VALUES ('EQ1', 'HH 5500', 'HH 5500', 'Decanter');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `modelo`, `tipo`) VALUES ('EQ2', 'HV 518', 'HV 518', 'Decanter');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `tipo`) VALUES ('TQ1', 'Catch Tank 1', 'Tanque de Alacenamiento');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `tipo`) VALUES ('TQ2', 'Catch Tank 2', 'Tanque de Alacenamiento');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `tipo`) VALUES ('TQ3', 'Vertical 1', 'Tanque de Alacenamiento');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `tipo`) VALUES ('TQ4', 'Vertical 2', 'Tanque de Alacenamiento');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `tipo`) VALUES ('TQ5', 'Vertical 3', 'Tanque de Alacenamiento');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `tipo`) VALUES ('TQ6', 'Vertical 4', 'Tanque de Alacenamiento');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `tipo`) VALUES ('TQ7', 'Australiano 1', 'Tanque de Alacenamiento');
	INSERT INTO `slnecc_control`.`equipo` (`codigo`, `nombre`, `tipo`) VALUES ('TQ8', 'Australiano 2', 'Tanque de Alacenamiento');



	-- -----------------------------------------------------
	-- Table `slnecc_control`.`servicio_fluido`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('TR1', 'LGS/Sistema Activo', 'Tratamiento');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('TR2', 'MQC/Sistema Activo', 'Tratamiento');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('TR3', 'DW/ Recolectados', 'Tratamiento');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF1', 'Lodo Desplazado', 'Efluente');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF2', 'Contrapozo', 'Efluente');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF3', 'Tanques de Cortes', 'Efluente');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF4', 'Floculos', 'Efluente');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF5', 'Aguas Lodosas Lavados', 'Efluente');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF6', 'Cubetos', 'Efluente');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF7', 'Celdas Zona Cortes', 'Efluente');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF8', 'Otros', 'Efluente');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('AG1', 'Fresca Para Polimero', 'Agua');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('AG2', 'De DW Para Polimero', 'Agua');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('AG3', 'De DW Retornada al S/A', 'Agua');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('AG4', 'Para Tratamiento', 'Agua');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('MEF1', 'Tratados', 'Manejo Efluentes');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('MEF2', 'Evacuados', 'Manejo Efluentes');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('CR1', 'Producidos Perforacion', 'Cortes');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('CR2', 'Procesados en Cetrifugas', 'Cortes');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('CR3', 'Fondos Arriba', 'Cortes');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('CR4', 'Residuos con Cementos', 'Cortes');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('CR', 'Cortes', 'Cortes');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `descripcion`, `tipo`, `notas`) VALUES ('MQC', 'Mud Quality Control', 'se refieren al dewatering del lodo del sistema activo con retornos de agua ó agua lodosa al mismo sistema activo. La operación DW se refiere al dewatering de lodos recolectado y/o desplazados pero con envíos de agua a tratamiento', 'Mud Quality Control', '');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('DW', 'Dewatering', 'Dewatering');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('T/A', 'Tratamiento de Aguas', '');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('EF9', 'Sistema Activo', 'Volumen recolectado procesado');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `descripcion`, `tipo`) VALUES ('AG5', 'Agua Frezca', 'Volumenes de COrtes y fluidos', 'Agua');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('AG6', 'Agua Dewatering', 'Agua Dewatering');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('RP1', 'Ripios de Perforacion', 'Ripios de Perforacion');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('Z/C', 'Zona de Cotes', 'Cortes');
	INSERT INTO `slnecc_control`.`servicio_fluido` (`codigo`, `nombre`, `tipo`) VALUES ('E/Z', 'EZ Mud Clayseal', 'Cortes y Fluidos');


	-- -----------------------------------------------------
	-- Table `slnecc_control`.`trabajo_equipo`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '1', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '1', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '1', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '1', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '1', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '1', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '2', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '2', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '2', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '2', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '2', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '2', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '3', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '3', '11', '2000', '60', '8.7', '8.4', '12.5');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '3', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '3', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '3', '11', '2000', '60', '8.4', '8.4', '12.4');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '3', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '4', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '4', '24', '2000', '60', '9.5', '8.4', '12.5');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '4', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '4', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '4', '24', '2000', '60', '9.5', '8.4', '12.4');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '4', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '5', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '5', '12', '2000', '60', '9.8', '8.4', '12.5');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '5', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '5', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '5', '12', '2000', '60', '9.8', '8.4', '12.4');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '5', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '6', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '6', '6', '2000', '60', '10.1', '8.4', '12.5');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '6', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '6', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '6', '21', '2000', '60', '10.1', '8.4', '12.4');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '6', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '7', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '7', '4', '2000', '60', '10.2', '8.4', '12.5');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '7', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '7', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '7', '14', '2000', '60', '10.2', '8.4', '12.4');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '7', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '8', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '8', '3', '2000', '60', '10.2', '8.4', '12.5');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '8', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '8', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '8', '15', '2000', '60', '10.2', '8.4', '12.4');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '8', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '9', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '9', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '9', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '9', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '9', '10', '2000', '60', '10.2', '8.4', '12.5');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '9', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '1', '10', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '2', '10', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('1', '3', '10', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '1', '10', '0', '0', '0', '0', '0', '0');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '2', '10', '6', '2000', '60', '10.4', '8.4', '12.6');
	INSERT INTO `slnecc_control`.`trabajo_equipo` (`id_equipo`, `id_servicio_fluido`, `id_reporte`, `horas`, `rpm`, `gpm`, `ppg_entrada`, `ppg_salida`, `ppg_descarga`) VALUES ('2', '3', '10', '0', '0', '0', '0', '0', '0');

	-- -----------------------------------------------------
	-- Table `slnecc_control`.`vol_recolectados_procesados`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '4', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '26', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '26', '1886');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '26', '4114');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '26', '2058');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '26', '2314');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '26', '1543');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '26', '1543');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '26', '857');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '11', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '26', '514');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '5', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '6', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '7', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '8', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '9', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '10', '0');
	INSERT INTO `slnecc_control`.`vol_recolectado_procesado` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '11', '0');


	-- -----------------------------------------------------
	-- Table `slnecc_control`.`vol_agua_operaciones`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '12', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '13', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '14', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('1', '15', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '12', '60');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '13', '848');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '14', '566');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('2', '15', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '12', '60');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '13', '848');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '14', '566');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('3', '15', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '12', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '13', '1234');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '14', '1851');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('4', '15', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '12', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '13', '467');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '14', '776');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('5', '15', '300');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '12', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '13', '1021');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '14', '664');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('6', '15', '50');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '12', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '13', '634');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '14', '423');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('7', '15', '100');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '12', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '13', '544');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '14', '363');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('8', '15', '250');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '12', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '13', '325');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '14', '210');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '15', '100');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('9', '30', '100');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '12', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '13', '231');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '14', '154');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '15', '0');
	INSERT INTO `slnecc_control`.`vol_agua_operacion` (`id_reporte`, `id_servicio_fluido`, `diario`) VALUES ('10', '30', '0');

	-- -----------------------------------------------------
	-- Table `slnecc_control`.`vol_cortes_fluidos`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('1', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('1', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('1', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('1', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('1', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('1', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('1', '9');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('1', '10');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('2', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('2', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('2', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('2', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('2', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('2', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('2', '9');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('2', '10');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('3', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('3', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('3', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('3', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('3', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('3', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('3', '9');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('3', '10');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('4', '29', '3', '37');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('4', '2', '4', '60');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('4', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('4', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('4', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('4', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('4', '9');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('4', '10');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('5', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('5', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('5', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('5', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('5', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('5', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('5', '28', '9', '300');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('5', '10');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('6', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('6', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('6', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('6', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('6', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('6', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('6', '28', '9', '350');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('6', '10');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('7', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('7', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('7', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('7', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('7', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('7', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('7', '28', '9', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('7', '10');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('8', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('8', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('8', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('8', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('8', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('8', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('8', '9');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('8', '28', '10', '350');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('9', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('9', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('9', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('9', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('9', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('9', '8');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('9', '9');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('9', '28', '10', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('10', '3');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('10', '4');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('10', '5');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('10', '27', '6', '450');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('10', '7');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('10', '31', '8', '400');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_equipo`) VALUES ('10', '9');
	INSERT INTO `slnecc_control`.`vol_corte_fluido` (`id_reporte`, `id_servicio_fluido`, `id_equipo`, `bbls`) VALUES ('10', '28', '10', '450');

	-- -----------------------------------------------------
	-- Table `slnecc_control`.`manejo_efluentes`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('1', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('1', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('1', '7', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('2', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('2', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('2', '7', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('3', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('3', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('3', '7', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('4', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('4', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('4', '7', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('5', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('5', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('5', '7', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('6', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('6', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('6', '7', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('7', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('7', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('7', '7', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('8', '16', '450', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('8', '17', '400', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('8', '7', '50', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('9', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('9', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('9', '7', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('10', '16', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('10', '17', '0', '0');
	INSERT INTO `slnecc_control`.`manejo_efluente` (`id_reporte`, `id_servicio_fluido`, `tanque1`, `tanque2`) VALUES ('10', '7', '0', '0');
	-- -----------------------------------------------------
	-- Table `slnecc_control`.`manejo_cortes`
	-- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('1', '18', '0', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('1', '19', '0', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('1', '20', '0', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('1', '21', '0', '2', '2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('2', '18', '210', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('2', '19', '0', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('2', '20', '0', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('2', '21', '0', '2', '2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('3', '18', '162','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('3', '19', '472','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('3', '20', '0','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('3', '21', '467','2','2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('4', '18', '596','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('4', '19', '1029','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('4', '20', '0','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('4', '21', '0','2','2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('5', '18', '364','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('5', '19', '515','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('5', '20', '127','1','13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('5', '21', '0','2','2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('6', '18', '355', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('6', '19', '359', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('6', '20', '167', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('6', '21', '0', '2', '2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('7', '18', '263', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('7', '19', '386', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('7', '20', '99', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('7', '21', '0', '2', '2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('8', '18', '134', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('8', '19', '386', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('8', '20', '449', '1', '13856');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('8', '21', '0', '2', '2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('9', '18', '92', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('9', '19', '214', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('9', '20', '200', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('9', '21', '0', '2', '2466');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('10', '18', '70', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('10', '19', '129', '1', '13586');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('10', '20', '450', '1', '13856');
	INSERT INTO `slnecc_control`.`manejo_corte` (`id_reporte`, `id_servicio_fluido`, `bbls_dia`, `celda_no`, `cap_bls`) VALUES ('10', '21', '0', '2', '2466');


	-- -----------------------------------------------------
	-- Table `slnecc_control`.`movimiento_efluentes`
	-- -----------------------------------------------------
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('1', '0', '0', '0');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('2', '0', '0', '0');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('3', 'PBY 2526', '150', '0');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('4', 'PBY 2526', '150', '0');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('5', 'PBY 2526', '150', '0');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('6', 'PBY 2526', '150', '0');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('7', 'PBY 2526', '150', '0');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('8', 'PBY 2526', '150', '3');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('9', 'PBY 2526', '150', '0');
	INSERT INTO `slnecc_control`.`movimiento_efluente` (`id_reporte`, `vaccum`, `capacidad_bls`, `no_viajes_diario`) VALUES ('10', 'PBY 2526', '150', '0');



	-- -----------------------------------------------------
	-- Table `slnecc_control`.`movimiento_cortes`
	-- -----------------------------------------------------
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('1', 'GGX 464', '12', '0');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('2', 'GGX 464', '12', '4');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('3', 'GGX 464', '12', '13');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('3', 'QAB 132', '12', '12');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('4', 'GGX 464', '12', '14');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('4', 'QAB 132', '12', '13');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('5', 'GGX 464', '12', '10');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('5', 'QAB 132', '12', '10');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('6', 'GGX 464', '12', '13');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('6', 'QAB 132', '12', '12');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('7', 'GGX 464', '12', '9');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('7', 'QAB 132', '12', '8');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('8', 'GGX 464', '12', '11');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('8', 'QAB 132', '12', '11');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('9', 'GGX 464', '12', '5');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('9', 'QAB 132', '12', '5');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('10', 'GGX 464', '12', '5');
	INSERT INTO `slnecc_control`.`movimiento_corte` (`id_reporte`, `volqueta`, `m3`, `diario`) VALUES ('10', 'QAB 132', '12', '5');

	  -- -----------------------------------------------------
	  -- Table `slnecc_control`.`materia_prima`
	  -- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `marca`, `cantidad_presentacion`, `unidad_medida`, `stock_min`) VALUES ('MP1', 'Polimero 1569A', 'S/M', '25', 'Kg', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP2', 'Polimero 1550 A', '25', 'Kg', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP3', 'Sulfato de Aluminio', '25', 'Kg', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP4', 'Hipo Clorito de Ca', '25', 'Kg', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP5', 'Cal Hidratada', '25', 'Kg', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP6', 'Silicato', '40', 'Kg', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP7', 'Acido Fosforico', '7', 'Gl', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP8', 'Acido Fosforico', '5', 'Gl', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP9', 'Alli Alpa', '43', 'Kg',  '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP10', 'Polucloruro de Al', '25', 'Kg', '100');
	INSERT INTO `slnecc_control`.`materia_prima` (`codigo`, `nombre`, `cantidad_presentacion`, `unidad_medida`,  `stock_min`) VALUES ('MP11', 'Bisulfoto de Sodio', '25', 'Kg', '100');

	  -- -----------------------------------------------------
	  -- Table `slnecc_control`.`parametros_mp`
	  -- -----------------------------------------------------

	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('1', '23');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('1', '24');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('1', '25');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('2', '23');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('2', '24');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('3', '24');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('3', '25');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('4', '25');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('5', '24');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('5', '25');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('6', '22');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('7', '22');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('8', '22');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('9', '25');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('10', '25');
	INSERT INTO `slnecc_control`.`parametro_mp` (`id_materia_prima`, `id_servicio_fluido`) VALUES ('11', '25');

	  -- -----------------------------------------------------
	  -- Table `slnecc_control`.`iventario_entrada`
	  -- -----------------------------------------------------

	-- stok viejos 

	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('1', '1', '1600', '5');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('2', '1', '500', '10');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('3', '1', '2750', '15');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('4', '1', '10', '20');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('5', '1', '25', '25');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('6', '1', '0', '30');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('7', '1', '4', '35');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('8', '1', '3', '40');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('9', '1', '2025', '45');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `cantidad`, `costo`) VALUES ('10', '1', '75', '50');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `guia_remision`, `cantidad`, `costo`) VALUES ('11', '1', '0', '50', '55');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `lote`, `guia_remision`, `cantidad`, `costo`) VALUES ('11', '1', '0', '50', '55');
	-- entradas al inventario

	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `lote`, `guia_remision`, `cantidad`, `costo`) VALUES ('3', '1', '2', '0', '6000', '15');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `lote`, `guia_remision`, `cantidad`, `costo`) VALUES ('5', '1', '2', '0', '2000', '25');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `lote`, `guia_remision`, `cantidad`, `costo`) VALUES ('2', '5', '3', '0', '500', '100');
	INSERT INTO `slnecc_control`.`inv_entrada` (`id_materia_prima`, `id_reporte`, `lote`, `guia_remision`, `cantidad`, `costo`) VALUES ('2', '8', '4', '0', '500', '99.99');


-- -----------------------------------------------------
  -- Table `slnecc_control`.`inventario_salida`
  -- -----------------------------------------------------
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '2', '75');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('7', '2', '325');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '3', '75');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('7', '3', '325');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '4', '225');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '5', '175');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '6', '200');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '7', '150');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '8', '200');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('7', '8', '175');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('10', '8', '50');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '9', '125');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('4', '10', '50');
INSERT INTO `slnecc_control`.`inv_salida` (`id_parametro_mp`, `id_reporte`, `cantidad`) VALUES ('7', '10', '100');

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
  
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('1', 'Centrifuga HH 5500 Bomba Centrifuga Standad', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('2', 'Tanque de Cortes de 40', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('2', 'Tanque de Cortes de 20', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('3', 'Centrifuga HV518 bomba Centrifuga', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('3', 'Unidad de Deshidratacion', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('3', 'Tanques Verticales', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('3', 'Bomba 6x5', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('3', 'Bomba de Aire T 15', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('3', 'Volqueta', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('3', 'Excabadora', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('4', 'Fast Tank', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('4', 'Tanque Mezclador', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('4', 'Bomba 4x3', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('4', 'Bomba de Aire PX 8', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('4', 'Camper 20 Pies', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('5', 'Ingeniero Supervisor', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('5', 'Ing. Tratamiento de Efluentes', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('5', 'Tecnicos de Control de Sólidos', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('5', 'Ayudantes de Operacion', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('6', 'Plantas de Tratamiento', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('7', 'Volqueta 8 M3', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('7', 'Volqueta 12 M3', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('7', 'Excavadora', '100');
INSERT INTO `slnecc_control`.`costo` (`id_clasificacion_costo`, `descripcion_costo`, `costo_diario`) VALUES ('8', 'Diesel', '100');


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`salida_costo`
  -- -----------------------------------------------------
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '1', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '1', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '1', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '1', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '1', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '1', '95', '21');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '1', '288.66', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '1', '330', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '1', '384.66', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '1', '3677.89', '0');  
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '2', '0','4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '2', '0','2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '2', '0','2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '2', '0','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '2', '95','3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '2', '288.66','0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '2', '330.00','0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '2', '384.66','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '2', '3677.89','1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '3', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '3', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '3', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '3', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '3', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '3', '95', '3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '3', '288.66', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '3', '330', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '3', '384.66', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '3', '3677.89', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '4', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '4', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '4', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '4', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '4', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '4', '95', '3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '4', '288', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '4', '330', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '4', '384.66', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '4', '3677.89', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '5', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '5', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '5', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '5', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '5', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '5', '95', '3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '5', '288.66', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '5', '330.00', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '5', '384.66', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '5', '3677.89', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '6', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '6', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '6', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '6', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '6', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '6', '95', '3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '6', '288.66', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '6', '330.00', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '6', '384.66', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '6', '3677.89', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '7', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '7', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '7', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '7', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '7', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '7', '95', '3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '7', '288.66', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '7', '330', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '7', '384.66', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '7', '3677.89', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '8', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '8', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '8', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '8', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '8', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '8', '95', '3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '8', '288.66', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '8', '330.00', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '8', '384.66', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '8', '3677.89', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '9', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '9', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '9', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '9', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '9', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '9', '95', '3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '9', '288.66', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '9', '330', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '9', '384.66', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '9', '3677.89', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('1', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('2', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('3', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('4', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('5', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('6', '10', '0', '4');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('7', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('8', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('9', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('10', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('11', '10', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('12', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('13', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('14', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('15', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('16', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('17', '10', '0', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('18', '10', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('19', '10', '0', '2');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('20', '10', '95', '3');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('21', '10', '288.66', '0');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('22', '10', '330', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('23', '10', '384.66', '1');
INSERT INTO `slnecc_control`.`salida_costo` (`id_costo`, `id_reporte`, `costo`, `cantidad`) VALUES ('24', '10', '3677.89', '1');

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`comentarios`
  -- -----------------------------------------------------
  
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('1', 'Control de Solidos', 'Equipos listos para trabajar de acuerdo a indicaciones de ingenieros de Lodos, se colocan 3 mallas NOV BRANDT´6BHX280ATRHD API 140 nuevas en lña zarnada No. 1 en Deck 1,2,3 se coloca una malla GN SOILDS MESH 140 en Zaranda 1 deck 1', '1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('1', 'Tratamiento de Efluentes','Se realiza medicion de parametros de ph y cloro libre en platas de aguas negras y grises','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('1', 'Manejos de Cortes','Excavadora trabajando en zona de cortes, Cononaco 20, se trabaja con una volqueta fija','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('1', 'Seguridad y Salud Ocupacional','Peligros en excavaciones','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('1', 'Actividad del Taladro','Luego de realizada las pruebas con carga de los equipos y componentes del RIG 127 se dan por iniciadas las operaciones en el pozo Rumiyacu 03 D@ 07H:00 del día martes 12 de octubre del 2012 Realizo inspeccion de tanques del sistema, alinea circuito corto para inicio de la perforacion del pozo Rumiyacu 03 D. Reviso he inspecciono funcionamiento de SHAKESR, y quipos de control de solidos primarios ok, inspecciono ECS. Cotinua Armando paradas 5"','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('2', 'Control de Sólidos','Equipos trabajando segun indicaciones ed los Ingenieros de Lodos','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('2', 'Tratamiento de Efluentes','Se realiza medicion de parametros de ph y cloro libre en plantas de aguas negras y grises','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('2', 'Manejo de Cortes','Excavadora trabajamdo en zona de cortes Cononaco 20. Se trabaja con una volqueta Fija y una Adicional','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('2', 'Seguridad y Salud Ocupacional <charla diaria>','Riesgos Elecrticos','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('2', 'Actividad del Taladro','Termina de armar BHA #1 BIT Triconica 26\' + BIT SUB +DC+X.0. arranca a perforar a las 05:00 am seccion 26\'\' se llega a 260 FT. Se bombea 20 BLS de Pildora vizcosa y circula hasta retornos limpios @250 GPM 100 PSI, 65RPM, 2/3 torque, se acaba BHA#1 a superficie. Lmpia broca ok y se viaja a fondo. se bombea 20 Bls de pildora vizcosa y circula, se espotea 80 Bls de pildora vizcosa pesada, 10.5 PPG 50 SEC se saca BHA a superficie Se empieza a correr CGS Conductor 20\'\' se arma STRINGER + CENTRALIZADOR en DP 5\'\' Se realiza reunion ed seguridad y se empieza a probar lineas de cementacion','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('3', 'Control de Solidos','EQUIPO TRABAJANDO SEGÚN INDICACIONES DE LOS INGENIEROS DE LODOS. CENTRIFUGA H&H 5500 Y CENTRFIFUGA HV 518 TRABAJAN MEDIANTE OPERACIÓN MQC, ES DECIR DEWATERING DEL SISTEMA ACTIVO CON RETORNOS DE AGUA AL MISMO SISTEMA ACTIVO ','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('3', 'Tratamiento de Efluentes','SE REALIZA MEDICIÓN DE PARÁMETROS DE pH Y CLORO LIBRE EN PLANTAS DE AGUAS NEGRAS Y GRISES','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('3', 'Manejo de Cortes','EXCAVADORA TRABAJANDO EN ZONA DE CORTES,CONONACO 20. SE TRABAJA CON UNA VOLQUETA FIJA Y UNA ADICIONAL','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('3', 'Seguridad y Salud Ocupacional','OPERACIONES CON DESECHOS PELIGROSOS','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('3', 'Actividad del Taladro','HALLIBURTON CEMENTACIÓN ARMA LINEAS 2". SE REALIZA PRUEBAS CON 3200 PSI X 5 MIN OK. SE INICIA CEMENTACIÓN SEGÚN PROGRAMA. SE SACA DP 5'' CON ESTINGUER DESDE 267 FT A SUPERFICIE. SE INSTALA CONDUCTOR DE 20'' + CAMISA + TEMPLADORES Y LINEA DE LLENADO. HALLIBURTON SPERRY ARMA BHA # 2 DIRECCIONAL. SE PERFORA ZAPATO + SECCIÓN DE 16'' CON  550 GPM, 600 PSI, 30-60 RPM, WOB 5/6. CIA GYRODATA TOMA LOS SURVEYS. SE PERFORA DESLIZANDO DESDE 475 @ 515 FT; Y DESDE 607 @ 811 FT.','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('4', 'Control de Solidos','EQUIPO TRABAJANDO SEGÚN INDICACIONES DE LOS INGENIEROS DE LODOS.CENTRIFUGA H&H 5500 Y CENTRFIFUGA HV 518 TRABAJAN MEDIANTE OPERACIÓN MQC, ES DECIR DEWATERING DEL SISTEMA ACTIVO CON RETORNOS DE AGUA AL MISMO SISTEMA ACTIVO SE CAMBIA UNA MALLA GN SOLIDS EN LA ZARANDA 3 EN DECK 3. SE CABIA UNA MALLA MI SWACO JBHXXR325C EN EL MUD CLEANER.','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('4', 'Tratamiento de Efluentes','SE REALIZA MEDICIÓN DE PARÁMETROS DE pH Y CLORO LIBRE EN PLANTAS DE AGUAS NEGRAS Y GRISES','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('4', 'Manejo de Cortes','EXCAVADORA TRABAJANDO EN ZONA DE CORTES,CONONACO 20. SE TRABAJA CON UNA VOLQUETA FIJA Y UNA ADICIONAL','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('4', 'Seguridad y Salud Ocupacional','PREVENCION DE LAS LESIONES DE COLUMNA','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('4', 'Actividad del Taladro','CONTINÚA PERFORANDO ROTANDO Y DESLIZANDO DESDE 811 FT. TOMANDO GYRO DE ACUERDO A REQUERIMIENTOS DIRECCIONALES HASTA 2241 FT. CON 900 GPM, WOB 20; RPM 60; TORQUE 6-8 KLB. PRESIÓN 2700 PSI.  ','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('5', 'Control de Solidos','EQUIPO TRABAJANDO SEGÚN INDICACIONES DE LOS INGENIEROS DE LODOS. CENTRIFUGA H&H 5500 Y CENTRFIFUGA HV 518 TRABAJAN MEDIANTE OPERACIÓN MQC, ES DECIR DEWATERING DEL SISTEMA ACTIVO CON RETORNOS DE AGUA AL MISMO SISTEMA ACTIVO SE CAMBIAN D0S MALLA MI SWACO JBHXXR325C EN EL MUD CLEANER EN DECK 1 Y 3.','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('5', 'Tratamiento de Efluentes','SE REALIZA MEDICIÓN DE PARÁMETROS DE pH Y CLORO LIBRE EN PLANTAS DE AGUAS NEGRAS Y GRISES','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('5', 'Manejo de Cortes','EXCAVADORA TRABAJANDO EN ZONA DE CORTES,CONONACO 20. SE TRABAJA CON UNA VOLQUETA FIJA Y UNA ADICIONAL','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('5', 'Seguridad y Salud Ocupacional','MATERIALES PELIGROSOS. ALMACENAMIENTO','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('5', 'Actividad del Taladro','CONTINÚA PERFORANDO ROTANDO Y DESLIZANDO DESDE 2808 FT HASTA 4027 FT. SE ENVIAN PILDORAS DE LIMPIEZA Y SE CIRCULA HASTA RETORNOS LIMPIOS CON 1000 GPM; 3300 PSI, 60 RPM- TORQUE SE REALIZA VIAJE A SUPERFICIE, SE DESARMA BHA # 2 Y SE EMPIEZA A ARMAR BHA # 3. CALIBRACION DE LA BROCA: 1-0-WT-N-X-I-NO-BHA. PUNTOS APRETADOS @ 1183 Y 810 FT. ','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('6', 'CONTROL DE SÓLIDOS','EQUIPO TRABAJANDO SEGÚN INDICACIONES DE LOS INGENIEROS DE LODOS. CENTRIFUGA H&H 5500 Y CENTRFIFUGA HV 518 TRABAJAN MEDIANTE PERACIÓN MQC, ES DECIR DEWATERING DEL SISTEMA ACTIVO CON RETORNOS DE AGUA AL MISMO SISTEMA ACTIVO','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('6', 'TRATAMIENTO DE EFLUENTES','SE REALIZA MEDICIÓN DE PARÁMETROS DE pH Y CLORO LIBRE EN PLANTAS DE AGUAS NEGRAS Y GRISES','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('6', 'MANEJO DE CORTES','EXCAVADORA TRABAJANDO EN ZONA DE CORTES,CONONACO 20. SE TRABAJA CON UNA VOLQUETA FIJA Y UNA ADICIONAL','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('6', 'SEGURIDAD Y SALUD OCUPACIONAL','PROTECCIÓN DE LOS PIES','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('6', 'ACTIVIDAD DEL TALADRO','RETORNA A FONDO CON BHA # 3, PTOS APRETADOS @ 2166, 2251 Y 2810 FT SIN PROBLEMAS CON 600 GPM, 1100 PSI, 40 RPM, 10 WOB. SE BAJA LAVANDO POR SEGURIDAD 2 ÚLTIMAS ARADAS AL FONDO OK. BOMBEA 30 BBLS PÍLDORA DISPERSA. PERFORA DESLIZANDO SEGÚN REQUERIMIENTOS DIRECCIONALES HASTA 5218 FT CON: WOB 10; 3600 PSI; 1000 GPM.','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('7', 'CONTROL DE SÓLIDOS','EQUIPO TRABAJANDO SEGÚN INDICACIONES DE LOS INGENIEROS DE LODOS. CENTRIFUGA H&H 5500 Y CENTRFIFUGA HV 518 TRABAJAN MEDIANTE OPERACIÓN MQC, ES DECIR DEWATERING DEL SISTEMA ACTIVO CON RETORNOS DE AGUA AL MISMO SISTEMA ACTIVO','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('7', 'TRATAMIENTO DE EFLUENTES','SE REALIZA MEDICIÓN DE PARÁMETROS DE pH Y CLORO LIBRE EN PLANTAS DE AGUAS NEGRAS Y GRISES','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('7', 'MANEJO DE CORTES','EXCAVADORA TRABAJANDO EN ZONA DE CORTES,CONONACO 20. SE TRABAJA CON UNA VOLQUETA FIJA Y UNA ADICIONAL','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('7', 'SEGURIDAD Y SALUD OCUPACIONAL','PROTECCIÓN DE BRAZOS Y MANOS','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('7', 'ACTIVIDAD DEL TALADRO','CONTINUA ROTANDO Y DESLIZANDO DE ACUERDO A PROGRAMA DIRECCIONAL HASTA 6100 FT. BOMBEA TÁNDEM DE PÍLDORAS Y CIRCULA HASTA RETORNOS LIMPIOS. REALIZA VIAJE A SUPERFICIE SIN PROBLEMAS.','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('8', 'CONTROL DE SÓLIDOS','EQUIPO TRABAJANDO SEGÚN INDICACIONES DE LOS INGENIEROS DE LODOS. CENTRIFUGA H&H 5500 Y CENTRFIFUGA HV 518 TRABAJAN MEDIANTE OPERACIÓN MQC, ES DECIR DEWATERING DEL SISTEMA ACTIVO CON RETORNOS DE AGUA AL MISMO SISTEMA ACTIVO SE RECIBEN 20SACOS DE POLIMERO 1143 (15550)','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('8', 'TRATAMIENTO DE EFLUENTES','SE REALIZA MEDICIÓN DE PARÁMETROS DE pH Y CLORO LIBRE EN PLANTAS DE AGUAS NEGRAS Y GRISES SE TRATAN 450 BLS DE AGUA DE DEWATERING. SE REINYECTAN  400 BLS DE AGUA TRATADA EN LA ESTACIÓN AUCA SUR PREVIA AUTORIZACION. SE SUCCIONAN 100 BLS  DE LA CELDA  No. 2 ','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('8', 'MANEJO DE CORTES','EXCAVADORA TRABAJANDO EN ZONA DE CORTES,CONONACO 20. SE TRABAJA CON UNA VOLQUETA FIJA Y UNA ADICIONAL','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('8', 'SEGURIDAD Y SALUD OCUPACIONAL','RESBALOS, TROPEZONES Y CAIDAS','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('8', 'ACTIVIDAD DEL TALADRO','CONTINUA ROTANDO Y DESLIZANDO, HASTA 6100 FT. SE BOMBEA TANDEM DE PILDORAS. 40 BLS PILDORA DISPERSA Y 50 BLS DE PILDORA VISCO-PESADA. CIRCULA HASTA RETORNOS LIMPIOS CON 950 GPM. 3300 PSI. 70 RPM. OBSERVA POZO ESTÁTICO. OK. SE REALIZA VIAJE HASTA 2000 FT LIBRE. SE RETORNA AL FONDO. PUNTOS DE APOYO @ 5045 FT Y 5350 FT. SE BAJA LAVANDO DOS ULTIMAS PARADAS. BOMBEA 45 BLS DE PÍLDORA VISCOSA. CIRCULA UN FONDO ARRIBA. CONTINUA PERFORANDO SECCIÓN DE 16" DESLIZANDO HASTA 6550 FT CON 29 WOB, 900 GPM, 3300 PSI.','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('9', 'CONTROL DE SÓLIDOS','EQUIPO TRABAJANDO SEGÚN INDICACIONES DE LOS INGENIEROS DE LODOS.CENTRIFUGA H&H 5500 Y CENTRFIFUGA HV 518 TRABAJAN MEDIANTE OPERACIÓN MQC, ES DECIR DEWATERING DEL SISTEMA ACTIVO CON RETORNOS DE AGUA AL MISMO SISTEMA ACTIVO SE RECIBEN 7 MALLAS SWACO JBHXXR230C. SE RECIBEN 4 MALLAS SWACO JBHXXR200C. SE RECIBEN 3 MALLAS SWACO  JBHXXR400C. CON GUIA DE REMISIÓN 002-001-10425','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('9', 'TRATAMIENTO DE EFLUENTES','SE REALIZA MEDICIÓN DE PARÁMETROS DE pH Y CLORO LIBRE EN PLANTAS DE AGUAS NEGRAS Y GRISES','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('9', 'MANEJO DE CORTES','EXCAVADORA TRABAJANDO EN ZONA DE CORTES,CONONACO 20. SE TRABAJA CON UNA VOLQUETA FIJA Y UNA ADICIONAL','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('9', 'SEGURIDAD Y SALUD OCUPACIONAL','SEGURIDAD CON LAS MANGUERAS DE AIRE A PRESION','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('9', 'ACTIVIDAD DEL TALADRO','CONTINUA ROTANDO Y DESLIZANDO DE ACUERDO A PROGRAMA DIRECCIONAL HASTA 6857 FT EN MODO SLIDING 20 WOB; 3350 PSI; 900 GPM.','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('10', 'CONTROL DE SÓLIDOS','EQUIPO TRABAJANDO SEGÚN INDICACIONES DE LOS INGENIEROS DE LODOS. CENTRIFUGA H&H 5500 Y CENTRFIFUGA HV 518 TRABAJAN MEDIANTE OPERACIÓN MQC, ES DECIR DEWATERING DEL SISTEMA ACTIVO CON RETORNOS DE AGUA AL MISMO SISTEMA ACTIVO','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('10', 'TRATAMIENTO DE EFLUENTES','SE REALIZA MEDICIÓN DE PARÁMETROS DE pH Y CLORO LIBRE EN PLANTAS DE AGUAS NEGRAS Y GRISES','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('10', 'MANEJO DE CORTES','EXCAVADORA TRABAJANDO EN ZONA DE CORTES,CONONACO 20. SE TRABAJA CON UNA VOLQUETA FIJA Y UNA ADICIONAL','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('10', 'SEGURIDAD Y SALUD OCUPACIONAL','LEVANTAMIENTO DE OBJETOS','1');
INSERT INTO `slnecc_control`.`comentario` (`id_reporte`, `titulo`, `comentarios`, `id_usuario`) VALUES ('10', 'ACTIVIDAD DEL TALADRO','PERFORA ROTANDO Y DESLIZANDO SEGÚNREQUERIMIENTOS DE DIRECCIONAL HASTA 7091 FT. SE ENVIAN PÍLDORAS DE LIMPIEZA PREVIO AL VIAJE A SUPERFICIE.SE CIRCULA HASTA RETORNOS LIMPIOS CON 920 GPM; 3200 PSI; 80 RPM; 10 TORQUE. SE CHEQUEA FLUJO ESTATICO POR 5 MINUTOS Y SE PROCEDE AL VIAJE A SUPERFICIE. PTOS APRETADOS @ 7091; 5040; 4550; 4200; 3290 FT. SE SACA CON BACK REAMING 850 GPM; 2300 PSI; 70 RPM. SE CORTA CABLE. REALIZA RIG SERVICE Y EMPIEZA A BAJAR LIBRE HASTA 2691 FT.','1');