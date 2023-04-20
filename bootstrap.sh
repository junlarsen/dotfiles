#!/usr/bin/bash

# Tells dotty where it is installed
pwd > ./dotty/.dotty_installation
stow -Rvt ~ dotty -d "$(pwd)"