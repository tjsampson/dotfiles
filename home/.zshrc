# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="juanghurtado"
export TERM="xterm-256color"
export GOROOT=/usr/local/go
export GOPATH="$HOME/code/go"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$HOME/.bin"

plugins=(git docker go)
source $ZSH/oh-my-zsh.sh

PS1='
[%*] %{$GREEN_BOLD%}%n@%m%{$WHITE%}:%{$YELLOW%}%~%u$(parse_git_dirty)$(git_prompt_ahead)%{$RESET_COLOR%}
%{$BLUE%}$%{$RESET_COLOR%} '


if [ -f "$HOME/.zsh_aliases" ]; then source "$HOME/.zsh_aliases"; fi
if [ -f "$HOME/.zsh_functions" ]; then source "$HOME/.zsh_functions"; fi
