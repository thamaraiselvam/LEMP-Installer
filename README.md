# Quick LEMP stack Installer srcipt

Script to install the lemp stack on debian based distributions.
Tested on : Debian, Ubuntu, Linux mint and Raspbian

Steps:

1. clone thsi repository
2. `cd quick-lemp-install`
3. `chmod +x lemp.sh` this command makes bash script executable
4. `./lemp.sh`

That's it :)

PHP version - v7.0

Mysql version - Latest Stable

Note: Default mysql password is `root`. you can change it before running in the following lines before running the script

`sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password YOUR_PASSWORD'`

`sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password YOUR_PASSWORD'`
