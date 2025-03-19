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

# Install GTK Themes
mkdir -p $HOME/.themes

unzip -o ./ubuntu/assets/GTK-Themes.zip -d $HOME/.themes/

ln -sf $HOME/.themes/Orchis-Dark/gtk-4.0/{assets,gtk.css,gtk-dark.css} $HOME/.config/gtk-4.0/

# Install Icon Theme
mkdir -p $HOME/.local/share/icons

unzip -o ./ubuntu/assets/icon-themes.zip -d $HOME/.local/share/icons
