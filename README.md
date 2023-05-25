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
# Or alternatively
dotty-link zsh
```

To extract and install any of the packages, use the install script. This 
will execute the install.sh script for the corresponding package.

```sh
./install.sh discord
# Or alternatively
dotty-install discord
```

## File structure

The dotfiles are organized into four distinct categories:

- config: the actual dotfiles, split by program which are all merged into ~ by
  stow.
- scripts: system-wide scripts that are expected to be ran only once, such as
  configuring gnome keybindings, changing input method framework, etc.
- tools: executable scripts added to path, mostly dotty-specific stuff
- packages: installation scripts for various programs such as Anki, Chrome,
  VSCode, etc that are single-command installable with `dotty-install`.

## License

MIT, see LICENSE file for more information.
