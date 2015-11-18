rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
sudo npm install -g typescript
