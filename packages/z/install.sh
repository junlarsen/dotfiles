#!/usr/bin/bash

curl -L --compressed "https://github.com/gsamokovarov/jump/releases/download/v0.51.0/jump_0.51.0_amd64.deb" -o jump.deb

sudo dpkg -i jump.deb