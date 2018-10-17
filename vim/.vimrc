execute pathogen#infect()
syntax on
highlight LineNr ctermfg=3
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" http://vim.wikia.com/wiki/Indenting_source_code
filetype plugin indent on
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" toggle nerdtree
map <C-t> :NERDTreeToggle<CR>

" move lines / blocks up and down one line at a time
" move lines in normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" move lines in insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" move lines in visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


" numbers and relative numbers on by default
set relativenumber
set number
set numberwidth=2
set backspace=indent,eol,start

" Toggle show relative line numbers (ctrl + n)
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunction

" Use (control + n) to toggle line numbers
nnoremap <C-n> :call NumberToggle()<CR>
