#Escribir un script que genere un archivo con información en forma separada de:
#Arquitectura del procesador
#Nombre de la maquina
#El sistema operativo instalado
#La versión del kernel
#/bin/bash

echo Arquitectura del procesador: $(uname -p)
echo Nombre de la maquina: $(uname -m)
echo El sistema operativo instalado: $(uname -o)
echo La version del kernel: $(uname -v)
