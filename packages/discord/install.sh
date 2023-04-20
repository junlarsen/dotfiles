#!/usr/bin/bash

curl -L "https://discord.com/api/download?platform=linux&format=deb" --compressed -o discord.deb
sudo dpkg -i './discord.deb'