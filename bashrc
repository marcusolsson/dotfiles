export DOTFILES=~/dotfiles
export PATH=$DOTFILES/bin:$PATH

export VISUAL=vim
export EDITOR=vim

alias ls='ls --color=auto'
alias ll='ls -l'

source $DOTFILES/prompt.sh

# Go
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Development/go
export PATH=$PATH:$GOPATH/bin

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi
