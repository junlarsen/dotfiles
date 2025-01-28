#!/usr/bin/env bash

curl -LO https://releases.hashicorp.com/terraform-ls/0.36.4/terraform-ls_0.36.4_linux_amd64.zip
unzip ./terraform-ls_0.36.4_linux_amd64.zip
cp ./terraform-ls ~/bin
