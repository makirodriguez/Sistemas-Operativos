#/bin/bash

#Hacer un scripts que me permita correr el comando dmesg ( mensaje de diagnostico
#del nucleo de linux ) y poder ingresar por parámetro cualquiera de los siguientes filtros a
#dicho comando, como para tener información más detallada del diagnóstico buscado.

if [ ! $# -eq 1 ];then
	echo Ingrese una palabra:
	echo emerg – el sistema no se puede usar
	echo alert – se deben tomar medidas de inmediato
	echo crit – condiciones críticas
	echo err – condiciones de error
	echo warn – condiciones de advertencia
	echo notice – condición normal pero significativa
	echo info – informativo
	echo debug – mensajes a nivel de depuración
	exit
fi

dmesg --level $1

comando=$(dmesg --level $1 | wc -l)

if [ $comando -eq 0 ];then
	echo "No hay nada para mostrar"
fi
