#!/usr/bin/env zsh

# Discovery of executables at different $PATHs
# ~/bin
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Terraform Version Manager
export PATH="$HOME/source/forks/tfenv/bin/:$PATH"

# JetBrains Toolbox
export PATH="$HOME/dotfiles/target/toolbox/jetbrains-toolbox-1.27.3.14493:$PATH"

# LLVM 18 Tools should be default
export PATH="/usr/lib/llvm-18/bin:$PATH"