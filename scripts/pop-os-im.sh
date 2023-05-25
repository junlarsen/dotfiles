#!/usr/bin/bash

sudo apt-get install fcitx fcitx-mozc

sudo cat << EOF | sudo tee /etc/profile.d/pop-im-ibus.sh
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
EOF
