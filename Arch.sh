#!/bin/bash
# [Quick LAMP install Server Script] (for Arch users)
#Contributor : ritik-malik

# updating the systen
echo -e \nPacman in Action\n
sudo pacman -Syu

# installing apache
sudo pacman -S apache -y
systemctl enable httpd
systemctl restart httpd

# install Mysql server
echo -e "\nInstalling Mysql server...\n"
sudo pacman -S mariadb -y
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
systemctl start mariadb
systemctl enable mariadb

# install php
sudo pacman -S php php-apache -y
systemctl restart httpd

echo -e "\n\nLemp stack installed successfully :)\n"


