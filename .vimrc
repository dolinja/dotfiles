set nocompatible
set number
set shortmess=a
set cmdheight=2
set backspace=2

execute pathogen#infect()
set t_vb=

" Searching
set hlsearch
set incsearch

set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

syntax on

filetype plugin indent on
set mouse=a
set clipboard=unnamed
set t_Co=256

if has ("mouse_sgr")
  set ttymouse=sgr
else 
  set ttymouse=xterm2
end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

map <C-p> :FufCoverageFile<CR>
nnoremap <CR> :noh<CR><CR>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

map <Leader>n :bn<CR>
map <Leader>p :bp<CR>

map <Leader>q :BD<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='kolor'
set laststatus=2
set encoding=utf-8

set backupdir=~/.vim/backup_files
set directory=~/.vim/swap_files
set undodir=~/.vim/undo_files

"""""""""""""""""""""""""""""""""""""""
" CTRL-P
""""""""""""""""""""""""""""""""""""""
"let g:ctrlp_custom_ignore = 'node_modules\|dist\|git'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dist|target)$'




"""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
"let g:NERDTreeToggle="<F2>"
"let g:NERDTreeMapActivateNode="<F3>"
"let g:NERDTreeMapPreview="<F4>"
let NERDTreeShowHidden=1
set visualbell
set noerrorbells


set list listchars=tab:»·,trail:·

"""""""""""""""""""""""""""""""""""""""""""""""
" Bufexplorer
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>l :ToggleBufExplorer<CR>
colorscheme atom-dark-256
highlight Normal ctermbg=none
highlight NonText ctermbg=none

