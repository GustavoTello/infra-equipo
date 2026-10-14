# Semana 10: Automatización con Bash, PowerShell, Python e IA

## Objetivo
Automatizar tareas administrativas mediante scripts, probar su funcionamiento y documentar los resultados.

## 1. Respaldo con Bash
Archivo: `respaldo.sh`

Comprime los documentos de prueba en un archivo TAR.GZ cuyo nombre incluye la fecha y hora.

Pruebas:
- Ejecución del script.
- Creación del archivo comprimido.
- Verificación de su contenido con `tar -tzf`.

## 2. Alerta de disco con Bash
Archivo: `alerta_disco.sh`

Consulta el uso del disco raíz y muestra una alerta cuando alcanza el umbral del 80 %.

Se configura mediante cron para ejecutarse cada 30 minutos. Los resultados se guardan en `alerta.log`.

## 3. Reportes de Windows con PowerShell
Archivo: `reporte.ps1`

Consulta los servicios y procesos de Windows y exporta los resultados a `servicios.csv` y `procesos.csv`.

Los archivos se generaron en la carpeta `Semana10` del usuario de Windows. El script y los CSV deben incorporarse a las evidencias del repositorio.

## 4. Reporte con Python
Archivo: `reporte_sistema.py`

Genera un reporte con la fecha, el nombre del equipo, el sistema operativo, la arquitectura y el uso del disco.

El resultado se guarda en `reporte_sistema.txt`.

## 5. Revisión del código
Se verificó la sintaxis de los scripts de Bash y Python y se comprobó la generación de los resultados.

Se revisó el uso de rutas absolutas y relativas para que los archivos se guarden en las ubicaciones esperadas.

## 6. Evidencias
Guardar capturas de pantalla de las ejecuciones y comprobaciones dentro de `evidencias/`.

## Conclusión
La práctica permite aplicar automatización de respaldos, monitoreo del disco, generación de reportes de Windows y consulta de información del sistema con Python.
