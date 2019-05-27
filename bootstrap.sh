#!/bin/bash

for dir in $( ls -A -d */ | grep -vE '\.git$' ) ; do
    echo stow $dir -t $HOME
done

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
