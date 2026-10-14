#!/bin/bash

# Semana 10: alerta de uso del disco

UMBRAL=80
USO=$(df -P / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "=================================="
echo "      MONITOR DE DISCO"
echo "=================================="
echo "Fecha: $(date '+%Y-%m-%d %H:%M:%S')"
echo "Uso del disco raíz: ${USO}%"
echo "Umbral de alerta: ${UMBRAL}%"

if [ "$USO" -ge "$UMBRAL" ]; then
    echo "ALERTA: El disco ha superado el umbral."
else
    echo "Estado: Uso del disco dentro del límite."
fi
