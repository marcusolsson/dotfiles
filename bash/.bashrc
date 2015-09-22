#!/bin/bash

export VISUAL=vim
export EDITOR=vim

alias ls='ls --color=auto'
alias ll='ls -l'

source $HOME/.bash_prompt

# Go
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Development/go
export PATH=$PATH:$GOPATH/bin

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# added by travis gem
[ -f /home/marcus/.travis/travis.sh ] && source /home/marcus/.travis/travis.sh
