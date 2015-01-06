

all: install

store:
	cp $(HOME)/.vimrc .
	cp $(HOME)/.bashrc .
	cp $(HOME)/.tmuxrc .

install:
	ln -s $(PWD)/.vimrc $(HOME)/.vimrc
	ln -s $(PWD)/.bashrc $(HOME)/.bashrc
	ln -s $(PWD)/.tmuxrc $(HOME)/.tmuxrc
