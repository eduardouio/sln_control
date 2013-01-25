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
	''' Modelo de datos, lo errores ocurridos en la capa son mostrados por lastError()
	si un metodo no puede efectuar una accion retorna falso.
	Los tipos de error a soportar son errores de conexión y errores en consultas sql'''


	def __init__(self):
		'''Inicia la conexión al servidor'''

		self.Conn = conn.conectar()		
		

	def __consultDb(self,sql):
		'''Ejecuta una consulta en la base de datos, las consultas son preparadas por el metodo
		que invoca a este metodo'''				

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
		'''	Lista todas las tablas de la base de datos '''		
		sql = QtSql.QSqlQuery()				

		sql.prepare('SHOW TABLES FROM slnecc_control;')
		resultado = self.consultDb(sql)

		if not resultado:			
			return resultado

		return False


	def listColumns(self,tabla):
		''' Lista las columnas de una tabla	'''
		sql = QtSql.QSqlQuery()					
		
		sql.prepare("SHOW COLUMNS FROM " + tabla + " ;")
		resultado = self.consultDb(sql)

		if not resultado:			
			return resultado

		return False

	def getQueryModel(self,columns,table):
		'''Retorna un modelo de solo lectura de una tabla
		se especifica las columnas con un diccionario, para 
		no escribir las cabeceras del model si la consulta tiene un error consultar 
		QSqlQueryModel.lastError()'''

		sql = 'SELECT '
		#desde
		i = 1
		#hasta
		x = len(columns)

		#armamos la consulta
		for item in columns:
			if ( i < x ):
				sql = sql + item + ' AS ' + columns[item] + ','

			if ( i == x ):
				sql = sql + item + ' AS ' + columns[item] + ' FROM ' + table

			i += 1

		modelo = QtSql.QSqlQueryModel()
		modelo.setQuery(sql)

	def getTableModel(self, table, condition):
		'''Retorna un modelo editable de una tabla, la condicion string sql
		lo errores estan en lastError() '''
		
		modelo = QtSql.QSqlTableModel()		
		modelo.setTable(table)
		#los cambios al modelo se almacenan en cache y se reguistran 
		#cuando llamemos al metodo modelo.submitAll(), se tiene la posibilada de revertir
		modelo.setEditStrategy(QtSql.QSqlTableModel.OnManualSubmit)
		modelo.setFilter(condition)
		modelo.select()

		return modelo


	def selectQuery(self, table, columns ,condition, like, limit):
		'''
		Ejecuta una consulta tipo SELECT en la BD

		(str)	table 		=>	nombre de la tabla a consultar
		(list)	columns 	=>	Columnas a mostrar
		(str)	condition 	=> 	condicion si no existe "1=1"
		(str)	like		=>	para filtras busquedas de no existir es False
		(int)	limit		=>	limite de registros si se desa la tabla completa vale 0

		SELECT columns FROM table
		WHERE conditions | like
		LIMIT limit 
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

