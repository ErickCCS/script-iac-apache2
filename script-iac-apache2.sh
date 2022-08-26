#!/bin/bash


echo "Atualizando o sistema..."

apt-get update -y

apt-get upgrade -y

echo "Instalando o Apache2..."

apt-get install apache2 -y

apt-get install unzip -y

cd /tmp

echo "Baixando e copiando os arquivos da aplicação web.."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Processo concluído!"
