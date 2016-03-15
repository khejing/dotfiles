set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
"call vundle#begin()
" 对于Windows平台，应该为
call vundle#begin('$HOME/vimfiles/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Put your non-Plugin stuff after this line
source $VIM/_vimrc
set guioptions-=T
set fileencodings=utf-8,cp936
set nobackup
set ignorecase smartcase
au BufRead,BufNewFile *.txt set filetype=tex
autocmd FileType tex set textwidth=0
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set shiftwidth=2
let g:jsx_ext_required = 0
map \. f。
