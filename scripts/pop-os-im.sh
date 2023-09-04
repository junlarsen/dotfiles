#!/usr/bin/bash

sudo apt-get install fcitx5 fcitx5-mozc fcitx5-material-color

sudo cat << EOF | sudo tee /etc/profile.d/pop-im-ibus.sh
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
EOF
