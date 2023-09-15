#!/usr/bin/bash

curl -L "https://github.com/ferdium/ferdium-app/releases/download/v6.4.1/Ferdium-linux-6.4.1-amd64.deb" --compressed -o ferdium.deb
sudo dpkg -i './ferdium.deb'