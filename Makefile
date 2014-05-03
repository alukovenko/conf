

all: install

store:
	cp $(HOME)/.vimrc .
	cp $(HOME)/.bashrc .

install:
	ln -s $(PWD)/.vimrc $(HOME)/.vimrc
	ln -s $(PWD)/.bashrc $(HOME)/.bashrc
