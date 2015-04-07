

all: install

store:
	cp $(HOME)/.vimrc .
	cp $(HOME)/.bashrc .
	cp $(HOME)/.tmuxrc .
	cp $(HOME)/.tmux.conf .

install:
	ln -sf $(PWD)/.vimrc $(HOME)/.vimrc
	ln -sf $(PWD)/.bashrc $(HOME)/.bashrc
	ln -sf $(PWD)/.tmuxrc $(HOME)/.tmuxrc
	ln -sf $(PWD)/.tmux.conf $(HOME)/.tmux.conf
