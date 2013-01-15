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
from PyQt4 import QtCore
from PyQt4 import QtGui	
from PyQt4 import QtSql
import conn

class Modelo(object):
''' Modelo de base de datos'''
	def __init__(self):
		pass

	def listarTablas(self):
		'''Lista todas las tablas de la base de datos'''
		miDb = conn()
		miDb.conn.conectar()
		consulta = QtSql.QSqlQuery()	
		consulta.exec_('SHOW TABLES FROM slnecc_control;')	
		return consulta

if __name__ == '__main__':
    app = QtGui.QApplication(sys.argv)
    data = Modelo()
    res = QtSql.QSqlQuery()
    res = data.listarTablas()
    sys.exit(app.exec_())
