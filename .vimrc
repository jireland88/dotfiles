" Options
set encoding=utf8
set clipboard=unnamedplus " Enables clipboard between vim and other programs
set completeopt=noinsert,menuone,noselect " Modifies the autocomplete menu
set autoindent " Indent a new line
set number " Shows the line numbers
set title " Show file title
syntax on
set ttyfast " Speed up scrolling
set spelllang=en_gb spell " Setup spell check

call plug#begin('~/.vim/plugged')
" Colour Scheme
Plug 'NLKNguyen/papercolor-theme'
" Information bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Matching brackets
Plug 'jiangmiao/auto-pairs'
" Git
Plug 'tpope/vim-fugitive'
" Autocomplete
Plug 'davidhalter/jedi-vim'
" File explorer
Plug 'scrooloose/nerdtree'
" Send code to the REPL
Plug 'jpalardy/vim-slime'
" Latex
Plug 'lervag/vimtex'
call plug#end()

" Vim Slime Configuration
let g:slime_target = "vimterminal"

" JEDI Vim Configuration
let g:jedi#use_splits_not_buffers = "bottom"

" Colour Scheme Config
set t_Co=256
set background=light
colorscheme PaperColor
let g:airline_theme="light"

" Custom bindings
" ... Split Naviation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
" ... NERDTree
nmap <C-e> :NERDTreeToggle<CR>
" ... Copy to system clipboard on Wayland
nmap <C-@> :call system("wl-copy", @")<CR>
