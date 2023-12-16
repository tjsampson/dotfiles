# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="geoffgarside"
export TERM="xterm-256color"
export GPG_TTY=$(tty)

autoload -U +X compinit && compinit
source <(kubectl completion zsh)

plugins=(git docker golang vi-mode fzf)
source $ZSH/oh-my-zsh.sh

if [ -f "$HOME/.zsh_aliases" ]; then source "$HOME/.zsh_aliases"; fi
if [ -f "$HOME/.zsh_functions" ]; then source "$HOME/.zsh_functions"; fi
if [ -f "$HOME/.zsh_secrets" ]; then source "$HOME/.zsh_secrets"; fi

export PATH="/usr/local/sbin:$PATH"
export PATH="/Applications/GoLand.app/Contents/MacOS:/usr/local/opt/libpq/bin:$PATH"
