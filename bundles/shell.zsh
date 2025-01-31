#!/usr/bin/env zsh

install_starship() {
  dotfiles_log "Installing Starship"
  curl -sS https://starship.rs/install.sh | sh
}

install_zoxide() {
  dotfiles_log "Installing Zoxide"
  curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
}

install_omz() {
  dotfiles_log "Installing Oh My Zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_jetbrains_mono_nerdfont() {
  dotfiles_log "Installing JetBrains Mono Nerdfont"

  mkdir -p "$TARGET/jetbrains-mono"
  mkdir -p ~/.local/share/fonts

  curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip -o "$TARGET/jetbrains-mono/jetbrains-mono.zip"
  unzip "$TARGET/jetbrains-mono/jetbrains-mono.zip" -d "$TARGET/jetbrains-mono"

  find "$TARGET/jetbrains-mono" -name "*.ttf" -exec cp {} ~/.local/share/fonts \;
  fc-cache -f -v
}

install_git() {
  dotfiles_log "Installing newer git"
  sudo add-apt-repository ppa:git-core/ppa
  sudo apt update
  sudo apt install git
}

install_gnupg() {
  dotfiles_log "Installing GnuPG"
  sudo apt install gnupg2
}

install_zsh_syntax() {
  dotfiles_log "Installing zsh syntax highlighting"
  sudo apt install zsh-syntax-highlighting
}

install_starship
install_zoxide
install_omz
install_jetbrains_mono_nerdfont
install_git
install_gnupg
