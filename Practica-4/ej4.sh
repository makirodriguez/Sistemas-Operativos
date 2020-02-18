
#Crear un script al cual se le pase como argumento un nombre de usuario y muestre los procesos que
#está ejecutando ese usuario. En caso de que no se pase ningún argumento, debe mostrar todos los
#procesos en ejecución, y en caso de que el usuario pasado como argumento sea root, mostrar un
#mensaje de error
#/bin/bash

if [ $# -eq 1 ];then
	if [ $1 = "root" ];then
		echo "Error el usuario es root"
	else
		ps  -u $1
	fi
fi

if [ ! $# -eq 1 ];then
	ps -aux
fi



