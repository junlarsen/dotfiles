#!/usr/bin/env zsh

install_rustup() {
  dotfiles_log "Installing Rustup"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

dotfiles_install() {
  if [[ $# -eq 0 ]]; then
    dotfiles_log "Zero packages were requested. Exiting..."
    exit 1
  fi

  for p in "$@"
  do
    case $p in
      "rustup") install_rustup ;;
      *) dotfiles_log "Requested unknown package $p..." ;;
    esac
  done
}
