#!/bin/bash
echo "Lets install the relevant packages"
yum install httpd wget unzip -y
echo "Packages installed successfully!"

echo "Start httpd service and enable it to start at system restart"
systemctl start httpd
systemctl enable httpd
echo "Service started and enabled"

echo "Change to tmp directory"
cd /tmp/

echo "Download the website template"
wget https://www.tooplate.com/zip-templates/2128_tween_agency.zip

echo "Unzip all files of template".
unzip -o 2128_tween_agency.zip

echo "Change to template directory"
cd 2128_tween_agency/

echo "Copy all the files to /var/www/html directory"
cp -rf * /var/www/html

echo "Restart httpd service"
systemctl restart httpd

echo "All setup done. Access the website using the public or static ip address"