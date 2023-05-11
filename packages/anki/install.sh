#!/usr/bin/bash

sudo apt-get install -y libxcb-cursor0

curl -L "https://github.com/ankitects/anki/releases/download/2.1.62/anki-2.1.62-linux-qt6.tar.zst" --compressed -o anki.zst
unzstd anki.zst -o anki.tar
tar -xvf anki.tar

sudo sh "$(pwd)/anki-2.1.62-linux-qt6/install.sh"

TARGET="export PATH=\"$(pwd)/anki-2.1.62-linux-qt6:\$PATH\""
grep -qxF "$TARGET" "$DOTTY_ENV" || echo "$TARGET" >> "$DOTTY_ENV"

ln -s "$(pwd)/anki-2.1.62-linux-qt6/anki.desktop" "$HOME/.local/share/applications/anki.desktop"