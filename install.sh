#!/bin/sh

# This script should be kept idempotent.

DOTFILES=$HOME/dotfiles

# files
ln -sf $DOTFILES/xprofile $HOME/.xprofile
ln -sf $DOTFILES/Xdefaults $HOME/.Xdefaults
ln -sf $DOTFILES/vimrc $HOME/.vimrc
ln -sf $DOTFILES/gitconfig $HOME/.gitconfig

# folders
# if second arg exists, the symlink will be placed inside that directory. 
# make sure they don't exist before running this script.
ln -s $DOTFILES/i3 $HOME/.i3
ln -s $DOTFILES/urxvt $HOME/.urxvt
