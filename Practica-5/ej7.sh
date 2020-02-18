#Hacer un scripts que me permita tomar la decisión de cambiar los niveles de intercambio entre la memoria swap y la
#RAM, en este caso el scripts me debe solicitar al ejecutarlo:
#- 0% de nivel de intercambio.
#- 50% de nivel de intercambio.
#- 100% de nivel de intercambio
#/bin/bash

echo "------------------Elija una opcion----------------"
echo "1)0% de nivel de intercambio"
echo "2)50% de nivel de intercambio"
echo "3)100% de nivel de intercambio"
read op

case $op in

1)	echo 0 > /proc/sys/vm/swappiness
	echo "Se realizo con exito el cambio del nivel de intercambio";;
2)      echo 50 > /proc/sys/vm/swappiness
        echo "Se realizo con exito el cambio del nivel de intercambio";;
3)      echo 100 > /proc/sys/vm/swappiness
        echo "Se realizo con exito el cambio del nivel de intercambio";;
*) 	echo "Opcion invalida";;

esac
