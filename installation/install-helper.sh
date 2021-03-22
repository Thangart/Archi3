#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Editer    :   Thangart
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#
# This script creates a reusable install helper that takes a string with ";" seperated strings and installs the 
# given pacakges. example: "zsh;oh-my-zsh;vlc"
#
##################################################################################################################

# Check if install var is empty
if [ -z "$1" ]
then
      echo "installation variable is empty. Exiting"
      exit 1
fi


IFS=';' read -r -a install_array <<< "$1"


for package in "${install_array[@]}"
do
    echo "##################################################################################################################"
    echo "#"
    echo "# Trying to installing $package"
    echo "#"
    echo "##################################################################################################################"
    echo ""
    echo ""

    #checking if application is already installed or else install with aur helpers
    if pacman -Qi $package &> /dev/null; then

        echo "################################################################"
        echo "################## "$package" is already installed"
        echo "################################################################"
        echo ""

    else

        #checking if yay is installed
        if pacman -Qi yay &> /dev/null; then

            echo "Installing with yay"
            yay -S --noconfirm $package  	
        fi

        # Just checking if installation was successful
        if pacman -Qi $package &> /dev/null; then
        
            echo "################################################################"
            echo "#########  "$package" has been installed"
            echo "################################################################"
            echo ""

        else

            echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
            echo "!!!!!!!!!  "$package" has NOT been installed"
            echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
            echo ""

    fi

fi
done