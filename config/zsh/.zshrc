#!/usr/bin/env zsh

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

setopt histignorealldups sharehistory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

for file in $HOME/.config/zsh-addons/*.zsh; do
    source "$file"
done

export EDITOR="nvim"
export VISUAL="nvim"

alias bye="exit"
alias rrr="source $HOME/.zshrc"
alias nvd="nvim ."

alias gs="gss"
alias tf="terraform"
alias tg="terragrunt"
alias dr="doppler run"
alias drtf="doppler run -- terraform"
alias drtg="doppler run -- terragrunt"

alias gdp="git diff --patch"

alias yarn="corepack yarn"
alias yarnpkg="corepack yarnpkg"
alias pnpm="corepack pnpm"
alias pnpx="corepack pnpx"
alias npm="corepack npm"
alias npx="corepack npx"

alias c="cargo"
alias cx="cargo xtask"
alias cir="cargo insta review"
alias p="pnpm"

alias murder="pkill -9"

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

alias laptopscrollfix="xinput --set-prop 10 331 1"
alias today="date '+%Y-%m-%d'"

alias nv="nvim"
