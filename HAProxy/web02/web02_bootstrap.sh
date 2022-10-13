#!/bin/bash
#Switch to root user
sudo su

#Update and install Apache2 web-server
apt-get update -y
apt-get install apache2 -y

#start and enable Apache web-server
systemctl start apache2
systemctl enable apache2

#copy the index.html file from sync directory to /var/www/html/ directory
cp /tmp/index_web02222222222222222222222.html /var/www/html/index.html

#reload Apache web-server
systemctl reload apache2
