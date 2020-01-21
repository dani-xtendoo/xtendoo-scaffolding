#Actualizamos repositorios de ubuntu

echo "Actualizando repositorios"
echo ""

sleep 2

apt-get update -y

apt-get upgrade -y

#aumentar el inotify_watch

echo 16384 > /proc/sys/fs/inotify/max_user_watches

#apertura de puertos en ovh

ufw allow 8069

ufw allow 5050

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