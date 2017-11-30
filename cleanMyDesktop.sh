#!/bin/bash

cont=0
while [ $cont != 1 ]
do
	echo "Vas a trasladar todo lo que tienes en el Escritorio a una carpeta en tus Documentos"
	echo "¿Quieres ponerle un nombre?(S/n)"
	read respuesta

	if [ "${respuesta}" == "s" ] || [ "${respuesta}" == "si" ]
	then
        	echo "Introduce el nombre que le quieres poner a la carpeta"
        	read nombre_carpeta
        	mkdir /Users/$USER/Documents/"$nombre_carpeta"
        	mv /Users/$USER/Desktop/* /Users/$USER/Documents/"$nombre_carpeta"
		cont=1
	elif [ "${respuesta}" == "n" ] || [ "${respuesta}" == "no" ]
	then
        	fecha=$(date +%d-%m-%Y_%T)
        	mkdir /Users/$USER/Documents/"$fecha"
        	mv /Users/$USER/Desktop/* /Users/$USER/Documents/"$fecha"
		cont=1
	else
        	echo "No has introducido una respuesta válida"
	fi
done
