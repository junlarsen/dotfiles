#!/usr/bin/env zsh

install_cxx_compiler_and_buildtools() {
  dotfiles_log "Installing Clang & CMake"
  sudo apt install ninja-build ccache build-essential cmake
}

install_llvm_dev() {
  dotfiles_log "Installing LLVM 18 and Clang 18"
  sudo apt install clangd-18 llvm-18-dev clang-18 libpolly-18-dev clang-tools-18 lldb-18 clang-format-18
}

install_cxx_compiler_and_buildtools
install_llvm_dev
