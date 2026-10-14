#!/usr/bin/env python3

"""
Semana 10: reporte básico del sistema.
Genera información del equipo y del uso del disco.
"""

import platform
import shutil
import socket
from datetime import datetime
from pathlib import Path

def generar_reporte():
    ruta = Path(__file__).resolve().parent
    archivo = ruta / "reporte_sistema.txt"

    # Consultar el espacio disponible en la raíz de Linux
    disco = shutil.disk_usage("/")

    total_gb = disco.total / (1024 ** 3)
    usado_gb = disco.used / (1024 ** 3)
    libre_gb = disco.free / (1024 ** 3)
    porcentaje = (disco.used / disco.total) * 100

    contenido = f"""
REPORTE DEL SISTEMA
========================
Fecha: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}
Equipo: {socket.gethostname()}
Sistema operativo: {platform.system()}
Version: {platform.release()}
Arquitectura: {platform.machine()}

USO DEL DISCO RAIZ
========================
Capacidad total: {total_gb:.2f} GB
Espacio utilizado: {usado_gb:.2f} GB
Espacio disponible: {libre_gb:.2f} GB
Porcentaje utilizado: {porcentaje:.2f} %
"""

    archivo.write_text(contenido.strip() + "\n", encoding="utf-8")
    print(contenido)
    print(f"Reporte guardado en: {archivo}")

if __name__ == "__main__":
    generar_reporte()
