#!/usr/bin/bash

sudo apt-get install libfuse2

curl 'https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.27.3.14493.tar.gz' --compressed -LO
tar -xvf './jetbrains-toolbox-1.27.3.14493.tar.gz'

# Post-install add jetbrains-toolbox executable to path
TARGET="export PATH=\"$(pwd)/jetbrains-toolbox-1.27.3.14493:\$PATH\""
grep -qxF "$TARGET" "$DOTTY_ENV" || echo "$TARGET" >> "$DOTTY_ENV"