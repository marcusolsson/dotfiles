#!/bin/bash

export VISUAL=vim
export EDITOR=vim
export BROWSER=firefox

export HISTSIZE=5000
export HISTFILESIZE=10000

export HISTCONTROL=ignoredups

alias ls='ls --color=auto'
alias ll='ls -l'
alias aglio='docker run --rm -v $PWD/docs:/data davidonlaptop/aglio -i /data/blueprint.md -o /data/index.html'

source $HOME/.bash_prompt

# Java
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64

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
