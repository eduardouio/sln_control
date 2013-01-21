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

class Model(object):
	''' 	
	Model encargado de gestionar la base de datos, los errores que puedan ocurrir son mostrados
	directamente por la capa y el metodo en el que ocurra un error retorna falso caso contrario
	retorna en resultado de la ejecucion del metodo.

	Metodos disponibles en Model:

	consultDb => 		Ejecuta una consulta en el servidor
	listTables => 	Lista las tablas de la DB
	listColumns => 	Lista las columnas de una tabla
	selectTable => 		Ejecuta una Sentencia SELECT en la DB 
	'''
	def __init__(self):
		'''Inicia la conexión al servidor'''
		self.Conn = conn.conectar()		
		

	def __consultDb(self,sql):
		'''
		Ejecuta una consulta en la base de datos, las consultas son preparadas por el metodo
		que invoca a este metodo, este metodo solo se encarga de ejecutar una consulta y
		controlar los errores.		
		'''				

		if (self.Conn):			
			sql.exec_()
			if not sql.isActive():
				QtGui.QMessageBox.warning(None,
					QtGui.qApp.tr('Ocurrió un Error al enviar o recibir información'),
					QtGui.qApp.tr('La solicitud no se completó correctamente, inténtelo de nuevo \n'
									'El servidor dice... \n' + sql.lastError().databaseText() + 
									'\n\nSi el problema continúa comuníquese con eduardouio7@gmail.com' + str(sql.lastQuery())),					
					QtGui.QMessageBox.Ok)		
				return False

			return sql


	def listTables(self):
		'''
		Lista todas las tablas de la base de datos
		'''		
		sql = QtSql.QSqlQuery()				

		sql.prepare('SHOW TABLES FROM slnecc_control;')
		resultado = self.consultDb(sql)

		if not resultado:			
			return resultado

		return False


	def listColumns(self,tabla):
		'''
		Lista las columnas de una tabla
		'''
		sql = QtSql.QSqlQuery()					
		
		sql.prepare("SHOW COLUMNS FROM " + tabla + " ;")
		resultado = self.consultDb(sql)

		if not resultado:			
			return resultado

		return False

	def selectAll(self, table, condition):
		'''
		Ejecuta una consulta todos los registros de una tabla o vista

		(str)	table 		=>	nombre de la tabla a consultar
		(bool)	condition 	=> 	Indica si la sentencia tiene alguna condicion
		'''
		sql = QtSql.QSqlQuery()

		if (condition == False)
			sql.prepare("SELECT * FROM " + table + ";")
		else:
			sql.prepare("SELECT * FROM " + table +  condition + ";")	
			
		resultado = self.consultDb(sql)

		if not resultado:
			return resultado

		return False


	
	def insertTable(self,table,row):
		'''
		Inserta un registro en la DB

		table 		=>	nombre de la tabla
		row 	=>	diccionario de calve valor (columna/valor)

		'''
		#separo en una lista cada valor
		columnas = []
		valores = []
		for item in diccionario:
			columnas.append(item)
			valores.append(diccionario[item])

		#Preparo la primera parte de la sentencia
		misql = "INSERT INTO " + table + "("
		i = 1
		x = len(columnas)
		for columna in columnas:
			if (i<x):
				





		sql = QtSql.QSqlQuery()
		sql.prepare("INSERT INTO `slnecc_control`.`cargo_sln`"
					"(`id_cargo_sln`,"
					"`cargo`,"
					"`descripcion`,"
					"`create`,"
					"`last_update`)"
					"VALUES"
					"("
					"<{id_cargo_sln: }>,"
					"<{cargo: }>,"
					"<{descripcion: }>,"
					"<{create: }>,"
					"<{last_update: CURRENT_TIMESTAMP}>"
					");"
					)

		columnas = []
		valores = []


		for item in diccionario:
			columnas.append(item)
			valores.append(diccionario[item])


	def updateTable(self,table,columns):
		'''
		Edita un registro de una tabla

		table 		=>	nombre de la tabla
		columns 	=>	diccionario de calve valor
		'''

			
		pass

	def deleteTable(self,table,conditions):
		'''
		Elimina un registr de una tabla
		table 		=>	nombre de la tabla
		conditions 	=>	condiciones (clave valor)		
		'''
		pass

	def lastQuery(self):
		'''	retorna el Sql de la última consulta'''
		pass

	def lastInsertId(self):
		'''Ultimo Id ingresado en la BD'''
		pass




if __name__ == '__main__':	
	import sys
	app = QtGui.QApplication(sys.argv)
		
	db = Model()	
	
	vista = QtGui.QTableView()
	vista.show()
	
	sys.exit(app.exec_())