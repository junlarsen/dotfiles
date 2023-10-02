#!/usr/bin/bash

curl 'https://services.gradle.org/distributions/gradle-8.3-bin.zip' --compressed -LO

unzip ./gradle-8.3-bin.zip

# Post-install add gradle executable to path
TARGET="export PATH=\"$(pwd)/gradle-8.3/bin:\$PATH\""
grep -qxF "$TARGET" "$DOTTY_ENV" || echo "$TARGET" >> "$DOTTY_ENV"
