#!/bin/bash

# Semana 10: automatización de respaldos
# Curso: Administración de Plataformas de TI

ORIGEN="/home/gustavo/infra-equipo/semana10/documentos_prueba"
DESTINO="/home/gustavo/infra-equipo/semana10/respaldos"
FECHA=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVO="$DESTINO/respaldo_$FECHA.tar.gz"

# Verificar que exista la carpeta de origen
if [ ! -d "$ORIGEN" ]; then
    echo "ERROR: No existe la carpeta de documentos."
    exit 1
fi

# Crear la carpeta de destino si no existe
mkdir -p "$DESTINO"

# Crear el respaldo comprimido
if tar -czf "$ARCHIVO" -C "$ORIGEN" .; then
    echo "Respaldo creado correctamente."
    echo "Archivo: $ARCHIVO"
else
    echo "ERROR: No se pudo crear el respaldo."
    exit 1
fi
