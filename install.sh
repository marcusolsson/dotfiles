#!/bin/sh

# This script should be kept idempotent.

DOTFILES=$HOME/dotfiles

# files
ln -sf $DOTFILES/xprofile $HOME/.xprofile
ln -sf $DOTFILES/Xdefaults $HOME/.Xdefaults
ln -sf $DOTFILES/vimrc $HOME/.vimrc
ln -sf $DOTFILES/gitconfig $HOME/.gitconfig

# folders
ln -sf $DOTFILES/i3 $HOME/.i3
ln -sf $DOTFILES/urxvt $HOME/.urxvt
