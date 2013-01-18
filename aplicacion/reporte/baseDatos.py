#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Version		1.0
# Autor			Eduardo Villota <eduardouio@hotmail.com> <@eduardouio>
# Package		Conexion a la base de datos
# File			DB.py
# Ubicacion		reporte/basedatos/DB.py
# Copyright		(c) 2012 Sólidos y Lodos Nacionales S.A. <http://sln-ec.com> <info@sln-ec.com> 

from PyQt4 import QtCore, QtSql, QtGui
import conn

class Modelo(object):
	'''
	Modelo encargado de gestionar la base de datos
	Metodo disponibles en el modelo:
	consultar => Ejecuta una consulta en el servidor
	listarTablas => Lista las tablas de la DB

	'''

	def consultar(self,query):
		'''
		Ejecuta una consulta en la base de datos y mustra los errores
		que se puedan producir en las consultas
		'''
		conn_ = conn.conectar()		
		sql = QtSql.QSqlQuery()		
		sql.exec_(query)

		if not sql.isActive():
			QtGui.QMessageBox.warning(None,QtGui.qApp.tr('No se puede conectar a la Base de Datos!...'),
			QtGui.qApp.tr('Hubo un problema al conectarse con la base de datos \n'
				'El servidor dice... \n' + sql.lastError().databaseText()),
				QtGui.QMessageBox.Ok)		
			return False

		return sql


	def listarTablas(self):
		'''
		Lista todas las tablas de la base de datos
		'''
		query = "show tables from slnecc_control;"				
		valor = self.consultar(query)
		return valor

if __name__ == '__main__':	
	import sys
	app = QtGui.QApplication(sys.argv)
		
	db = Modelo()
	tablas = db.listarTablas()
	print(dir(tablas))
	print(tablas.isActive())

	vista = QtGui.QTableView()
	vista.show()
	
	sys.exit(app.exec_())
