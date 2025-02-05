#!/usr/bin/env/zsh

install_gimp() {
  dotfiles_log "Installing GIMP"
  sudo apt install -y gimp
}

dotfiles_install() {
  if [[ $# -eq 0 ]]; then
    dotfiles_log "Zero packages were requested. Exiting..."
    exit 1
  fi

  for p in "$@"
  do
    case $p in
      "gimp") install_gimp ;;
      *) dotfiles_log "Requested unknown package $p..." ;;
    esac
  done
}
