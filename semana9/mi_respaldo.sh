#!/bin/bash

ORIGEN="/home/gustavo/semana9"
DESTINO="/home/gustavo/respaldos"

mkdir -p "$DESTINO"

FECHA=$(date +%Y%m%d_%H%M%S)
ARCHIVO="$DESTINO/respaldo_$FECHA.tar.gz"

if tar -czf "$ARCHIVO" \
    -C "$(dirname "$ORIGEN")" "$(basename "$ORIGEN")"; then
    echo "Respaldo creado correctamente."
    echo "Archivo: $ARCHIVO"
else
    echo "Error al crear el respaldo."
    exit 1
fi
