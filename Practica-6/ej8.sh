#/bin/bash
#Hacer un script que me informe usuarios conectados al servidor, tiempo de encendido el
#equipo y el promedio de carga del mismo en los últimos 5, 10 y 15 minutos.

usuarios=$(uptime | awk '{print $2}' FS=',')
echo "La cantidad de usuarios conectados son: $usuarios"

tiempoEncendido=$(uptime | awk '{print $1}')
echo "El tiempo de encendido es: $tiempoEncendido"

promCarga=$(uptime | cut -d ":" -f5)
echo "El promedio de carga en los ultimos 5,10,15 min es: $promCarga"
