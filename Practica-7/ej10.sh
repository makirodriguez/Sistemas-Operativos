#/bin/bash
#Realizar un script que busque en un directorio cualquiera pasado como parámetro, los
#archivos *.mp3 y los borre, ademas que busque los archivos que tienen permisos 744 y
#los mueva a un directorio llamado “exe”

if [ ! $# -eq 1 ];then
	echo "Debe pasar un directorio como parametro"
	exit
fi

if [ ! -d $1 ];then
        echo "Debe pasar un directorio como parametro"
        exit
fi

if [ -e exe ];then
	rm -R exe
fi

mkdir exe
find $1 -name "*.mp3" -delete
find $1 -perm 744 -exec mv {} ./exe \;
