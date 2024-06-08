#!/usr/bin/env bash

curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip -o jetbrains-mono.zip
unzip jetbrains-mono.zip

mkdir -p ~/.local/share/fonts

find . -name "*.ttf" -exec cp {} ~/.local/share/fonts \;
fc-cache -f -v
