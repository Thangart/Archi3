#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

sudo pacman -S --needed --noconfirm xdg-user-dirs

# if there is already a folder, delete or else do nothing

echo "The script will install itself in the /tmp/hardcode-fixer folder"
echo "It will run from there"
echo "Upon next boot the tmp folder will be empty again"
echo "#################################################"


[ -d /tmp/hardcode-fixer ] && rm -rf "/tmp/hardcode-fixer" || echo ""


echo "################################################################"
echo "Checking if git and curl are installed"
echo "Install git and curl for an easy installation"


./install-helper.sh "git;curl"

git clone https://github.com/Foggalong/hardcode-fixer /tmp/hardcode-fixer


echo "#################################################"
echo "Checking and changing all hardcoded icons"
echo "#################################################"

sudo /tmp/hardcode-fixer/fix.sh

rm -rf /tmp/hardcode-fixer

echo
echo
echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
