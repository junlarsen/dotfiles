#!/usr/bin/env bash

curl -L "https://downloads.slack-edge.com/desktop-releases/linux/x64/4.38.125/slack-desktop-4.38.125-amd64.deb" -o slack.deb
sudo dpkg -i slack.deb
