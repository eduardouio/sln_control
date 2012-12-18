import db
try:
	dab = basedatos()
	dab.conectar()
except:
	print "hubo un error"