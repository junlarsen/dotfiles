# Dotfiles

These are my dotfiles and most of my userspace software setup, likely to be 
more useful to me than to you :)

## Setup

This repository requires some default things installed on your machine 
before you begin setup. Please install them otherwise you'll probably run 
into a lot of crap. The shell scripts are kind of hacky and will probably 
break without the proper dependencies.

- Bash, any version should probably work
- Zsh as your user shell
- Git, grab something newer than what's on 22.04's default
- Stow, take a recent one to be safe

## Installing

To link the dotfiles to your target directory, simply use Stow as usual. 
Note that for dotty to keep track of where its installation is, please run 
the bootstrap.sh script in the same directory as you cloned this repository in.

```sh
# Let's install zsh dotfiles with dotty installation in ~/dotty
stow zsh -Rvt ~ -d dotty
```

To extract and install any of the packages, use the install script. This 
will execute the install.sh script for the corresponding package.

```sh
./install.sh discord
```