#!/usr/bin/env bash

# Install required Helix packages through the AUR
grep -v '^#' helix-packages.txt | yay -S --needed -

# Install language servers not available or not preferred through the AUR
if [ "$1" == "--all" ]; then
  cargo install --locked tinymist typstyle typst-cli
fi
