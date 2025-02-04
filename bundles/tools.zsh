#!/usr/bin/env zsh

install_misc() {
  dotfiles_log "Installing misc tools"
  sudo apt install \
    neofetch \
    btop

  cargo install --locked ripgrep
  cargo install --locked fd-find
  cargo install --locked bat
  cargo install --locked hyperfine
  cargo install --locked hexyl
  cargo install --locked difftastic
}

install_just() {
  dotfiles_log "Installing just"
  curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to ~/bin
}

dotfiles_install() {
  if [[ $# -eq 0 ]]; then
    dotfiles_log "Zero packages were requested. Exiting..."
    exit 1
  fi

  for p in "$@"
  do
    case $p in
      "misc") install_misc ;;
      "just") install_just;;
      *) dotfiles_log "Requested unknown package $p..." ;;
    esac
  done
}
