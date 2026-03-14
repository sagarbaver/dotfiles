# Author: Sagar Baver (https://github.com/sagarbaver).
# Z-shell configuration using oh-my-zsh framework.
#
# Enterprise/machine-specific overrides go in ~/.zshrc.local (not committed).

# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# History
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_BEEP

COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Environment
export LANG=en_US.UTF-8
export EDITOR='vim'
export PATH="$HOME/.local/bin:$PATH"

# AWS
export AWS_SDK_LOAD_CONFIG=true

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Claude Code wrapper: `claude @session-name` sets CLAUDE_SESSION_NAME for status line
claude() {
  local session_name=""
  local args=()
  for arg in "$@"; do
    if [[ "$arg" == @* ]]; then
      session_name="${arg#@}"
    else
      args+=("$arg")
    fi
  done
  if [[ -n "$session_name" ]]; then
    CLAUDE_SESSION_NAME="$session_name" command claude "${args[@]}"
  else
    command claude "$@"
  fi
}

# Source machine-specific overrides (not committed)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
