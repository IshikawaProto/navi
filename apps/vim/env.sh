# Navi Vim

## Vim
CURDIR=$PWD
cp vimrc ~/.vimrc
mkdir ~/.vim

## Pathogen
mkdir ~/.vim/autoload
cd ~/.vim/autoload
wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

## Plugins
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/arcticicestudio/nord-vim.git

## Finished
cd $CURDIR
