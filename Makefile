ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
all: base vim git fonts
	echo "Dotfiles successfully installed"

update:
	git submodule foreach git pull origin master 
	git commit vim/bundle -m"mise a jours des plugins tiers, `date`"

#---------------------------------------------#
#                    GIT                      #
#---------------------------------------------#
git: base 
	mv $(HOME)/.gitconfig $(HOME)/.gitconfig.save
	mv $(HOME)/.gitignore $(HOME)/.gitignore.save
	ln -s $(HOME)/.yadr/git/gitconfig $(HOME)/.gitconfig
	ln -s $(HOME)/.yadr/git/gitignore $(HOME)/.gitignore

#---------------------------------------------#
#                   VIM                       #
#---------------------------------------------#
vim: base fonts
	mv $(HOME)/.vimrc $(HOME)/.vimrc.save
	mv $(HOME)/.vim $(HOME)/.vim.save
	ln -s $(HOME)/.yadr/vimrc $(HOME)/.vimrc
	ln -s $(HOME)/.yadr/vim $(HOME)/.vim
#---------------------------------------------#
#                   Bash                      #
#---------------------------------------------#
bash:
	ln -s $(HOME)/.yadr/bash_aliases $(HOME)/.bash_aliases
#---------------------------------------------#
#                   FONTS                     #
#---------------------------------------------#
fonts: base
	cp $(HOME)/.yadr/fonts/* $(HOME)/.fonts

base: 
	rm -rf $(HOME)/.yadr
	mkdir $(HOME)/.yadr
	cp -r $(ROOT_DIR)/* $(HOME)/.yadr
#Now that everything is on ~/.yadr directory we can begin to work 
