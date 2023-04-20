#!/usr/bin/bash

curl -L --compressed "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -o chrome.deb

sudo dpkg -i './chrome.deb'