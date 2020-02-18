#/bin/bash

#Utilizando el CRON escribir un script que me genere cada dos minutos un archivo de
#nombre “archi||Hora-actual”. Luego de probado dejar el archivo crontab vacio

horaActual=$(date +%H:%M:%S)
fechaActual=$(date +%D)

echo "La hora es: $horaActual"
echo "La fecha es: $fechaActual"
