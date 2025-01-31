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
  dotfiles_log "Installing Terraform Language Server"
  curl -L --compressed https://releases.hashicorp.com/terraform-ls/0.36.4/terraform-ls_0.36.4_linux_amd64.zip -O "$TARGET/terraform-lsp/terraform-lsp.zip"
  unzip "$TARGET/terraform-lsp/terraform-lsp.zip" -d "$TARGET/terraform-lsp"
  cp "$TARGET/terraform-lsp/terraform-ls" ~/bin
}

install_cxx_lsp() {
  dotfiles_log "Installing Clangd"
  sudo apt install clangd-18
}

install_typst_lsp() {
  dotfiles_log "Installing Tinymist (typst) LSP"
  cargo install --git https://github.com/Myriad-Dreamin/tinymist --locked tinymist
}

install_helix
install_terraform_lsp
install_biome_lsp
install_typescript_lsp
install_cxx_lsp
install_typst_lsp
