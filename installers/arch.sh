#!/bin/bash

echo -e "Starting Arch installer Script..."

#updating packages
echo -e "Updating package lists.."
sudo pacman -Sy --noconfirm

#install Ngnix
echo -e "Installing Ngnix server..."
sudo pacman -S nginx --noconfirm

#install Mysql server
echo -e "Installing Mysql server..."
sudo pacman -S mariadb --noconfirm
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

#install Mysql server
echo -e "Installing PHP-FPM and Mysql extension for PHP..."
sudo pacman -S php-fpm --noconfirm
