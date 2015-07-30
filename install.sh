#!/bin/bash 

sudo apt-get -qq update
sudo apt-get -qq -y upgrade

packages=(
	i3 
	lxappearance gtk-chtheme qt4-qtconfig
	fonts-inconsolata fonts-roboto
	volumeicon-alsa python3-udiskie
	stow ranger gpicview nitrogen
	vim git rxvt-unicode htop curl jq
)

sudo apt-get install -y ${packages[*]}

read -r -p "Install vim? [y/N] " response
response=${response,,}
if [[ $response =~ ^(yes|y)$ ]]; then
	echo "installing vim ..."

	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

	# YouCompleteMe
	sudo apt-get install -qq build-essential cmake python-dev
	cd ~/.vim/bundle/YouCompleteMe
	./install.sh --clang-completer
else
	echo "skipped vim"
fi
