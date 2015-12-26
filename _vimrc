source $VIM/_vimrc
set guioptions-=T
set fileencodings=utf-8,cp936
set nobackup
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
au BufRead,BufNewFile *.txt set filetype=tex
map \. f。