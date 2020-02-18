#Hacer un scripts que me permita indicarle por parámetro si quiero habilitar o deshabilitar la memoria swap
#/bin/bash

if [ ! $# -eq 1 ];then
	echo "Debe ingresar si desea habilitar/deshabilitar la memoria Swap"
	exit
fi

if [ $1 = "habilitar" ];then
	swapon -a
	echo "Se HABILITO correctamente"
elif [ $1 = "deshabilitar" ];then
	swapoff -a
	echo "Se DESHABILITO correctamente"
else
	echo "El parametro ingresado es incorrecto"
fi
