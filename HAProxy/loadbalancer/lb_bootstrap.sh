#!/bin/bash
#Switch user
sudo su

#take backup of hosts file
cp /etc/hosts /etc/hosts_backup.bkp

#copy hosts file from sync directory to /etc/ directory
cp hosts /etc/hosts

#update and install HAProxy load balancer
apt-get update -y
apt-get install haproxy -y

#start and enable HAProxy
service haproxy start
service haproxy enable

#copy haproxy.cfg file from sync directory to /etc/haproxy/ directory
cp /tmp/haproxy.cfg /etc/haproxy/haproxy.cfg

#restart HAProxy
service haproxy restart
