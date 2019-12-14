let mapleader =' '
" Allows code syntax highlighting
syntax on
" Wrap text
set wrap

set ttyfast

set list
" Sets line numbering
set number relativenumber

set autoindent

set shiftwidth=4

set softtabstop=4

set modelines=0

set wrap

set showmode

set showcmd

set foldmethod=indent

set foldlevel=99
" Highlight and match insensitively searches
set hlsearch
set incsearch
set ignorecase
set smartcase
" Disable arrow keys in normal mode
no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>
" Remaps escape to ii
:imap ii <Esc>
" Set code folding to space-z
nnoremap <space> za
" Allows mouse use
set mouse=nicr
" Basically autocomplete with tab
set wildmode=longest,list,full
autocmd BufWritePre * %s/\s\+$//e
" Autocompile files
autocmd BufWritePost config.h,config.def.h !sudo make clean install
autocmd BufWritePost config.py !python3 ~/bin/py/reload.py
" Remaps escape sequences to be convenient
:nmap <leader>q <Esc>:q!<Return>
:nmap <leader>w <Esc>:wq<Return>
:nmap <leader>j <Esc>:
set autoread
" Controls how default windows are split
set splitright splitbelow
" Allow switching between windows without double bindings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
