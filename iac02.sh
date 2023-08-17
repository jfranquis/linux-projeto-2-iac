#!/bin/bash

echo  'Atualizar Servidor...'
apt-get update
apt-get upgrade -y

echo 'Instalando apache2...'
apt-get install apache2 -y


echo 'Instalando unzip...'
apt-get install unzip -y

echo 'Baixando aplicação e copiando arquivos do diretório...'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'Descompactando arquivo...'
unzip main.zip
cd linux-site-dio-main

echo 'Copiando para pasta do apache2...'
cp -R * /var/www/html/
