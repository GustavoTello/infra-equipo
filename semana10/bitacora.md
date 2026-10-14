# Bitácora de pruebas - Semana 10

## Prueba 1: Respaldo con Bash
Resultado: Correcto.
Evidencia: Se generó un archivo TAR.GZ con fecha y hora.
Verificación: Se comprobó el contenido con tar -tzf.

## Prueba 2: Alerta de disco
Resultado: Correcto.
Evidencia: El script mostró el porcentaje de uso del disco raíz.
Programación: Cron configurado para ejecutar la alerta cada 30 minutos.
Registro: alerta.log.

## Prueba 3: PowerShell
Resultado: Correcto.
Evidencia: Se generaron los archivos servicios.csv y procesos.csv en Windows.

## Prueba 4: Reporte con Python
Resultado: Correcto.
Evidencia: Se generó reporte_sistema.txt con información del equipo y uso del disco.

## Revisión del código
Se comprobaron la sintaxis de Bash y Python y la generación de los archivos esperados.
Se debe conservar evidencia visual de las pruebas y documentar cualquier corrección realizada.
