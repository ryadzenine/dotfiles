rm -fr $HOME/.yadr
mkdir $HOME/.yadr
cp -r * $HOME/.yadr/
#Now that everything is on ~/.yadr directory we can begin to work 
#---------------------------------------------#
#                    GIT                      #
#---------------------------------------------#
ln -s $HOME/.yadr/git/gitconfig $HOME/.gitconfig
ln -s $HOME/.yadr/git/gitignore $HOME/.gitignore
#---------------------------------------------#
#                   FONTS                     #
#---------------------------------------------#
cp $HOME/.yadr/fonts/* $HOME/.fonts
#---------------------------------------------#
#                   VIM                       #
#---------------------------------------------#
ln -s $HOME/.yadr/vimrc $HOME/.vimrc
ln -s $HOME/.yadr/vim $HOME/.vim
#---------------------------------------------#
#                  BASH                       #
#---------------------------------------------#
ln -s $HOME/.yadr/bashrc $HOME/.bashrc
#---------------------------------------------#
#                  TMUX                       #
#---------------------------------------------#
ln -s $HOME/.yadr/tmux/tmux.conf $HOME/.tmux.conf
