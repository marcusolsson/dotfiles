#!/bin/bash 

sudo apt-get -qq update
sudo apt-get -qq -y upgrade

packages=(
	i3 lightdm
	lxappearance gtk-chtheme qt4-qtconfig
	fonts-inconsolata fonts-roboto
	volumeicon-alsa
	stow ranger gpicview nitrogen
	vim vim-gtk git rxvt-unicode htop curl jq
)

sudo apt-get install -y ${packages[*]}

rm -rf $HOME/.bashrc

stows=(bash bin git i3 urxvt vim wallpapers X11)

stow -R ${stows[*]}

# i3blocks
sudo apt-get install -y ruby-ronn
git clone git://github.com/vivien/i3blocks
pushd i3blocks; sudo make install; popd;
rm -rf i3blocks

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

read -r -p "Install golang? [y/N] " response
response=${response,,}
if [[ $response =~ ^(yes|y)$ ]]; then
	wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
	tar xzf go1.4.2.linux-amd64.tar.gz
	rm go1.4.2.linux-amd64.tar.gz
	
	if [ -d "$HOME/go" ]; then
		read -r -p "$HOME/go already exists, are you sure you want to overwrite it? [y/N] " response
		response=${response,,}
		if [[ $response =~ ^(yes|y)$ ]]; then
			rm -rf $HOME/go
			mv go $HOME/
		else 
			echo "aborting golang install"
		fi
	else
		mv go $HOME/
	fi

else
	echo "skipped golang"
fi

