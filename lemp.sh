#!/bin/bash
#
# [Quick LEMP install Server Script]
#
# GitHub:   https://github.com/Thamaraiselvam/quick-lemp-install
# Author:   Thamaraiselvam
# URL:      https://thamaraiselvam.com
#


#updating packages
echo -e "\nUpdating package lists..\n"
sudo apt-get -y update

#install Ngnix
echo -e "\nInstalling Ngnix server...\n"
sudo apt-get -y install nginx


#install Mysql server
echo -e "\nInstalling Mysql server...\n"
#default password is root
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server

#install Mysql server
echo -e "\nInstalling PHP-FPM and Mysql extension for PHP...\n"
sudo apt-get -y install php7.0-fpm php-mysql

#Move nginx conf file to enable php support on ngnix
echo -e "\nMoving Nginx configuration file...\n"
sudo mv default /etc/nginx/sites-available

#Move php testing file
echo -e "\nMoving php testing file...\n"
sudo mv info.php /var/www/html/

sudo systemctl restart nginx.service

echo -e "\n\nLemp stack installed successfully :)\n"

echo -e "\n Open following link to check installed PHP configuration your_ip/info.php"
