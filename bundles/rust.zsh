#!/usr/bin/env zsh

install_rustup() {
  dotfiles_log "Installing Rustup"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

install_rustup
