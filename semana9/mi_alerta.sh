#!/bin/bash

USO=$(df -P / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "===== ALERTA DEL DISCO ====="
echo "Uso actual: ${USO}%"

if [ "$USO" -ge 80 ]; then
    echo "ALERTA: El disco tiene poco espacio disponible."
else
    echo "OK: El espacio del disco es suficiente."
fi
