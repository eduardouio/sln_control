#!/usr/bin/env python

"""	
	@Clase base datos		
	@version 1.0
	@autor Eduardo Villota <eduardouio@hotmail.com> <@eduardouio>
	@ubicacion reporte/basedatos/db.py

	Aplicacion Reporte SLN

	Clase encargada de manejar la base de datos

	conectar
	ejecutar consulta
	iniciar transaccion
	confirmar transaccion
	cancelar transaccion

"""
import sys
from PyQt4.QtCore import *
from PyQt4.QtSql import *

class basedatos(object):

	
	def parametros(self):
		Qsql = QtSql
		conn = Qsql.addDatabase("QMYSQL")
		conn = setHostName('127.0.0.1')
		conn = setUserName('root')
		conn = setDatabaseName('slnecc_control')
		conn = setPassword('')
		return conn
	
	def conectar(self):
		conn = parametros();
		conn.open();

try:
	dab = basedatos()
	dab.conectar()
except:
	print "hubo un error"