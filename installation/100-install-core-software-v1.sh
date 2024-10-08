#!/bin/bash
set -e
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

#software from 'normal' repositories
sudo pacman -S --noconfirm --needed wget vim
sudo pacman -S --noconfirm --needed archey3 baobab bleachbit clementine conky curl
sudo pacman -S --noconfirm --needed darktable dconf-editor
sudo pacman -S --noconfirm --needed dmidecode 
sudo pacman -S --noconfirm --needed evince evolution filezilla chromium
sudo pacman -S --noconfirm --needed galculator gimp git glances gnome-disk-utility 
sudo pacman -S --noconfirm --needed gnome-font-viewer gnome-screenshot gnome-system-monitor gnome-terminal gnome-tweak-tool 
sudo pacman -S --noconfirm --needed gparted gpick grsync
sudo pacman -S --noconfirm --needed hardinfo hddtemp htop 
sudo pacman -S --noconfirm --needed lm_sensors lsb-release meld mlocate mpv
sudo pacman -S --noconfirm --needed nemo net-tools numlockx polkit-gnome 
sudo pacman -S --noconfirm --needed redshift ristretto screenfetch
sudo pacman -S --noconfirm --needed simplescreenrecorder 
sudo pacman -S --noconfirm --needed terminator transmission-cli transmission-gtk
sudo pacman -S --noconfirm --needed variety vlc vnstat wget unclutter  
sudo pacman -S --noconfirm --needed man-db
sudo pacman -S --noconfirm --needed bluez bluez-utils blueman

# Install gksu trough aur
./install-helper.sh "gksu"

sudo systemctl enable vnstat
sudo systemctl start vnstat

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################


echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"

