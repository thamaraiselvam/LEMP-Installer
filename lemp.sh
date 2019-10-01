#!/bin/bash
#
# [Quick LEMP Stack Installer Script]
#
# GitHub:   https://github.com/Thamaraiselvam/quick-lemp-install
# Author:   Thamaraiselvam
# URL:      https://thamaraiselvam.dev
#

init() {

    echo -e "Finding Operating System Type..."

    if [[ "$OSTYPE" == "linux-gnu" ]]; then
        echo -e "Operating System : Linux GNU"
        findLinuxDistributionAndInstall
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        #Write script
        echo "Script not supported in this operating system"
        exit 1
    else
        echo "Script not supported in this operating system"
        exit 1
    fi


}

findLinuxDistributionAndInstall() {
    echo -e "Finding Type of Distribution..."

    currentDir=$(pwd)

    if grep -q 'debian' /etc/os-release; then
        echo -e "Distribution: Debian"
        $(sudo chmod +x $(pwd)/installers/debian.sh)
        $(echo  "${currentDir}/installers/debian.sh")
    elif grep -q 'arch' /etc/os-release; then
        echo -e "Distribution: Arch"
        $(echo  "${currentDir}/installers/arch.sh")
    else
        echo -e "Script not supported in this Linux GNU Distribution" #Error
    fi

    SetPHPVersionInNginxConfig
    moveConfigurationFile
}

SetPHPVersionInNginxConfig() {
    $(phpVersion=$(php -v | tac | tail -n 1 | cut -d " " -f 2 | cut -c 1-3) && currentVersion="currentversion" && sed -i $(pwd)/default -e "s/${currentVersion}/${phpVersion}/g" $(pwd)/default)
}

moveConfigurationFile() {
    #Move nginx conf file to enable php support on ngnix
    echo -e "Moving Nginx configuration file..."
    sudo mv default /etc/nginx/sites-available/

    #Move php testing file
    echo -e "Moving php testing file..."
    sudo mv info.php /var/www/html/

    echo -e "Lemp stack installed successfully :)"
    echo -e "Open following link to check installed PHP configuration your_ip/info.php"
}

init
