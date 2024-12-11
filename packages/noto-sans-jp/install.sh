#!/usr/bin/env bash

curl -L https://fonts.gstatic.com/s/notosansjp/v53/-F6jfjtqLzI2JPCgQBnw7HFyzSD-AsregP8VFBEj75vY0rw-oME.ttf -o noto-sans-jp.ttf

mkdir -p ~/.local/share/fonts

find . -name "*.ttf" -exec cp {} ~/.local/share/fonts \;
fc-cache -f -v
