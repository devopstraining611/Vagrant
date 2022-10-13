Hello All!

This repository contains the practice files related to Vagrant tool.
I learned to automatically provision on premise VMs using Vagrant tool.

First I provisioned two VMs for CentOS7 and Ubuntu 20.04 each.
Here, I had just learned to provision VMs using the image from Vagrant Hub and then added network configuration.
Then, I had changed the RAM and CPUs for them. I had also learned that dynamically we can change the configuration 
of the VM in the Vagrantfile, which will take effect once we reload the VM.

Then, I provisioned a CentOS7 VM to host a static website running on Apache Httpd web-server.
Here, I learned to provision the VM and then connect it using SSH. After connecting, I installed Apache Httpd Web-server, 
wget and unzip tools. Then, downloaded the website template file using wget and extracted the files suing unzip tool.
Then downloaded the website template using wget tool and extracted its files using unzip tool. After that copied the files 
to "/var/www/html/" directory. Next, restarted the Apache Httpd web-server. Now to access the website, in the host machine's 
browser enter the static or dynamic ip address of the VM.
Hurray! The static website is up and accessible to all machine in the current network using the dynamic IP address.

Similarly, I provisioned an Ubuntu20.04 VM to host wordpress website using LAMP stack. For this, I installed PHP, MySQL-Server 
and Apache2 web-server. I had followed the steps mentioned on Ubuntus website's tutorial for "How to install and configure 
Wordpress on Ubuntu". Then created a blogpost on it.
