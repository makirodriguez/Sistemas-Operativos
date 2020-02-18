#/bin/bash

#Dado un directorio cualquiera pasado por parámetro, crear un script que me
#devuelva el nombre del archivo más grande y su correspondiente tamaño.


if [ ! $# -eq 1 ];then
	echo Debe pasar un directorio como parametro
	exit
fi

if [ ! -d $1 ];then
        echo Debe pasar un directorio como parametro
        exit
fi

tamGrande=$(du -hs * $1 |head -1)
echo "El archivo mas grande es: $tamGrande"
