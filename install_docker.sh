#!/usr/bin/env bash 
set -euo pipefail 

echo "=== Actualizando paquetes del sistema e instalando dependencias ===" 
sudo apt-get update -y 
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

echo "=== Agregando la llave oficial GPG de Docker ===" 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "=== Configurando el repositorio de Docker para Xenial ===" 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"

echo "=== Instalando Docker Engine ===" 
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

echo "=== Configurando permisos ===" 
sudo usermod -aG docker vagrant

echo "=== OK - Docker instalado correctamente ==="