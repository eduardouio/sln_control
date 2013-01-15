#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Version		1.0
# Autor			Eduardo Villota <eduardouio@hotmail.com> <@eduardouio>
# Package		Conexion a la base de datos
# File			DB.py
# Ubicacion		reporte/basedatos/DB.py
# Copyright		(c) 2012 Sólidos y Lodos Nacionales S.A. <http://sln-ec.com> <info@sln-ec.com> 
#				derehos reservados

#librerias necesarias para el funcionamiento del modulo
from PyQt4 import QtSql

def conectar():
	'''Conecta a la base de datos reternando objeto de connection'''
	Conn = QtSql.QSqlDatabase.addDatabase("QMYSQL")		    
	Conn.setHostName('127.0.0.1')
	Conn.setUserName('root')
	Conn.setDatabaseName('slnecc_control')
	Conn.setPassword('')
	#intentamos abrir la conexion a la BD
	# si funciona se retorna true caso contrario el error
	try:
		Conn.open()
	except:
		return QtSql.QSqlDatabase.lastError()	
	return True