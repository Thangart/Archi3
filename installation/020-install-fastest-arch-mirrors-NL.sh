#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : Erik Dubois at http://www.erikdubois.be
# Edited  : Thangart
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

echo "################################################################"
echo "####             Installing reflector                        ###"
echo "################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed reflector pacman-contrib 


echo "######################################################################"
echo "####   finding fastest servers be patient for the Netherlands      ###"
echo "######################################################################"

# finding the fastest archlinux servers in NL (sorry Erik)


sudo reflector --country netherlands --age 12 --protocol https --sort rate --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d


echo "################################################################"
echo "####       fastest servers  saved                            ###"
echo "################################################################"


cat /etc/pacman.d/mirrorlist


sudo pacman -Syu --noconfirm


echo "################################################################"
echo "###############       mirrorlist updated      ###################"
echo "################################################################"

