Infra Equipo

Descripción

Proyecto de infraestructura TI desarrollado para practicar la implementación, administración y supervisión de servicios mediante Docker, Docker Compose, Linux y Git.

El repositorio reúne prácticas de infraestructura y automatización, organizadas por semanas para facilitar su documentación, mantenimiento y evaluación.

Objetivos

Desplegar servicios mediante contenedores.

Administrar varios servicios utilizando Docker Compose.

Practicar scripts de Bash y Python en Linux.

Automatizar tareas de respaldo, alertas y consulta del estado del sistema.

Utilizar Git y GitHub para controlar versiones y documentar los cambios.

Servicios de infraestructura

El proyecto contempla la configuración de los siguientes servicios, según el archivo docker-compose.yml:

Nginx.

Node.js.

MariaDB.

Redis.

Adminer.

Dozzle.

La disponibilidad efectiva de cada servicio depende de la configuración del proyecto y de que sus contenedores estén iniciados correctamente.

Requisitos

Debian Linux o una distribución compatible.

Docker Engine.

Docker Compose.

Git.

Conexión a Internet para descargar imágenes y dependencias.

Instalación

Clonar el repositorio:

git clone git@github.com:GustavoTello/infra-equipo.git
cd infra-equipo

Si utilizas HTTPS en lugar de SSH, puedes clonar el repositorio con su URL HTTPS de GitHub.

Ejecución con Docker Compose

Validar la configuración:

docker compose config

Iniciar los servicios:

docker compose up -d

Consultar el estado de los contenedores:

docker compose ps

Consultar los registros:

docker compose logs -f

Detener los servicios:

docker compose down

Los puertos y las credenciales dependen de la configuración local. No publiques contraseñas, tokens ni archivos .env con información sensible.

Prácticas de la Semana 9

La carpeta semana9/ contiene scripts de automatización y supervisión en Linux.

Archivo

Descripción

estado.py

Script en Python para consultar información o estado del sistema, según su implementación.

mi_alerta.sh

Script de Bash destinado a tareas de alerta.

mi_respaldo.sh

Script de Bash destinado a tareas de respaldo.

README.md

Documentación de la práctica y sus instrucciones de uso.

Para revisar las instrucciones específicas, consulta semana9/README.md.

Control de versiones

El proyecto utiliza Git para registrar los cambios y GitHub como repositorio remoto para respaldar y compartir el código.

Para consultar el estado del repositorio:

git status

Para revisar los cambios registrados:

git log --oneline

Seguridad

No subir archivos .env con credenciales reales.

Mantener las variables sensibles fuera del código publicado.

Revisar los cambios antes de realizar un commit.

Evitar publicar contraseñas, tokens o claves privadas.

Organización del repositorio

infra-equipo/
├── semana9/
│   ├── estado.py
│   ├── mi_alerta.sh
│   ├── mi_respaldo.sh
│   └── README.md
├── docker-compose.yml
├── Dockerfile
├── app.js
├── index.html
├── nginx.conf
├── .env.example
├── .gitignore
└── README.md

La estructura puede variar a medida que se incorporen nuevas prácticas.

Autoría y propósito

Proyecto académico de infraestructura TI orientado al aprendizaje de Linux, Docker, Docker Compose, automatización y control de versiones.
