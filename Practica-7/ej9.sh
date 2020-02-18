#/bin/bash

#Hacer un script que me informe los tipos de particiones que tiene el disco, y ademas los
#tamaños en megabyte de las mismas.

df -m | grep "/dev/sd" | awk '{print "Particion:" $1, "Tamano:" $2}'
