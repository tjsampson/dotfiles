# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="geoffgarside"
export TERM="xterm-256color"
export GOROOT=/usr/local/go
export GOPATH="$HOME/code/go"
export PATH="$GOPATH/bin:$GOROOT/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH:$HOME/.bin"
export KUBECONFIG="$HOME/.kube/admin.conf"
export NVM_DIR="/Users/tsampson/.nvm"

plugins=(git docker go)
source $ZSH/oh-my-zsh.sh

if [ -f "$NVM_DIR/nvm.sh" ]; then . "$NVM_DIR/nvm.sh"; fi
if [ -f "$HOME/.tnsrc" ]; then source "$HOME/.tnsrc"; fi
if [ -f "$HOME/.google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/.google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/.google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/.google-cloud-sdk/completion.zsh.inc"; fi
if [ -f "$HOME/.google-cloud-sdk/bin/kubectl" ]; then source <(kubectl completion zsh); fi
if [ -f "$HOME/.zsh_aliases" ]; then source "$HOME/.zsh_aliases"; fi
if [ -f "$HOME/.zsh_functions" ]; then source "$HOME/.zsh_functions"; fi
