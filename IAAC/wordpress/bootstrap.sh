#!/bin/bash
#Switch to "root" user
sudo -i

#Update and install dependencies packages
apt update
apt install apache2 ghostscript libapache2-mod-php mysql-server php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip -y

#Create new deirectory and install Wordpress in it
mkdir -p /srv/www
chown www-data: /srv/www
curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www

#Configure Apache web-server for Wordpress
cp /vagrant/wordpress.conf /etc/apache2/sites-available/wordpress.conf

#Enable the Wordpress site and enable URL rewriting
a2ensite wordpress
a2enmod rewrite

#Disable the default “It Works” site
a2dissite 000-default

#Reload Apache Web-Server
service apache2 reload

#Configure Database
mysql -u root -e 'CREATE DATABASE wordpress;'
mysql -u root -e 'CREATE USER wordpress@localhost IDENTIFIED BY "admin123";'
mysql -u root -e 'GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON wordpress.* TO wordpress@localhost;'
mysql -u root -e 'FLUSH PRIVILEGES;'

#Configure Wordpress to connect with the database
sudo -u www-data cp /vagrant/wp-config.php /srv/www/wordpress/wp-config.php

#Restart MySQL-Server
service mysql restart

#Now open http://localhost/ or http://private-ip/ (private-ip specified in Vagrantfile and proceed to configure wordpress