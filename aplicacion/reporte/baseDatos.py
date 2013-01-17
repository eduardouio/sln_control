#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Version		1.0
# Autor			Eduardo Villota <eduardouio@hotmail.com> <@eduardouio>
# Package		Conexion a la base de datos
# File			DB.py
# Ubicacion		reporte/basedatos/DB.py
# Copyright		(c) 2012 Sólidos y Lodos Nacionales S.A. <http://sln-ec.com> <info@sln-ec.com> 
#				derehos reservados

import sys
from PyQt4 import QtCore, QtSql, QtGui
import conn

class Modelo(object):
	'''
	Modelo encargado de gestionar la base de datos
	Metodo disponibles en el modelo:
	listarTablas
	ip configip
	'''

	def listarTablas(self):
		'''Lista todas las tablas de la base de datos'''		

		conn_ = conn.conectar()
		if conn_ == true:
			query = QtSql.QSqlQuery()
			query.exec_('show tables from slnecc_control;')
			return query
			
		return False

	def retornarError(miError):
		'''Recibe un error ocurrido en el fichero y lo muestra al usuario'''


if __name__ == '__main__':
	app = QtGui.QApplication(sys.argv)
	a = Modelo()
	a.listarTablas()
	print(dir(a))
	print('hola mundo, se ha ejecutado las clases')
	sys.exit(app.exec_())


Control de Sólidos
Fluidos de Perforación y Completación
Manejo y tratamiento de cortes de perforación
Biorremediación
Limpieza de tanques
Transporte y disposición de cortes
Tratamiento de aguas residuales
Mejoramiento químico en el tratamiento de desechos
Análisis de aguas, suelos y gases.
Renta de bombas centrifugas MCM

