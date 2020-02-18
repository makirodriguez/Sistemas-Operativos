
#Hacer un scripts que me informe:
#a) Total de memoria del sistema
#b) Total de memoria usada
#c) Total de memoria libre
#d) Dejar el informe en un archivo llamado “Informe de RAM”
#/bin/bash

if [ -e informeRAM ];then
	rm -R informeRAM
fi

totMemoria=$(free -h| awk '{print $2}' | head -2 | tail -1)
totMemoriaUsada=$(free -h| awk '{print $3}' |head -2 | tail -1)
totMemoriaLibre=$(free -h | awk '{print $4}' | head -2 | tail -1)

echo "Total de memoria del sistema: $totMemoria" >> informeRAM
echo "Total de memoria usada: $totMemoriaUsada" >> informeRAM
echo "Total de memoria libre: $totMemoriaLibre" >> informeRAM


