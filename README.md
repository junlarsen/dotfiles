# dotfiles

Linux userspace configuration and program installers. Managed with Git and GNU
Stow as the symlink farm manager.

I run Arch with COSMIC DE, but the `dotfiles` linking script is also tested to
work on Debian-based distributions (ubuntu/pop).

> There used to be a `dotfiles get` script, but this has mostly been replaced
> by the AUR for me.

## Setup

These are essential dependencies for the setup to work.

- Zsh, preferably configured as your user shell
- Git, default is fine, we will install a newer one anyways.
- Stow, default is fine.

You can get the base dependencies with this:

```bash
sudo apt install zsh git stow
chsh -s $(which zsh)
# You don't need zsh as user shell to run the scripts.
```

## Usage

The repository assumes that it is cloned into `~/dotfiles`. It will not work
otherwise.

```bash
Usage: dotfiles [OPTIONS] <COMMAND>

Arguments:
  <COMMAND>  The command to use, either 'get', 'link', or 'unlink'

Commands:
  link <config>              Symlink a config directory to /home/jun
  unlink <config>            Unlink a config directory from /home/jun

Options:
  --help                     Print this help text
```

To symlink the Helix config to $HOME, run:

```bash
dotfiles link helix
```

## File structure

The dotfiles are organized into four distinct categories:

- config: the actual dotfiles, split by program which are all merged into ~
- scripts: system-wide scripts that do various things like setting input method
- bundles: installation scripts for various programs such as Anki, Chrome, etc.

## License

MIT, see LICENSE file for more information.
