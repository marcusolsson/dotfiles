source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle kubectl
antigen bundle kubectx
antigen bundle hlissner/zsh-autopair
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme simple
antigen apply

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# zsh
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Vim
export EDITOR="vim"

alias vi='nvim'
alias vim='nvim'

# Kubernetes
source <(kubectl completion zsh)

# Go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# Python
export PATH="~/.pyenv/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export WORKON_HOME=~/.virtualenvs

# direnv
eval "$(direnv hook zsh)"

# jump
eval "$(jump shell)"

# Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
