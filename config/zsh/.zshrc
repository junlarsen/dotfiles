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

export PATH="$HOME/dotty/tools:$PATH"
export PATH="$HOME/dotfiles/tools:$PATH"
export EDITOR=nano

alias bye="exit"
alias rrr="source $HOME/.zshrc"
alias ged="code $HOME/.git-credentials"
alias zshed="code $HOME/.zshrc"

alias tf="terraform"
alias dr="doppler run"
alias drtf="doppler run terraform"

alias gfmt="git diff --name-only -P | xargs npx prettier --write"
alias glint="git diff --name-only -P | xargs npx eslint --fix"
alias godspeed="sudo iwconfig wlp0s20f3 power off"

alias gdp="git diff --patch"

alias loc="cloc . --exclude-dir=.next,.open-next,node_modules,migrations,.turbo,build,dist,out,.terraform,pnpm-lock.yaml,target,.idea"

alias docker-compose="docker compose"

alias c="cargo"
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

# Start peek only with ffmpeg backend
alias peek="peek -b ffmpeg"

export PATH="/home/jun/bin:$PATH"

function s3del() {
  aws s3 rm --recursive s3://$1
  aws s3 rb s3://$1
}

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


export JAVA_HOME="/home/jun/.jdks/openjdk-21.0.1"
export PATH="/home/jun/.jdks/openjdk-21.0.1/bin:$PATH"
export PATH="$HOME/.tfenv/bin:$PATH"

export PATH="/home/jun/.local/bin:$PATH"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(just --completions zsh)"

# Device specific settings
alias laptopscrollfix="xinput --set-prop 10 331 1"

alias today="date '+%Y-%m-%d'"

# Dotty PATH exports. Always keep this at the bottom of the file
export PATH="/home/jun/dotty/packages/jetbrains-toolbox/jetbrains-toolbox-1.27.3.14493:$PATH"
export PATH="/home/jun/dotty/packages/gradle/gradle-8.3/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="/home/jun/dotfiles/packages/jetbrains-toolbox/jetbrains-toolbox-1.27.3.14493:$PATH"
export PATH="/home/jun/dotfiles/packages/anki/anki-24.06.3-linux-qt6:$PATH"
