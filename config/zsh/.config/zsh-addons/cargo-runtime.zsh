#!/usr/bin/env zsh

export PATH="$PATH:$HOME/.cargo/bin"
if [ -f $HOME/.cargo/env ]; then
  source $HOME/.cargo/env
fi
