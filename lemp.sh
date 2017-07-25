#!/bin/bash
#
# [Install LEMP Server Script]
#
# GitHub:   https://github.com/Thamaraiselvam/Install-LEMP-On-Ubuntu
# Author:   Thamaraiselvam
# URL:      https://thamaraiselvam.com
#


#updating packages
echo "Updating package lists..."
sudo apt-get -y update

#install Ngnix
echo "Installing Ngnix server..."
sudo apt-get -y install nginx


#install Mysql server
echo "Installing Mysql server..."
#default password is root
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server

#install Mysql server
echo "Installing PHP-FPM and Mysql extension for PHP..."
sudo apt-get -y install php-fpm php-mysql

#Move nginx conf file to enable php support on ngnix
echo "Moving Nginx configuration file..."
sudo mv default /etc/nginx/sites-available

#Move php testing file
echo "Moving php testing file..."
sudo mv info /var/www/html/

echo "Lemp stack installed successfully :)"

echo "If you are on a interwork"
#get system public IP
myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "Visit this link on your browser to check PHP configuration ${myip}/info.php"

echo "If you are on local machine"
echo "Visit this link on your browser to check PHP configuration localhost/info.php"
