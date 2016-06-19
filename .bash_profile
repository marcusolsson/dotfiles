#!/bin/bash

source $HOME/.bash_options
source $HOME/.bash_prompt
source $HOME/.bash_exports
source $HOME/.bash_aliases

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# added by travis gem
[ -f /home/marcus/.travis/travis.sh ] && source /home/marcus/.travis/travis.sh

. /usr/share/autojump/autojump.sh
