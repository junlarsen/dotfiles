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

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

for file in $HOME/zsh/*.zsh; do
    source "$file"
done

alias bye="exit"
alias rrr="source $HOME/.zshrc"
alias hxzsh="hx $HOME/.zshrc"
alias hxd="hx ."

alias gs="gss"
alias tf="terraform"
alias dr="doppler run"
alias drtf="doppler run terraform --"

alias gdp="git diff --patch"

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

alias laptopscrollfix="xinput --set-prop 10 331 1"
alias today="date '+%Y-%m-%d'"
