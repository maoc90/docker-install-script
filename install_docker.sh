#!/bin/bash

# Script de instalación automática de Docker en Ubuntu 24.04
# Autor: Automatizado
# Requiere ejecutar como sudo

echo "====================================="
echo " Instalación automática de Docker "
echo "====================================="

# Verificar si se ejecuta como root
if [ "$EUID" -ne 0 ]
  then echo "Por favor ejecuta este script con sudo."
  exit
fi

echo "1. Actualizando el sistema..."
apt update && apt upgrade -y

echo "2. Instalando dependencias..."
apt install -y ca-certificates curl gnupg

echo "3. Agregando clave GPG de Docker..."
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
gpg --dearmor -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg

echo "4. Agregando repositorio de Docker..."
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "5. Actualizando repositorios..."
apt update

echo "6. Instalando Docker..."
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "7. Verificando instalación..."
docker --version

echo "====================================="
echo " Docker instalado correctamente "
echo "====================================="

echo "Probando contenedor hello-world..."
#docker run hello-world

echo "Proceso finalizado."