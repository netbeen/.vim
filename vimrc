set number	"显示行号

syntax on	"语法高亮
set foldmethod=syntax	"代码折叠
colorscheme	ron	"设置自带配色模式
"autocmd InsertLeave * se nocul
"autocmd InsertEnter * se cul
set cursorline	"高亮显示当前行
"set cursorcolumn	"高亮显示当前列
hi CursorLine cterm=NONE ctermbg=black guibg=red guifg=blue
hi CursorColumn cterm=NONE ctermbg=black guibg=red guifg=red


set noexpandtab	"不用空格代替制表符
set cindent	"C风格缩进
set smartindent	"自动缩进
set tabstop=4	"制表符占位=4
set softtabstop=4	"统一缩进=4
set shiftwidth=4	"统一缩进=4


set scrolloff=3	"光标距离顶部和底部3行
set laststatus=2	"底部状态栏行数	

set enc=utf-8	"设置vim内部编码为UTF-8
set fileencodings=utf-8,gbk	"使用UTF-8或者GBK打开文件

set history=999	"历史记录的行数
set showmatch	"显示匹配括号

set nocompatible	"关闭兼容VI，避免前版本兼容性问题

set ignorecase	"检索时忽略大小写

set helplang=cn	"中文帮助文档


filetype off	"配置vundle所必需
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'	"vundle本身

Plugin 'scrooloose/nerdtree'	"树型目录
Plugin 'Lokaltog/vim-powerline'	"底部提示条
Plugin 'Valloric/YouCompleteMe' "自动补全
Plugin 'marijnh/tern_for_vim'	"Tern补全插件

Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}	" 给VIM配置的配色

Plugin 'moll/vim-node.git'		

call vundle#end()
filetype plugin indent on
"配置vundle结束

"powerline{
	set guifont=PowerlineSymbols\ for\ Powerline
	set t_Co=256
	"let g:Powerline_symbols='fancy'
"}

set background=dark

if has("gui_running")
	"禁止显示菜单栏和底部栏
	set guioptions-=m
	set guioptions-=T
	"set guioptions-=b

	"设置字体，主题
	set guifont=UbuntuMono\ 16
	colorscheme dracula

	" 禁止显示滚动条
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R

	" 禁止光标闪烁
	set gcr=a:block-blinkon0

	set showtabline=0       " 隐藏Tab栏
    set cursorline           " 突出显示当行
	set linespace=1		" 用于与字号协调，减少底部白边
endif
