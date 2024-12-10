#!/bin/bash

# Directorio actual
directory=$(pwd)

# Tamaño deseado
size="128x128"

# Iterar sobre todos los archivos PNG en el directorio actual
for img in $directory/*.png; do
    if [[ -f "$img" ]]; then
        # Redimensionar la imagen y sobrescribirla como PNG
        convert "$img" -resize $size\! "${img%.*}.png"
        echo "Imagen redimensionada: ${img%.*}.png"
    fi
done
