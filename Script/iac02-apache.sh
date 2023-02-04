#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp
weg
cd linux-site-dio-main
cp -R * /var/www/html
