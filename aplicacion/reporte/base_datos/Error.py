#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Version		1.0
# Autor			Eduardo Villota <eduardouio@hotmail.com> <@eduardouio>
# Package		Abstraccion Base Datos
# File			errores.py
# Ubicacion		reporte/basedatos/errores.py
# Copyright		(c) 2012 Sólidos y Lodos Nacionales S.A. <http://sln-ec.com> <info@sln-ec.com>

class Error(Exception):
	'''
	Clase encargada de gestionar los errores de la clapa de abstraccion, todos los errores
	suben desde esta capa y son gestionados por la capa superior y luego mostrados por la
	capa de presentacion.
	'''
	pass
