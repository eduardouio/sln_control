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
  

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`perforacion`
  -- -----------------------------------------------------
  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`cargo_sln`
  -- -----------------------------------------------------
  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`personal`
  -- -----------------------------------------------------
  

  -- -----------------------------------------------------
  -- Table `slnecc_control`.`personal_locacion`
  -- -----------------------------------------------------
  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zarandas`
  -- -----------------------------------------------------
  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_mallas`
  -- -----------------------------------------------------
  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`acondicionador_lodo`
  -- -----------------------------------------------------
  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`zaranda_acondicionador`
  -- -----------------------------------------------------
  


  -- -----------------------------------------------------
  -- Table `slnecc_control`.`centrifugas`
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
