#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

sudo apt install curl \
rsync \
git \
gdebi \
nautilus-admin \
nautilus-extension-gnome-terminal \
sassc \
preload \
gnome-tweaks \
gnome-shell-extension-manager -y

# Install Gnome extensions
unzip -o ./ubuntu/assets/gnome-extensions.zip -d $HOME/.local/share/gnome-shell/
