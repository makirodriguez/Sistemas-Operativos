#Hacer un scripts que me informe:
#a) Los procesos esperando por CPU
#b) El número de procesos en estado dormido
#c) Si dichos proceso están usando memoria swap
#d) La cantidad de memoria intercambiada desde el disco
#e) La cantidad de memoria intercambiada hacia el disco.

#/bin/bash

echo "-------------------------Elija una opcion---------------------------"
echo "1)Mostrar procesos esperando por CPU"
echo "2)Mostrar el numero de procesos en estado dormido"
echo "3)Mostrar si dichos procesos estan usando memoria swap"
echo "4)Mostrar la cantidad de memoria intercambiada desde el disco"
echo "5)Mostrar la cantidad de memoria intercambiada hacia el disco"
read op

case $op in

1)	r=$( vmstat | awk '{print $1}' | sed '1,2d')
	echo "Procesos esperando por CPU: $r";;
2)	b=$(vmstat | awk '{print $2}' | sed '1,2d')
	echo "Procesos en estado dormido: $b";;
3)	swpd=$(vmstat | awk '{print $3}' | sed '1,2d')
	echo "Uso de la memoria swap de los procesos: $swpd";;
4)	si=$(vmstat | awk '{print $7}' | sed '1,2d')
	echo "La cantidad de memoria intercambiada desde el disco: $si";;
5)	so=$(vmstat | awk '{print $8}' | sed '1,2d')
        echo "La cantidad de memoria intercambiada hacia el disco: $so";;
*)	echo "Opcion invalida";;
esac
