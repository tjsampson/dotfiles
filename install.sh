#!/bin/bash


#Install Vim Plug
vimplug_result=$(
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
)


echo "VIM Plug Installed..."
echo $vimplug_result

exit 0
