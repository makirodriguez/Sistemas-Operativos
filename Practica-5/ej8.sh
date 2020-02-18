#Hacer un scripts que me deje en un archivo de nombre “mem-actual” el estado de la memoria actual, y en un archivo
#de nombre “mem-limpia” el estado luego de ejecutar el comando de liberación de memoria. El scripts me debe solicitar
#al ejecutarlo que tipo de nivel de liberación quiero hacer al ejecutar el comando que corresponde a tal fin. A
#continuación se especifican los valores a pasarle al comando de liberación de memoria:
#0: No liberara absolutamente nada de nuestra memoria cache.
#1: Forzamos a nuestro kernel a liberar la pagecache.
#2: Forzando a nuestro kernel a liberar los inodos y dentries.
#3: Forzando a nuestro kernel a liberar la pagecache, los inodos y las dentries.
#/bin/bash

if [ -e memActual -a memLimpia ];then
        rm -R memActual memLimpia
fi

free -h > memActual

echo "----------Elija una opcion-------------"
echo "0: No liberara absolutamente nada de nuestra memoria cache."
echo "1: Forzamos a nuestro kernel a liberar la pagecache."
echo "2: Forzando a nuestro kernel a liberar los inodos y dentries."
echo "3: Forzando a nuestro kernel a liberar la pagecache, los inodos y las  dentries"
read op

case $op in

0)	sync ; echo 0 > /proc/sys/vm/drop_caches
	echo "No se libero absolutamente nada de la memoria cache";;
1)	sync ; echo 1 > /proc/sys/vm/drop_caches
	echo "Forzamos a nuestro kernel a liberar la pagecache";;

2) 	sync ; echo 2 > /proc/sys/vm/drop_caches
	echo "Forzamos a nuestro kernel a liberar los inodos y dentries";;
3)	sync ; echo 3 > /proc/sys/vm/drop_caches
	echo "Forzamos a nuestro kernel a liberar la pagecache, los inodos y las dentries";;
*)	echo "Opcion invalida";;
esac

free -h > memLimpia

