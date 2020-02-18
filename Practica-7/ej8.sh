#/bin/bash
#Hacer un script que reciba como parámetro un directorio cualquiera, y calcule el tamaño
#de cada uno de sus archivos (ya sean ordinarios o directorios), además contabilizar cuanto
#archivos ordinarios y directorios hay.

if [ ! $# -eq 1 ];then
	echo "Debe pasar un directorio como parametro"
	exit
fi

if [ ! -d $1 ];then
        echo "Debe pasar un directorio como parametro"
        exit
fi

if [ -e archivos -a directorios ];then
	rm archivos directorios
fi

find $1 -type f > archivos
find $1 -type d > directorios

cantArchivos=$(cat archivos | wc -l)
cantDir=$(cat directorios | wc -l)
rm archivos directorios
echo La cantidad de archivos de $1 es: $cantArchivos
echo La cantidad de directorios de $1 es: $cantDir
echo El tamano de cada uno de sus archivos es: $(du -a $1)
