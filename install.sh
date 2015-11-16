cd bundle

rm -rf vim-pathogen/
git clone https://github.com/tpope/vim-pathogen.git
cp vim-pathogen/autoload/pathogen.vim ../autoload

rm -rf nerdtree/
git clone https://github.com/scrooloose/nerdtree.git

rm -rf vim-powerline
git clone https://github.com/Lokaltog/vim-powerline.git

rm -rf node
git clone https://github.com/moll/vim-node.git ~/.vim/bundle/node  #安装Node.js插件

