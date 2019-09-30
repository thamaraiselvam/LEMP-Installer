# Quick LEMP stack Installer srcipt

<a href="https://github.com/thamaraiselvam/LEMP-Installer/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/thamaraiselvam/LEMP-Installer.svg?style=for-the-badge"></a>
<a href="https://github.com/thamaraiselvam/LEMP-Installer/network"><img alt="GitHub forks" src="https://img.shields.io/github/forks/thamaraiselvam/LEMP-Installer.svg?style=for-the-badge"></a>
<a href="https://github.com/thamaraiselvam/LEMP-Installer/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/thamaraiselvam/LEMP-Installer.svg?style=for-the-badge"></a>



<a href="https://www.buymeacoffee.com/R8Nc2vn" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/yellow_img.png" alt="Buy Me A Coffee"></a>


Script to install the lemp stack on debian based distributions.
Tested on : Debian, Ubuntu, Linux mint and Raspbian

Steps:

1. clone this repository
2. `cd quick-lemp-install`
3. `chmod +x lemp.sh` this command makes bash script executable
4. `./lemp.sh`

That's it :)

PHP version - v7.3

Mysql version - Latest Stable

Note: Default mysql password is `root`. you can change it before running in the following lines before running the script

`sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password YOUR_PASSWORD'`

`sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password YOUR_PASSWORD'`
