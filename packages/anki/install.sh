#!/usr/bin/bash

sudo apt-get install -y libxcb-cursor0

ANKI_VERSION="24.06.3"

curl -L "https://github.com/ankitects/anki/releases/download/${ANKI_VERSION}/anki-${ANKI_VERSION}-linux-qt6.tar.zst" --compressed -o anki.zst
unzstd anki.zst -o anki.tar
tar -xvf anki.tar

sudo sh "$(pwd)/anki-${ANKI_VERSION}-linux-qt6/install.sh"

TARGET="export PATH=\"$(pwd)/anki-$ANKI_VERSION-linux-qt6:\$PATH\""
grep -qxF "$TARGET" "$DOTTY_ENV" || echo "$TARGET" >> "$DOTTY_ENV"

ln -s "$(pwd)/anki-${ANKI_VERSION}-linux-qt6/anki.desktop" "$HOME/.local/share/applications/anki.desktop"
