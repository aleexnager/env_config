#!/bin/bash
#Programa para borrar lineas duplicadas, y ordenar alfabeticamente las líneas

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file_to_process>"
  exit 1
fi

INPUT_FILE="$1"
if [ ! -f "$1" ]; then
  echo "ERROR: File $1 does not exist"
  exit 1
fi

TEMP_FILE="temp_extensiones"

#Eliminar las dos primeras líneas (título y espacio separador)
tail -n +3 "$INPUT_FILE" > "$TEMP_FILE"

#Eliminar posibles líneas vacías, eliminar duplicados, ordenar alfabéticamente y guardar en archivo temporal.
awk 'NF' "$TEMP_FILE"| sort | uniq > "${TEMP_FILE}_sorted"

#Añadir nuevamente las dos primeras líneas con el título y el separador
head -n 2 "$INPUT_FILE" > "$INPUT_FILE"_processed
cat "${TEMP_FILE}_sorted" >> "$INPUT_FILE"_processed

#Eliminar archivos temporales
rm "$TEMP_FILE" "${TEMP_FILE}_sorted"

echo "El archivo ha sido procesado y guardado como ${INPUT_FILE}_processed."
