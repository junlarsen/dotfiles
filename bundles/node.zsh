#!/usr/bin/env zsh

install_nvm() {
  dotfiles_log "Installing Node Version Manager"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
}

dotfiles_install() {
  if [[ $# -eq 0 ]]; then
    dotfiles_log "Zero packages were requested. Exiting..."
    exit 1
  fi

  for p in "$@"
  do
    case $p in
      "nvm") install_nvm ;;
      *) dotfiles_log "Requested unknown package $p..." ;;
    esac
  done
}
