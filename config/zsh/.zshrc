#!/usr/bin/env zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cloud"
ZSH_THEME_RANDOM_CANDIDATES=()

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 13

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

export EDITOR="helix"
export VISUAL="helix"

alias today="date '+%Y-%m-%d'"
alias bye="exit"
alias rrr="source $HOME/.zshrc"
alias hx="helix"
alias hxd="helix ."

alias gs="gss"
alias tf="terraform"
alias tg="terragrunt"
alias dr="doppler run"
alias drtf="doppler run -- terraform"

alias gdp="git diff --patch"

alias yarn="corepack yarn"
alias yarnpkg="corepack yarnpkg"
alias pnpm="corepack pnpm"
alias pnpx="corepack pnpx"
alias npm="corepack npm"
alias npx="corepack npx"
alias p="pnpm"
alias y="yarn"
alias n="npm"

alias c="cargo"
alias cx="cargo xtask"

alias murder="pkill -9"
alias wifast="sudo iwconfig wlp2s0 power off"

## ----------------------------------------------------------------------------
## `lde` alias for loading the given environment list file into the current zsh
## session.
## ----------------------------------------------------------------------------

function lde {
  if [ $# -eq 0 ]; then
    echo "Loading from ./.env"
    export $(cat .env | xargs)
    return 0
  fi
  echo "Loading from $1"
  export $(cat $1 | xargs)
}

_lde() {
  local -a env_files
  env_files=(${(f) "$(find . -maxdepth 3 -name '*\.env*' -type f 2>/dev/null | sed 's|^\./||')"})
  _describe 'env files' env_files
}

compdef _lde lde

## ----------------------------------------------------------------------------
## `awsuser` alias for configuring the current AWS_PROFILE for the current zsh
## session.
## ----------------------------------------------------------------------------

function awsuser {
  if [ $# -eq 0 ]; then
    echo "Usage: awsuser <profile>"
    return 1
  fi
  echo "Setting AWS_PROFILE=$1"
  export AWS_PROFILE="$1"
}

function _awsuser() {
  local -a profiles
  profiles=(${(f)"$(awk '/^\[/{gsub(/[\[\]]/, ""); print}' ~/.aws/credentials 2>/dev/null)"})
  _describe 'aws profiles' profiles
}

compdef _awsuser awsuser
