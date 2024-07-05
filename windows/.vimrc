set bdir=~/.vimbackupdir
set undodir=~/.vimundodir
colorscheme desert
au BufRead,BufNewFile *.txt* set filetype=tex inde=
set ignorecase smartcase
map ÷ <C-W>
map ： :
map ？ ?
map 、 /
map F. F。
map f. f。
map F, F，
map f, f，
map j gj
map k gk
nnoremap <C-V> "+p
vnoremap <C-V> "+p
inoremap <C-V> <C-R>+
cnoremap <C-V> <C-R>+
vnoremap <C-C> "+y
vnoremap <C-X> "+ygvd
command PowerShellTerm :term pwsh.exe
if exists("g:neovide")
    au TermOpen * call feedkeys("icd D:\Documents\<CR>")
endif
:tnoremap <C-W>h <C-\><C-N><C-w>h
:tnoremap <C-W>j <C-\><C-N><C-w>j
:tnoremap <C-W>k <C-\><C-N><C-w>k
:tnoremap <C-W>l <C-\><C-N><C-w>l
