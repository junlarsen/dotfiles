#!/usr/bin/bash

# Resize desktop icon size
gsettings set org.gnome.nautilus.icon-view default-zoom-level small

# Modify dock icon size because the defaults are too large
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 24
gsettings set org.gnome.shell.extensions.dash-to-dock background-color "#dae8ed"
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

# Add keybindings to minimize current window with Super + H
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>H']"

# Add keybindings to open the terminal with Ctrl + Alt + T
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>T', '<Ctrl><Alt>T']"

# Add keybindings to switch between dock applications with Super + 1..9
gsettings set org.gnome.shell.keybindings switch-to-application-1 "['<Super>1']"
gsettings set org.gnome.shell.keybindings switch-to-application-2 "['<Super>2']"
gsettings set org.gnome.shell.keybindings switch-to-application-3 "['<Super>3']"
gsettings set org.gnome.shell.keybindings switch-to-application-4 "['<Super>4']"
gsettings set org.gnome.shell.keybindings switch-to-application-5 "['<Super>5']"
gsettings set org.gnome.shell.keybindings switch-to-application-6 "['<Super>6']"
gsettings set org.gnome.shell.keybindings switch-to-application-7 "['<Super>7']"
gsettings set org.gnome.shell.keybindings switch-to-application-8 "['<Super>8']"
gsettings set org.gnome.shell.keybindings switch-to-application-9 "['<Super>9']"

# Color theme
gsettings set org.gnome.shell.extensions.pop-shell hint-color-rgba "rgba(199, 227, 237, 1)"
gsettings set org.gnome.shell.extensions.pop-shell active-hint-border-radius 12

# Include weekday in calendar
gsettings set org.gnome.desktop.calendar show-weekdate true

# Set kitty as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec kitty
