#!/usr/bin/env zsh

autoload -U +X bashcompinit && bashcompinit

# Completions for various tools
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh)"
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"
command -v just >/dev/null 2>&1 && eval "$(just --completions zsh)"
command -v pnpm >/dev/null 2>&1 && eval "$(pnpm completion zsh)"
command -v hx > /dev/null 2>&1 && source "$HOME/source/forks/helix/contrib/completion/hx.zsh"
command -v wezterm >/dev/null 2>&1 && eval "$(wezterm shell-completion --shell zsh)"
command -v docker >/dev/null 2>&1 && eval "$(docker completion zsh)"
command -v packer >/dev/null 2>&1 && complete -o nospace -C /usr/bin/packer packer
command -v cargo >/dev/null 2>&1 && source "$(rustc --print sysroot)"/share/zsh/site-functions/_cargo

# For nvm you load completions from a bash file.
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
