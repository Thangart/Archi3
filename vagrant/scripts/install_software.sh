#!/bin/bash

cd /vagrant_data/installation
./050-install-i3wm-core-v1.sh
./100-install-core-software-v1.sh
./110-install-printers-v1.sh
./120-install-sound-v1.sh
./130-install-network-v1.sh
./200-install-extra-software-v1.sh
./300-install-themes-icons-cursors-conky-v1.sh
./400-install-software-distro-specific-v1.sh
./600-install-personal-settings-folders-v1.sh
./620-install-personal-settings-arc-colora-v1.sh
./630-install-personal-settings-variety-v1.sh
./640-install-personal-settings-root-files-v1.sh
./650-install-personal-settings-gnome-screenshot-v1.sh
./690-install-personal-settings-i3-configuration-v1.sh