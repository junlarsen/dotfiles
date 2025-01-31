#!/usr/bin/env zsh

install_helix() {
  dotfiles_log "Installing Helix Editor"
  sudo apt install wl-clipboard
  git clone https://github.com/junlarsen/helix "$HOME/source/forks/helix"
  pushd "$HOME/source/forks/helix"
  cargo install --path helix-term --locked
  popd
}

install_typescript_lsp() {
  dotfiles_log "Installing TypeScript Language Server"
  pnpm add -g typescript-language-server
}

install_biome_lsp() {
  dotfiles_log "Installing Biome Language Server"
  pnpm add -g @biomejs/biome
}

install_terraform_lsp() {
  curl -L --compressed https://releases.hashicorp.com/terraform-ls/0.36.4/terraform-ls_0.36.4_linux_amd64.zip -O "$TARGET/terraform-lsp/terraform-lsp.zip"
  unzip "$TARGET/terraform-lsp/terraform-lsp.zip" -d "$TARGET/terraform-lsp"
  cp "$TARGET/terraform-lsp/terraform-ls" ~/bin
}

install_helix
install_terraform_lsp
install_biome_lsp
install_typescript_lsp
