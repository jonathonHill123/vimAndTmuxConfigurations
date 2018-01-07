# setup symlinks to necessary files

vim:

ln -s ~/.vim /path/to/this/git/repo/.vim

ln -s ~/.vimrc /path/to/this/git/repo/.vimrc

brew install vim --with-lua

tmux:

ln -s ~/.tmux.conf /path/to/this/git/repo/.tmux.conf

# Make sure necessary plugins are installed

vim +PluginInstall +qall

# Build ycm

brew install cmake

cd ~/.vim/bundle/YouCompleteMe && ./install.py

# Guide that gave me the backbone of my vimrc
https://dougblack.io/words/a-good-vimrc.html
