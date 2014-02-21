rm -r $HOME/.yadr
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
ln -s $HOME/.yadr/fonts $HOME/.fonts
#---------------------------------------------#
#                   VIM                       #
#---------------------------------------------#
ln -s $HOME/.yadr/vimrc $HOME/.vimrc
