#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Version		1.0
# Autor			Eduardo Villota <eduardouio@hotmail.com> <@eduardouio>
# Package		Abstraccion Base Datos
# File			database.py
# Ubicacion		reporte/basedatos/errores.py
# Copyright		(c) 2012 Sólidos y Lodos Nacionales S.A. <http://sln-ec.com> <info@sln-ec.com>

#import Error
import sys
from PyQt4.QtCore import *
from PyQt4.QtSql import *

#objeto que inicia los modulos de los drivers, es probable que debe eliminarlo
# cuando este en la capa superior, ya que esta se reemplaza por app = QApplication(sys.argv) de UI
app = QCoreApplication(sys.argv)

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

	def __init__(self):
		self.conectar()
		
	
	def conectar(self):
		'''Establece los parametros de coneccion y crea el objeto conn encargado de manejar la conexion'''		
		self.Conn = QSqlDatabase.addDatabase("QMYSQL")
		self.Conn.setHostName("127.0.0.1")
		self.Conn.setDatabaseName("slnecc_control")
		self.Conn.setUserName("root")
		self.Conn.setPassword("")		
		db = self.Conn.open()
		return db