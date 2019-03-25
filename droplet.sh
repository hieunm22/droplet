#!/bin/bash 
wget https://www.apachefriends.org/xampp-files/7.2.2/xampp-linux-x64-7.2.2-0-installer.run
chmod +x xampp-linux-x64-7.2.2-0-installer.run
sudo ./xampp-linux-x64-7.2.2-0-installer.run
sudo /etc/init.d/apache2 stop
sudo /opt/lampp/xampp start

sudo apt-get update
sudo apt-get install curl
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer