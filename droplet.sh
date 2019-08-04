#!/bin/bash 
#git clone https://github.com/hieunm22/droplet.git droplet
#cd droplet
apt-get update
wget https://www.apachefriends.org/xampp-files/7.2.2/xampp-linux-x64-7.2.2-0-installer.run
chmod +x xampp-linux-x64-7.2.2-0-installer.run
./xampp-linux-x64-7.2.2-0-installer.run
#/etc/init.d/apache2 stop
/opt/lampp/lampp start
mv droplet/vendor/ /opt/lampp/
cp composer.* /opt/lampp/
apt install composer
cp httpd-xampp.conf /opt/lampp/etc/extra
/opt/lampp/lampp restart
read -p "go to phpmyadmin and set root password then press enter to continue"
cp config.inc.php /opt/lampp/phpmyadmin/
read -p "Run script to create database then press enter to continue"
cd /opt/lampp/
composer install
cd htdocs/
git clone https://github.com/hieunm22/chatApp.git
mv chatApp/*.* /opt/lampp/htdocs/
mv chatApp/server/ /opt/lampp/htdocs/
mv chatApp/script/ /opt/lampp/htdocs/
mv chatApp/users/ /opt/lampp/htdocs/
mv chatApp/style/ /opt/lampp/htdocs/
mv chatApp/include/ /opt/lampp/htdocs/
mv chatApp/images/ /opt/lampp/htdocs/
mv chatApp/controller/ /opt/lampp/htdocs/
echo deploy completed!
php /opt/lampp/htdocs/server/websocket_server.php

# apt-get install curl
# curl -s https://getcomposer.org/installer | php
# mv composer.phar /usr/local/bin/composer
# composer install
# php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
# php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# php composer-setup.php
# php -r "unlink('composer-setup.php');"
