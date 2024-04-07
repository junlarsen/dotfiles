#!/usr/bin/bash

curl -L "https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/obsidian_1.5.12_amd64.deb" --compressed -o obsidian.deb
sudo dpkg -i './obsidian.deb'
