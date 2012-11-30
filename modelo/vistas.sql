-- ---------------------------------------------------
-- ---------------------------------------------------
-- Algoritmos de los Vistas
-- Sólidos Y Lodos Nacionales SLN <info@sln-ec.com> http://sln-ec.com
-- Autor Eduardo Villota <@eduardouio> <eduardouio@hotmail.com>
-- 
-- En este fichero se encuentran los algoritmos de las vistas mas utiles
-- las mismas que ayudan a resolver consultas complejas de manera fácil
-- las vistas nos permiten tener un fácil acceso a la información de la
-- base de datos ya sea de una tabla o de varias, se tratará e lo maximo
-- que las vistas muestren los ids de los reportes a l que pertenecen <todos los nombre van en minúsculas>
--
-- Índice de Vistas
--
-- 1.- v_inv_entrada_mp
-- 2.- v_inv_salida_mp
-- 3.- v_parametro_mp
-- 4.- v_trabajo_equipo_equipo
-- 5.- v_salida_costo_costo
-- 6.- v_vol_corte_fluido_equipo
-- 7.- v_personal_locacion_cargo
-- 8.-
-- 9.-
-- ---------------------------------------------------
-- ---------------------------------------------------

/**
* Vista Enacraga de mostrar la entrada de los prosuctos de inventario
* de una forma clara eliminando los ids de las tablas secundarias
*
* Tablas Consultadas
*	- materia_prima
*	- inv_entrada
*	- reporte
*/
CREATE VIEW v_inv_salida
AS
SELECT 
ie.id_reporte, rp.fecha,
mp.codigo, mp.nombre, mp.marca, mp.cantidad_presentacion, mp.unidad_medida,
ie.cantidad, ie.costo as valor_unit, (ie.cantidad * ie.costo) as total , ie.notas
FROM
inv_entrada as ie
JOIN materia_prima as mp ON ie.id_materia_prima = mp.id_materia_prima
LEFT JOIN reporte as rp ON ie.id_reporte = rp.id_reporte
Order by rp.id_reporte;


/**
* Vista Enacraga de mostrar las salidas de los productos de inventario
* de una forma clara eliminando los ids de las tablas secundarias
*
* Tablas Consultadas
*	- materia_prima
*	- inv_entrada
*	- parametro_mp
*/
CREATE VIEW v_inv_salida_mp
AS
SELECT 
is.id_reporte,
mp.codigo, mp.nombre, mp.marca, mp.cantidad_presentacion, mp.unidad_medida,
is.cantidad, is.costo as valor_unit, (is.cantidad * is.costo) as total, is.notas
FROM
materia_prima as mp, inv_salida as is ;

/**
* Vista que despliega el nombre de la materia prima y sus parametros
*
* Tablas Consultadas
*	- materia_prima
*	- servicio_fluido
*	- parametro_mp
*/
CREATE VIEW v_parametro_mp
AS
SELECT
mp.codigo, mp.nombre, mp.marca, mp.cantidad_presentacion, mp.unidad_medida,
sf.codigo, sf.nombre,
pmp.create
FROM
materia_prima as mp, servicio_fluido as sf, parametro_mp as pmp
WHERE


/**
* Listado de trabajos realizados por los equipos, al igual que los fluidos tratados.
*
* Tablas Consultadas
*	- equipo
*	- servicio_fluido
*	- trabajo_equipo
*/
CREATE VIEW v_trabajo_equipo_equipo
SELECT 
te.id_reporte,
eq.codigo, eq.nombre, eq.tipo,
sf.codigo, sf.nombre, sf.tipo,
te.bbls
FROM equipo as eq, servicio_fluido as sf, trabajo_equipo as te
WHERE


/**
* listado de la salida de los costos incluyendo la salida de los mismos
*
* Tablas Consultadas
*	- costo
*	- clasificacion_costo
*	- salida_costo
*/
CREATE VIEW v_salida_costo_costo
SELECT 
sc.id_reporte,
cc.nombre,
co.descripcion_costo,
sc_cantidad, sc_costo
FROM
costo as co, clasificacion_costo as cc, salida_costo as sc
WHERE


/**
* Listado de fluidos contenidos en los equipos
*
* Tablas Consultadas
*	- equipo
*	- servicio_fluido
*	- vol_corte_fluido
*/
CREATE VIEW v_vol_corte_fluido_equipo
SELECT 
cvf.id_reporte, 
eq.codigo, eq.nombre,
sf.codigo, sf.nombre,
vcf.bbls
FROM
equipo as eq, servicio_fluido as sf, vol_corte_fluido as vcf
WHERE


/**
* Listado ed las personas trabajando en locacion
*
* Tablas Consultadas
*	- cargo
*	- personal
*	- personal_locacion
*/
CREATE VIEW v_personal_locacion_cargo
SELECT 
pl.id_reporte,
pe.profesion, pe.apellidos, pe.nombres,
ca.cargo
FROM
cargo as ca, personal as pe, personal_locacion as pl
WHERE
