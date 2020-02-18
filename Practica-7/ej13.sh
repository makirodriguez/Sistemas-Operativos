#/bin/bash

#Hacer un script que cree el directorio “edirectory” y desde este crear todos los
#enlace simbólicos de todos los directorios que se encuentran en el raíz del perfil de
#usuario, Idem “efiler” y desde aquí crear enlace duro de todos los archivos.

if [ -e edirectory -a efiler ];then
	rm -R edirectory efiler
fi

mkdir edirectory efiler

for i in /*;do
	if [ -d $i ];then
		ln -s $i ./edirectory
	fi
	if [ -f $i ];then
		ln $i ./efiler
	fi
done
