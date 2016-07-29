source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle ssh-agent
antigen bundle pass
antigen bundle docker
antigen bundle last-working-dir

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle hlissner/zsh-autopair

antigen theme simple

antigen apply

. /usr/share/autojump/autojump.sh

export VISUAL=vim
export EDITOR=vim
export TERM=rxvt-256color
