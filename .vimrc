let mapleader =' '
syntax on
set wrap
set ttyfast
set list
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
set hlsearch
set incsearch
set ignorecase
set smartcase
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>
no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>
:imap ii <Esc>
set mouse=nicr
set wildmode=longest,list,full
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePost config.h,config.def.h !sudo make clean install
:nmap <leader>q <Esc>:q!<Return>
:nmap <leader>w <Esc>:wq<Return>
:nmap <leader>j <Esc>:
set autoread
