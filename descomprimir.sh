#!/bin/bash

while true
do

<<<<<<< HEAD
	echo "¿Qué desea descomprimir?"
	echo "1. Imágenes comprimidas"
	echo "2. Suma de verificaciones"
	echo "3. Si no desea descomprimir"
	read opcion
	
	# Verificar si la entrada es un número válido
	if [[ "$opcion" =~ ^[0-9]+$ ]]; then	
  		if (("$opcion" == 1)); then
  			if ls imagenes_categorizadas.zip>/dev/null 2>&1; then
    				unzip imagenes_categorizadas.zip
    				rm -r imagenes_categorizadas.zip
    			else
    				echo "No existe el archivo para descomprimir"
    			fi	
  		elif (("$opcion" == 2)); then
  			if ls SumaVerificacion.zip>/dev/null 2>&1; then
    				unzip SumaVerificacion.zip
    				rm -r SumaVerificacion.zip
    			else
    				echo "No existe el archivo para descomprimir"
    			fi	
  		elif (("$opcion" == 3)); then
    			echo "Se procede a cerrar el script..."
    			break
  		else
    			echo "Su opción ingresada no es correcta."
  	  	fi
	else
  		echo "Por favor, ingrese un número válido como opción."
	fi

  
	
=======
echo "¿Qué desea descomprimir?"
echo "1. Imágenes comprimidas"
echo "2. Suma de verificaciones"
echo "3. Si no desea descomprimir"
read opcion

# Verificar si la entrada es un número válido
if [[ "$opcion" =~ ^[0-9]+$ ]]; then
  if (("$opcion" == 1)); then
    unzip "*das.zip"
    rm -r imagenes_categorizadas.zip
  elif (("$opcion" == 2)); then
    unzip SumaVerificacion.zip
    rm -r SumaVerificacion.zip
  elif (("$opcion" == 3)); then
    echo "Se procede a cerrar el script..."
    break
  else
    echo "Su opción ingresada no es correcta."
  fi
else
  echo "Por favor, ingrese un número válido como opción."
fi

>>>>>>> origin/francobranch
done

