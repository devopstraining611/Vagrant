#!/bin/bash
#Switch to root user
sudo su

#Update and install Apache2 web-server
apt-get update -y
apt-get install apache2 -y

#start and enable Apache web-server
service apache2 start
service apache2 enable

#copy the index.html file from sync directory to /var/www/html/ directory
cp /tmp/index_web02.html /var/www/html/index.html

#reload Apache web-server
service apache2 restart
