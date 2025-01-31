#!/usr/bin/env zsh

install_nvm() {
  dotfiles_log "Installing Node Version Manager"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
}

install_nvm
