

all: install

store:
	cp $(HOME)/.vimrc .
	cp $(HOME)/.bashrc .
	cp $(HOME)/.tmuxrc .
	cp $(HOME)/.tmux.conf .

install:
	ln -s $(PWD)/.vimrc $(HOME)/.vimrc
	ln -s $(PWD)/.bashrc $(HOME)/.bashrc
	ln -s $(PWD)/.tmuxrc $(HOME)/.tmuxrc
	ln -s $(PWD)/.tmux.conf $(HOME)/.tmux.conf
