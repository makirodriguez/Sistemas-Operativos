
#/bin/bash

#Hacer un script que me informe la dirección física, la dirección IP y la mascara de subred
#de la placa de red

dirIP=$(ifconfig | grep inet | sed '1,2d'| awk '{print $2}' | head -1)
dirFisica=$( ifconfig | grep ether | awk '{print $2 }')
mascara=$(ifconfig | grep netmask | awk '{print $4 }' | tail -1)

echo "La direcion fisica es: $dirFisica"
echo "La direccion IP es: $dirIP"
echo "La mascara de subred es: $mascara"
