#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Version		1.0
# Autor			Eduardo Villota <eduardouio@hotmail.com> <@eduardouio>
# Package		Clase encargada de la gestion de usuarios
# File			usuario.py
# Ubicacion		reporte/controlador/usuario.py
# Copyright		(c) 2012 Sólidos y Lodos Nacionales S.A. <http://sln-ec.com> <info@sln-ec.com> 

from PyQt4 import PyqtDq
import db.db

class usuario(object):
	'''	Intentando implementar una clase para que trabaje con los 
	usuarios, existen dos tipos de usuario un administrador y un digitador,
	la administracion de usuarios es manejada unicamente por el administrador'''

	def __init__(self):
		''' En nombre de la tabla y el limite de las consultas son manejadas como
		variables de tipo cadena'''		
		self.tabla = 'usuario'
		self.limit = '0'
		self.db = db()

	def listUsers(self,user,pssw):
		''' Se listan todos los usuarios del sistema'''
		


	def loginUser(self,user,pssw):
		''' Se comprueba las credenciales del usuario
		y se inicia la sesion del panel de control, esta funcion
		está disponible para el sistema'''
		

	def createUser(self,user,pssw,tipo):
		''' Se crea un nuevo usuario en el sistema'''

	def editUser(self,user,pssw):
		''' Se edita un usuario existente'''

	def deleteUser(self,user,pssw):
		''' Se elimina un usuario existente'''

		
