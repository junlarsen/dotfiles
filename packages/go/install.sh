#!/usr/bin/env bash

curl -Lo go1.22.0.linux-amd64.tar.gz https://golang.org/dl/go1.22.0.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz

# Post-install add go bin executables to path
TARGET="export PATH=\"/usr/local/go/bin:\$PATH\""
grep -qxF "$TARGET" "$DOTTY_ENV" || echo "$TARGET" >> "$DOTTY_ENV"
