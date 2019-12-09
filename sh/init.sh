#!bin/bash

#Primero preparamos los directorio de odoo
echo ""
echo "Preparando directorios"
echo ""

cp -r ../../scaffolding_gestool/odoo ../../
cp -r ../../scaffolding_gestool/sh ../../

chmod -R 777 ../../odoo
chmod -R 777 ../../sh

#Actualizamos repositorios de ubuntu

echo "Actualizando repositorios"
echo ""

sleep 2

apt-get update -y

apt-get upgrade -y

#aumentar el inotify_watch

echo 16384 > /proc/sys/fs/inotify/max_user_watches

#Instalación de docker

echo "Instalando docker"
echo ""

sleep 2

apt-get install docker.io -y

echo ""
echo "Docker instalado correctamente"

docker -v

# Instalamos docker-compose

echo ""
echo "Instalando docker-composse"
echo ""

sleep 2

apt-get install docker-compose -y