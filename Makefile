ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
all: base tmux vim git fonts
	echo "Dotfiles successfully installed"

update:
	git submodule foreach git pull origin master 
	git commit vim/bundle -m"mise a jours des plugins tiers, `date`"

#---------------------------------------------#
#                    GIT                      #
#---------------------------------------------#
git: base 
	ln -fs $(HOME)/.yadr/git/gitconfig $(HOME)/.gitconfig
	ln -fs $(HOME)/.yadr/git/gitignore $(HOME)/.gitignore

#---------------------------------------------#
#                   VIM                       #
#---------------------------------------------#
vim: base fonts
	ln -fs $(HOME)/.yadr/vimrc $(HOME)/.vimrc
	ln -fs $(HOME)/.yadr/vim $(HOME)/.vim
	ln -fs $(HOME)/.yadr/tmux/tmux.conf $(HOME)/.tmux.conf
#---------------------------------------------#
#                   Bash                      #
#---------------------------------------------#
bash:
	ln -fs $(HOME)/.yadr/bash_aliases $(HOME)/.bash_aliases
#                   FONTS                     #
#---------------------------------------------#
fonts: base
	cp $(HOME)/.yadr/fonts/* $(HOME)/.fonts

base: 
	rm -rf $(HOME)/.yadr
	mkdir $(HOME)/.yadr
	cp -r $(ROOT_DIR)/* $(HOME)/.yadr
#Now that everything is on ~/.yadr directory we can begin to work 
