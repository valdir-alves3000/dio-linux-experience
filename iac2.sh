#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get update -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Ativando o servidor Apache"

sudo service apache2 start

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
rm -rf main.zi**

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip


cd linux-site-dio-main
cp -R * /var/www/html/


echo "FIM"
