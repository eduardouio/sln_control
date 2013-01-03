#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Version		1.0
# Autor			Eduardo Villota <eduardouio@hotmail.com> <@eduardouio>
# Package		Abstraccion Base Datos
# File			database.py
# Ubicacion		reporte/basedatos/errores.py
# Copyright		(c) 2012 Sólidos y Lodos Nacionales S.A. <http://sln-ec.com> <info@sln-ec.com>

#librerias necesarias para el funcionamiento del modulo

import sys
#import Error
from PyQt4.QtCore import *
from PyQt4.QtSql import *

class BaseDatos(object):
	"""		
	Clase encargada de manejar la base de datos, realiza consultas e inserciones en la misma
	Tareas asignadas a esta clase:

	Establecer parametros
	conectar
	ejecutar consulta
	iniciar transaccion
	confirmar transaccion
	cancelar transaccion
	"""
	#Propiedades necesarias de la clase
	Host = '127.0.0.1'
	User = 'root'
	Pass = ''
	Schema = 'slnecc_control'
	Sql = ''

	def __init__(self):
		'''Tareas a realizar luego de instaciar los objetos'''
		self.Conn = self.setParametros()		

	
	def setParametros(self):
		'''Establece los parametros de coneccion y crea el objeto conn encargado de manejar la conexxion'''
		
		self.Conn = QSql.addDatabase("QMYSQL")
		self.Conn = setHostName(self.Host)
		self.Conn = setUserName(self.User)
		self.Conn = setDatabaseName(self.Schema)
		self.Conn = setPassword(self.Pass)
		return self.Conn
	
	def conectar(self):
		'''Conecta al Servidor'''
		try:
			self.conn.open()
		except Exception as e:
			print(e.message)


print('Saliendo de la clase')
Midb = BaseDatos()
