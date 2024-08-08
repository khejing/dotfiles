set backup
set bdir=~/.vimbackupdir
set undofile
set undodir=~/.vimundodir
colorscheme desert
au BufRead,BufNewFile *.txt* set filetype=tex inde=
set ignorecase smartcase
map ： :
map ？ ?
map 、 /
map F. F。
map f. f。
map F, F，
map f, f，
map j gj
map k gk
map r. r。
map r, r，
map r\ r、
map rna r他
map rnv r她
au InsertEnter * silent !im-select.exe 2052
au InsertLeave * silent !im-select.exe 1033
au CmdlineEnter /,\? silent !im-select.exe 2052
au CmdlineLeave /,\? silent !im-select.exe 1033
let g:lastInsertChar = ""
function! HandleInsertCharPre()
	if g:lastInsertChar =~# '\d' && v:char == "："
		let v:char = ":"
	endif
	let g:lastInsertChar = v:char
endfunction
au InsertCharPre * call HandleInsertCharPre()
source $VIMRUNTIME/mswin.vim
unmap <C-Z>
unmap <C-Y>
unmap <C-A>
command PowerShellTerm sp|term pwsh.exe
if exists("g:neovide")
    au TermOpen * call feedkeys("icd D:\Documents\<CR>")
endif
tnoremap <C-W>h <C-\><C-N><C-w>h
tnoremap <C-W>j <C-\><C-N><C-w>j
tnoremap <C-W>k <C-\><C-N><C-w>k
tnoremap <C-W>l <C-\><C-N><C-w>l
tnoremap <C-W>x <C-\><C-N><C-w>x
tmap <C-Y> <C-\><C-N>pi
