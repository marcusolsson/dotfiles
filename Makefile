.PHONY: dotfiles

all: dotfiles

dotfiles:
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git" -not -name ".config"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
	for file in $(shell find $(CURDIR)/.config -mindepth 1 -maxdepth 1); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
	mkdir -p $(HOME)/.config/nvim && ln -sfn $(CURDIR)/.vimrc $(HOME)/.config/nvim/init.vim

