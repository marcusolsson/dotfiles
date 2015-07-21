#!/bin/bash

ln -sf $HOME/dotfiles/vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/xsessionrc $HOME/.xsessionrc

mkdir -p $HOME/.i3
ln -sf $HOME/dotfiles/i3/config $HOME/.i3/config
ln -sf $HOME/dotfiles/i3/i3status.conf $HOME/.i3status.conf

