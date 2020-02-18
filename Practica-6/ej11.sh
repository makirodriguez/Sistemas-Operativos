#/bin/bash
#Hacer un script que guarde en el archivo conectados todos los usuarios conectados al sistema y si
#al script le paso como parámetro un usuario cualquiera me informe solamente este usuario y la hora
#de conexión al servidor.

if [ -e conectados ];then
	rm conectados
fi

who > conectados

if [ $# -eq 1 ];then
	cat conectados| grep macarena | awk '{print "usuario:" $1, "horaConexion:" $4}'
fi
