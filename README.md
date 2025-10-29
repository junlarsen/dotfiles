# dotfiles

Linux userspace configuration and program installers. Managed with Git and GNU
Stow as the symlink farm manager.

Currently, the dotfiles are configured on an Arch + COSMIC environment.

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

## Setup on MacOS

1. Install Stow, probably through Brew
2. Manually install oh-my-zsh from GitHub
3. Manually install zsh-syntax-highlighting from Brew (brew install zsh-syntax-highlighting)
4. Install zoxide and starship from Brew
5. Download JetBrains Mono Nerd Font from https://www.nerdfonts.com/font-downloads
6. Install Wezterm through Brew cask https://wezterm.org/install/macos.html#installing-on-macos
7. Switch to the MacOS branch in the GitHub repository and link all dependency configs you want.

## Usage

The repository assumes that it is cloned into `~/dotfiles`. It will not work
otherwise.

```bash
Usage: dotfiles [OPTIONS] <COMMAND>

Arguments:
  <COMMAND>  The command to use, either 'link', or 'unlink'

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
- bin: the dotfiles linking script

## License

MIT, see LICENSE file for more information.
