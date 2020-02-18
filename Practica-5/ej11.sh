
#Dada la siguiente tabla de páginas de un proceso, donde el tamaño de las mismas es de 1024Kbyte
#Hacer un scripts que calcule la dirección física de las siguientes direcciones lógicas:
#página 0 desplazamiento 80
#página 3 desplazamiento 150
#página 1 desplazamiento 600
#página 4 desplazamiento 327
#pagina 2 desplazamiento 356
#/bin/bash

if [ ! $# -eq 1 ];then
	echo "Debe pasar la tabla de paginas como parametro"
	exit
fi

echo "Ingrese el numero de pagina"
read pag
echo "Ingrese el desplazamiento"
read desp

bit=$(cat $1 | grep "p$pag" | awk '{print $3}' FS=";")
dirMem=$(cat $1 | grep "p$pag" | awk '{print $2}' FS=";")

if [ $bit -eq 0 ];then
	echo "No se puede calcular la direccion de memoria fisica, el bit es 0"
else
	if [ $dirMem -gt $desp ];then
		dirFisica=$(($dirMem + $desp))
		echo "La memoria fisica de p$pag es $dirFisica"
	else
		echo "El desplazamiento es mayor que el tamanio de pagina"
	fi
fi



