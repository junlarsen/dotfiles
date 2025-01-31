# ~/.dotfiles

Linux userspace configuration and installers. Managed with a combination of
GNU Stow and a concoction of shell scripts.

I run Pop!_OS 22.04, doubt everything works on non-Ubuntu based distros.

## Setup

These things are required to get running. Scripts will probably break if you do
not have all of these installed.

- Bash, any version should probably work
- Zsh as your user shell
- Git, grab something newer than what's on 22.04's default
- Stow, take a recent one to be safe
- gnupg2

```sh
apt install zsh git stow gnupg2
```

## Installing

Bootstrap the installation by running the `bootstrap.sh` script. This will
tell dotty where it should expect to find the config files and installers.

Each program has its own directory in the `config` directory. To link the
config files in `config` to your `$HOME`, use `dotty-link` or if you dare,
stow directly.

```sh
stow zsh -Rvt ~ -d dotty
dotty-link zsh
```

To extract and install any of the packages, use the install script. This 
will execute the install.sh script for the corresponding package.

```sh
./install.zsh discord
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
