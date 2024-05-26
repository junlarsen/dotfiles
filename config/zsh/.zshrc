# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="half-life"
ZSH_THEME_RANDOM_CANDIDATES=()


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="%d-%m-%Y"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export PATH="$HOME/dotty/tools:$PATH"

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

alias c="cargo"

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

eval "$(zoxide init zsh)"

export JAVA_HOME="/home/jun/.jdks/openjdk-21.0.1"
export PATH="/home/jun/.jdks/openjdk-21.0.1/bin:$PATH"

export PATH="/home/jun/.local/bin:$PATH"

# Dotty PATH exports. Always keep this at the bottom of the file
export PATH="/home/jun/dotty/packages/jetbrains-toolbox/jetbrains-toolbox-1.27.3.14493:$PATH"
export PATH="/home/jun/dotty/packages/gradle/gradle-8.3/bin:$PATH"
export PATH="/home/jun/dotty/packages/anki/anki-2.1.65-linux-qt6:$PATH"
export PATH="/usr/local/go/bin:$PATH"
