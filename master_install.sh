#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install icecast2 salt-master

sudo cp ./index.html /var/www/

echo "Set GatewayPorts yes in /etc/ssh/sshd_config"
echo "Run icecast using icecast.xml"
