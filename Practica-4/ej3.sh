#Hacer un script que realice los siguientes pasos:
#Crear un archivo de nombre process (usando comando de creación de archivos).
#En el archivo process agregar todos los procesos que se están ejecutando en el sistema
#Del archivo process cortar el nombre usuario y PID y mandarlos al archivo solousu
#Comprimir y empaquetar el archivo process y solousu como proc-usu.tar.gz

#/bin/bash


if [ -e process -a solousu ];then
	rm -r process solousu
fi

touch process

ps -aux > process

cat process | awk '{print $1 , $2}' > solousu

#tar -czfv proc-usu.tar.gz process solousu
