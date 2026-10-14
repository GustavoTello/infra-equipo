# Automatizaciones de Infraestructura - Semana 9

## Descripción

Proyecto académico de administración de sistemas Linux mediante scripts en Python y Bash para diagnosticar el almacenamiento, generar alertas preventivas y realizar copias de seguridad.

## Requisitos

- Debian Linux o Ubuntu Server.
- Python 3.
- Bash.
- Utilidades Linux: df, awk y tar.
- Git.

## Scripts desarrollados

### 1. estado.py

Consulta el almacenamiento del sistema mediante la biblioteca `shutil`.

- Muestra el espacio total del disco.
- Muestra el espacio utilizado y disponible.
- Calcula el porcentaje de utilización.

Ejecución:

    python3 estado.py

### 2. mi_alerta.sh

Comprueba el porcentaje de utilización del disco raíz y muestra una alerta cuando el uso es igual o superior al 80 %.

Ejecución:

    chmod +x mi_alerta.sh
    ./mi_alerta.sh

### 3. mi_respaldo.sh

Crea una copia de seguridad comprimida de la carpeta del proyecto. El nombre del respaldo incluye la fecha y hora.

Los respaldos se guardan en `/home/gustavo/respaldos`.

Ejecución:

    chmod +x mi_respaldo.sh
    ./mi_respaldo.sh

## Estructura del proyecto

    semana9/
    ├── README.md
    ├── estado.py
    ├── mi_alerta.sh
    └── mi_respaldo.sh

## Resultados esperados

- Diagnóstico del almacenamiento.
- Alertas por uso elevado del disco.
- Copias de seguridad comprimidas.
- Automatización de tareas básicas de administración.

## Conclusión

La práctica demuestra el uso de Python y Bash para automatizar tareas de administración y mantenimiento de sistemas Linux.

## Autor

Gustavo Tello Villar

Proyecto académico - Semana 9.
