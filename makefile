# Create symlink

all: 
	ln -siv $(CURDIR)/vimrc $(HOME)/.vimrc
	ln -siv $(CURDIR)/bash_aliases $(HOME)/.bash_aliases
	ln -siv $(CURDIR)/gitconfig $(HOME)/.gitconfig

#ln -siv $(HOME)/my_scripts/vim $(HOME)/.vim
#ln -siv $(HOME)/my_scripts/sublime-text-2 $(HOME)/.config/sublime-text-2
