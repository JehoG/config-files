# Create symlink

all: 
	ln -siv $(CURDIR)/vimrc $(HOME)/.vimrc
	ln -siv $(CURDIR)/bash_aliases $(HOME)/.bash_aliases
	ln -siv $(CURDIR)/gitconfig $(HOME)/.gitconfig
	ln -siv $(CURDIR)/vim $(HOME)/.vim
	mv $(HOME)/.config/sublime-text-2/Packages $(HOME)/.config/sublime-text-2/Packages.old
	ln -siv $(CURDIR)/sublime-text-2/Packages $(HOME)/.config/sublime-text-2/Packages
	mv $(HOME)/.config/sublime-text-2/Pristine\ Packages $(HOME)/.config/sublime-text-2/Pristine\ Packages.old
	ln -siv $(CURDIR)/sublime-text-2/Pristine\ Packages $(HOME)/.config/sublime-text-2/Pristine\ Packages
