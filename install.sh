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
    sudo get-apt install nodejs
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
# Requirements                                                                 #
################################################################################
PreInstall()
{
    sudo apt update && sudo apt upgrade
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