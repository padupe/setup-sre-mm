#!/bin/bash

################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Install Postman, DBeaver, Node.js, Python3.8 an Discord and set it to your system."
   echo
   echo "Usage: ./install.sh [-h]"
   echo "options:"
   echo "h     Print this Help."
   echo
}
################################################################################
# Postman                                                                      #
################################################################################
Postman()
{
    sudo apt-get update
    sudo snap install postman
}
################################################################################
# DBeaver                                                                      #
################################################################################
DBeaver()
{
    sudo apt-get update
    sudo sh -c 'wget -c https://dbeaver.io/files/6.0.0/dbeaver-ce_6.0.0_amd64.deb'
    sudo dpkg -i dbeaver-ce_6.0.0_amd64.deb
    sudo apt-get install -f
}
################################################################################
# Nodejs                                                                       #
################################################################################
Nodejs()
{
    sudo apt-get update
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
    source ~/.profile 
    nvm install node
}
################################################################################
# Python                                                                       #
################################################################################
Python()
{
    sudo apt-get update
    sudo apt install software-properties-common
    sudo apt install python3.8
}
################################################################################
# Discord                                                                      #
################################################################################
Discord()
{
    sudo apt-get update
    sudo apt install gdebi-core wget
    sudo sh -c 'wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"'
    sudo gdebi ~/discord.deb
}
################################################################################
# Deck                                                                         #
################################################################################
Deck()
{
    sudo apt-get update
    curl -sL https://github.com/kong/deck/releases/download/v1.12.1/deck_1.12.1_linux_amd64.tar.gz -o deck.tar.gz
    tar -xf deck.tar.gz -C /tmp
    sudo cp /tmp/deck /usr/local/bin/

}
Docker()
{
    # Phase 1
    sudo ap-get update
    sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

    # Phase 2
    sudo apt-get update
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
    
    # to run Docker without the need for 'sudo'
    sudo groupadd docker
    sudo gpasswd -a $USER docker
}
################################################################################
# Requirements                                                                 #
################################################################################
PreInstall()
{
    sudo apt update && sudo apt upgrade
    sudo apt install curl
}
################################################################################
# Process the input options. Add options as needed.                            #
################################################################################
# Get the options
while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
     \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done
################################################################################
# Program                                                                      #
################################################################################
PreInstall
Postman
DBeaver
Nodejs
Python
Discord
Deck
Docker