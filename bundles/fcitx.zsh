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

dotfiles_install() {
  if [[ $# -eq 0 ]]; then
    dotfiles_log "Zero packages were requested. Exiting..."
    exit 1
  fi

  for p in "$@"
  do
    case $p in
      "fcitx5") install_fcitx5;;
      *) dotfiles_log "Requested unknown package $p..." ;;
    esac
  done
}
