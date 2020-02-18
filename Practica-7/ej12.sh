#/bin/bash

#Hacer un script que me muestre la partición principal del disco, especificando en
#Kbyte:
#Cantidad de bloques
#Bloques usados
#Bloques disponibles


df . -k | tail -1 | awk '{print "La particion es: " $1, "\nCantidad de bloques:" $2, "\nBloques usados:" $3, "\nBloques disponibles: "$4}'
