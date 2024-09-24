#!/usr/bin/env bash

curl -sSL https://github.com/terraform-docs/terraform-docs/releases/download/v0.19.0/terraform-docs-v0.19.0-linux-amd64.tar.gz
tar -xzf terraform-docs-v0.19.0-linux-amd64.tar.gz
chmod +x terraform-docs

mv terraform-docs ~/bin
