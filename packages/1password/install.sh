#!/usr/bin/bash

curl -L "https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb" --compressed -o op.deb
sudo dpkg -i './op.deb'
