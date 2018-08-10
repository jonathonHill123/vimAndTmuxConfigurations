# setup symlinks

ln -s /path/to/this/git/repo/.vim ~/.vim

ln -s /path/to/this/git/repo/.vimrc ~/.vimrc

tmux:

ln -s /path/to/this/git/repo/.tmux.conf ~/.tmux.conf

# Make sure necessary plugins are installed

cd ~/.vim/bundle
rm -rf Vundle.vim
git clone https://github.com/gmarik/Vundle.vim
vim +PluginInstall +qall

# Build ycm

brew install cmake

cd ~/.vim/bundle/YouCompleteMe && ./install.py && git submodule update --init --recursive

# Guide that gave me the backbone of my vimrc

https://dougblack.io/words/a-good-vimrc.html
