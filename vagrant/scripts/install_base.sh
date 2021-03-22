#!/bin/bash

# virtualbox vagrant install script
cd /vagrant_data/installation
./020-install-fastest-arch-mirrors-NL.sh
./030-install-xorg-virtualbox.sh
./041-install-yay-replace-packer-for-aur-make-build.sh
