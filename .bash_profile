#!/usr/bin/env bash

# Sensible bash
# shellcheck disable=SC1090
source "$HOME/sensible.bash"

# Enable bash completion
# shellcheck disable=SC1091
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Add ~/bin to path
PATH="$HOME/bin:$PATH"

# Add workspace to CDPATH
CDPATH=".:$HOME/workspace"

# Enable direnv
eval "$(direnv hook bash)"

# Enable rbenv
eval "$(rbenv init -)"

# Go
GOBIN="$(go env GOPATH)/bin"
export PATH="$PATH:$GOBIN"

# Aliases
alias ll='ls -alGh'

# Setup
# https://www.atlassian.com/git/tutorials/dotfiles
alias setup-git='git --git-dir="$HOME/.setup/" --work-tree="$HOME"'
alias s='setup-git'

# Prompt
export PS1='\[\033[93;1m\]\w\[\033[0m\] '
