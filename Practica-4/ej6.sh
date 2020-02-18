#Crear un script simple que genere una iteración de 1 a 10, por parámetro ingresar en que momento quiere
#cortar esa iteración y devolver el control del bash.

#/bin/bash

if [ ! $# -eq 1 ];then
	echo "Ingrese el numero de iteracion a cortar"
	exit
fi


for i in $(seq 1 10);do
	echo $i
	if [ $i -eq $1 ];then
		proc=$(pgrep -u root | head -3 | tail -1)
		kill -9 $proc
	fi
	sleep 2
done

