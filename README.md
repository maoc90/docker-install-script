# Script De Instalación De Docker En Ubuntu Server 24.04.4 LTS

Script en **Bash** para automatizar la instalación de Docker en **Ubuntu Server 24.04.4** utilizando el repositorio oficial de Docker.

## Descripción

Este proyecto proporciona un script que instala automáticamente **Docker Engine** y sus componentes necesarios en Ubuntu Server 24.04.4.
El objetivo es simplificar el proceso de instalación ejecutando todos los pasos necesarios en un solo comando.

El script realiza las siguientes tareas:

* Actualiza el sistema
* Instala dependencias necesarias
* Agrega la clave GPG oficial de Docker
* Agrega el repositorio oficial de Docker
* Instala Docker Engine y herramientas relacionadas
* Verifica la instalación ejecutando un contenedor de prueba

## Requisitos

* Ubuntu Server 24.04.4
* Acceso a Internet
* Permisos de administrador (sudo)

## Instalación y uso

1. Clonar el repositorio:

```bash
git clone https://github.com/maoc90/docker-install-script.git
```

2. Entrar al directorio del proyecto:

```bash
cd docker-install-script
```

3. Dar permisos de ejecución al script:

```bash
chmod +x install_docker.sh
```

4. Ejecutar el script:

```bash
sudo ./install_docker.sh
```

## Verificación

Si la instalación se realizó correctamente, el script ejecutará el contenedor de prueba de Docker y mostrará un mensaje confirmando que Docker funciona correctamente.

También puedes verificar manualmente con:

```bash
docker --version
```

## Estructura del proyecto

```
docker-install-script
│
├── install_docker.sh
└── README.md
```

## Tecnologías utilizadas

* Bash
* Docker
* Ubuntu Server 24.04.4

## Autor

Proyecto desarrollado como práctica de automatización y administración de servidores Linux.

## Licencia

Este proyecto puede utilizarse libremente para fines educativos y de aprendizaje.
