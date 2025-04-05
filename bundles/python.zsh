#!/usr/bin/env zsh

install_poetry() {
  dotfiles_log "Installing Poetry 2"
  curl -sSL https://install.python-poetry.org | python3 -
}

dotfiles_install() {
  if [[ $# -eq 0 ]]; then
    dotfiles_log "Zero packages were requested. Exiting..."
    exit 1
  fi

  for p in "$@"
  do
    case $p in
      "poetry") install_poetry ;;
      *) dotfiles_log "Requested unknown package $p..." ;;
    esac
  done
}
