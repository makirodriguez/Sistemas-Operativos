#/bin/bash
#Hacer un script que informe si un usuario cualquiera se conecto al servidor en el ultimo
#mes

if [ ! $# -eq 1 ];then
	echo ------Todos los usuarios conectados el ultimo mes-----
	last
else
	echo ----- $1 se conecto el ultimo es-----
	last | grep $1
fi
