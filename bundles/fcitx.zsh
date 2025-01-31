#!/usr/bin/env zsh

install_fcitx5() {
  dotfiles_log "Installing fcitx5"
  sudo apt install fcitx5 fcitx5-mozc fcitx5-material-color
  
  sudo cat << EOF | sudo tee /etc/profile.d/pop-im-ibus.sh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
EOF
  cp -r /usr/share/applications/org.fcitx.Fcitx5.desktop ~/.config/autostart/fcitx.desktop
}

install_mozc() {
  dotfiles_log "Installing mozc"
  
}

install_fcitx5
