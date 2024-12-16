#!/usr/bin/env bash

curl -L --compressed -o candy-icons.zip https://github.com/EliverLara/candy-icons/archive/refs/heads/master.zip
unzip candy-icons.zip
rm candy-icons.zip
cp -r candy-icons-master ~/.local/share/icons/candy-icons

gsettings set org.gnome.desktop.interface icon-theme 'candy-icons'
