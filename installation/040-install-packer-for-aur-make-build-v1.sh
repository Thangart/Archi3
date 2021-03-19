#!/bin/bash
set -e
#======================================================================================
# 
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

sudo pacman -S wget --needed --noconfirm

########################################
########    P A C K E R         ########
########################################


# source : http://www.ostechnix.com/install-packer-arch-linux-2/

# straight from aur and github


# checking you have everything you need
# normally not needed
# sudo pacman -S base-devel fakeroot jshon expac git wget --noconfirm

#dependencies for packer



package="packer"
command="packer"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	# packer is now in comunity repos
	sudo pacman -S --noconfirm --needed $package

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi
