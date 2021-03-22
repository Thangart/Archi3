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


########################################
########        C O N K Y      #########
########################################



# if there is already a folder in tmp, delete or else do nothing
[ -d /tmp/aureola ] && rm -rf "/tmp/aureola" || echo ""
# download the github in folder /tmp/aureola

echo "################################################################"
echo "Checking if git is installed"
echo "Install git for an easy installation"


./install-helper.sh "git"


echo "################################################################"
echo "Downloading the files from github to tmp directory"

rm -rf /tmp/aureola

git clone https://github.com/erikdubois/Aureola /tmp/aureola

# if there is already a folder in tmp, delete or else do nothing
[ -d ~/.aureola ] && rm -rf ~/.aureola 
mv -f /tmp/aureola ~/.aureola

rm -rf /tmp/aureola

echo "################################################################"
echo "###################    aureola installed  ######################"
echo "################################################################"
