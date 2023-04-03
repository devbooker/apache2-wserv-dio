#!/bin/bash

echo "Updating the server..."
apt-get update -y

echo "Installing features..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Starting apache2 service..."
systemctl start apache2

echo "Downloading and copying application files..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
