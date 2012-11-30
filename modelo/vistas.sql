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
-- 4.- v_trabajo_equipo
-- 5.- v_personal_locacion
-- 6.- v_vol_corte_fluido
-- ---------------------------------------------------
-- ---------------------------------------------------

/**
* Vista Enacraga de mostrar la entrada de los prosuctos de inventario
* de una forma clara eliminando los ids de las tablas secundarias
*
* Tablas Consultadas
*	- materia_prima as mp
*	- inv_entrada as ie
*	- reporte as rp
*/
CREATE VIEW v_inv_entrada
AS
SELECT 
ie.id_inv_entrada AS id,
ie.id_reporte, rp.fecha,
mp.codigo, mp.nombre, mp.marca, mp.cantidad_presentacion, mp.unidad_medida,
ie.cantidad, ie.costo AS valor_unit, (ie.cantidad * ie.costo) AS total , ie.notas
FROM
(
inv_entrada AS ie
JOIN materia_prima AS mp ON (ie.id_materia_prima = mp.id_materia_prima)
LEFT JOIN reporte AS rp ON (ie.id_reporte = rp.id_reporte)
)
ORDER BY rp.id_reporte;


/**
* Vista Enacraga de mostrar las salidas de los productos de inventario
* de una forma clara eliminando los ids de las tablas secundarias
*
* Tablas Consultadas
*	- inv_salida as i_s
*	- reporte	as rp
*	- parametro_mp	as pmp
*	- materia_prima	as mp
*   
*/
CREATE VIEW v_inv_salida
AS
SELECT
i_s.id_inv_salida AS id,  
rp.id_reporte, rp.fecha,
mp.nombre, mp.codigo,
i_s.guia_remision, i_s.cantidad, i_s.notas,
sf.nombre AS servicio, sf.codigo AS cod_servicio, sf.tipo as tipo_servicio
FROM 
(
inv_salida AS i_s
JOIN reporte AS rp ON (rp.id_reporte = i_s.id_reporte)
JOIN parametro_mp as pmp ON (i_s.id_parametro_mp = pmp.id_parametro_mp)
JOIN servicio_fluido as sf ON (pmp.id_servicio_fluido = sf.id_servicio_fluido)
JOIN materia_prima as mp ON (pmp.id_materia_prima = mp.id_materia_prima)
)
ORDER BY rp.id_reporte;


/**
* Vista que despliega el nombre de la materia prima y sus parametros
*
* Tablas Consultadas
*	- materia_prima as mp
*	- servicio_fluido as sf
*	- parametro_mp as pmp
CREATE VIEW v_parametro_mp
AS
*/
CREATE VIEW v_parametro_mp
AS
SELECT
pmp.id_parametro_mp AS id,
mp.nombre AS nombre_mp, mp.codigo AS codigo_mp, mp.marca AS marca_mp, mp.cantidad_presentacion,
sf.codigo AS cod_servicio, sf.nombre AS nom_servicio, sf.tipo AS tipo_servicio,
pmp.create AS creado_en
FROM
(
parametro_mp AS pmp
JOIN servicio_fluido AS sf ON (pmp.id_servicio_fluido = sf.id_servicio_fluido)
JOIN materia_prima AS mp ON (pmp.id_materia_prima = mp.id_materia_prima)
)
ORDER BY mp.nombre;


/**
* Listado de los trabajos realizados por los equipos
*
* Tablas Consultadas
*	- trabajo_equipo as te
*	- equipo
*	- servicio_fluido
*/
CREATE VIEW v_trabajo_equipo
AS
SELECT
te.id_trabajo_equipo AS id,
te.id_reporte,
rp.fecha,
eq.nombre as equipo,
sf.nombre as servicio,
te.horas, te.rpm, te.gpm, te.ppg_entrada, te.ppg_salida, te.ppg_descarga,
ROUND(((te.horas*te.gpm)*(60/42)),0) as bbls_diario
FROM
(
trabajo_equipo AS te
JOIN equipo AS eq ON (te.id_equipo = eq.id_equipo)
JOIN servicio_fluido AS sf ON (te.id_servicio_fluido = sf.id_servicio_fluido)
JOIN reporte AS rp ON (te.id_reporte = rp.id_reporte)
)
ORDER BY rp.id_reporte;


/**
* Listado de las personas que trabajan en el pozo
*
* Tablas Consultadas
*	- cargo as car
*	- personal as per
*	- personal_locacion as pl
*/
CREATE VIEW v_personal_locacion
AS
SELECT
pl.id_personal_locacion AS id,
pl.id_reporte,
per.apellidos, per.nombres,
car.cargo
FROM
(
personal_locacion AS pl
JOIN personal AS per ON (pl.id_personal = per.id_personal)
JOIN cargo_sln AS car ON (pl.id_cargo_sln = car.id_cargo_sln)
)
ORDER BY pl.id_reporte;

/**
* Listado de fluidos contenidos en los equipos
*
* Tablas Consultadas
*	- equipo as eq
*	- servicio_fluido as sf
*	- vol_corte_fluido as vcf
*/
CREATE VIEW v_vol_cortes_fuidos
AS
SELECT
vcf.id_vol_corte_fluido AS id,
vcf.id_reporte,
eq.nombre AS equipo,
sf.nombre AS servicio,
vcf.bbls
FROM
(
vol_corte_fluido as vcf
JOIN equipo AS eq ON (vcf.id_equipo = eq.id_equipo)
LEFT JOIN servicio_fluido as sf ON (vcf.id_servicio_fluido = sf.id_servicio_fluido)
)
ORDER BY vcf.id_reporte;