#/bin/bash

#Hacer un script que cambie los bits de permanencia sobre un archivo cualquiera
#pasado como parámetro.
#a) Al dueño
#b) Al grupo
#c) A otros

if [ ! $# -eq 1 ];then
	echo "Debe pasar un archivo como parametro"
	exit
fi

if [ ! -f $1 ];then
	echo "Debe pasar un archivo como parametro"
        exit
fi

echo ----------Elija una opcion-----------
echo "1)Modificar bit de permanencia al dueno"
echo "2)Modificar bit de permanencia al grupo"
echo "3)Modificar bit de permanencia a otros"
read op

case $op in

1)	chmod 4744 $1
	echo Se modifico con exito el bit de permanencia en el dueno;;
2)	chmod 2744 $1
	echo Se modifico con exito el bit de permanencia en el grupo;;
3)	chmod 1744 $1
      	echo Se modifico con exito el bit de permanencia a otros;;
*)	echo Opcion incorrecta;;

esac

