export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cloud"
ZSH_THEME_RANDOM_CANDIDATES=()

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 13

# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="%d-%m-%Y"
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

# User configuration

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export PATH="$HOME/dotfiles/tools:$PATH"

# Helix Editor - this one is built from source
export EDITOR=hx
export HELIX_RUNTIME="$HOME/source/forks/helix/runtime"

alias bye="exit"
alias rrr="source $HOME/.zshrc"
alias hxzsh="hx $HOME/.zshrc"
alias hxd="hx ."

alias tf="terraform"
alias dr="doppler run"
alias drtf="doppler run terraform"

alias gdp="git diff --patch"

alias loc="cloc . --exclude-dir=.next,.open-next,node_modules,migrations,.turbo,build,dist,out,.terraform,pnpm-lock.yaml,target,.idea"

alias docker-compose="docker compose"

alias c="cargo"
alias cx="cargo xtask"
alias cir="cargo insta review"
alias p="pnpm"

function lde {
  if [ $# -eq 0 ]; then
    echo "Loading from ./.env"
    export $(cat .env | xargs)
    return
  fi
  echo "Loading from $1"
  export $(cat $1 | xargs)
}
compdef _cat lde

function awsuser {
  if [ $# -eq 0 ]; then
    echo "Usage: awsuser <profile>"
    exit 1
  fi
  echo "Setting AWS_PROFILE=$1"
  export AWS_PROFILE="$1"
}

export PATH="/home/jun/bin:$PATH"
export PATH="/usr/lib/llvm-18/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/jun/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$HOME/.tfenv/bin:$PATH"

export PATH="/home/jun/.local/bin:$PATH"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(just --completions zsh)"

# Device specific settings
alias laptopscrollfix="xinput --set-prop 10 331 1"

alias today="date '+%Y-%m-%d'"

# Dotty PATH exports. Always keep this at the bottom of the file
export PATH="/home/jun/dotfiles/packages/jetbrains-toolbox/jetbrains-toolbox-1.27.3.14493:$PATH"
