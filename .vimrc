" Changes compatability mode
set nocompatible
" Set leader to space
let mapleader=' '
" Allows code syntax highlighting
syntax on
" Wrap text
set wrap
" Faster scrolling
set ttyfast
" Highlight whitespace
set list
" Sets line numbering
set number relativenumber
" Autoindent new lines
set autoindent
" Number of spaces autoindent does
set shiftwidth=4
" Number of spaces per Tab
set softtabstop=4
" Turns of mode lines
set modelines=0
" Automatically wrap text that exceeds width of terminal
set wrap
" Shows mode at bottom left corner
set showmode
" Display options
set showcmd
" Fold based on indentation
set foldmethod=indent

set foldlevel=99
" Highlight and match incremental searches
set hlsearch
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
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
" Allows mouse use in normal, insert, command, and r modes
set mouse=nicr
" Basically autocomplete with tab
set wildmode=longest,list,full
" Adds a $ at the end of each line and gets rid of trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
" Autocompile files
autocmd BufWritePost config.h,config.def.h !sudo make clean install
autocmd BufWritePost config.py !python3 ~/bin/py/reload.py
" Remaps escape sequences to be convenient
:nmap <leader>q <Esc>:q!<Return>
:nmap <leader>w <Esc>:wq<Return>
:nmap <leader>r <Esc>:w<Return>
:nmap <leader>j <Esc>:
:nmap <leader>c <Esc>:!
" Autoreload files edited outside of vim
set autoread
" Controls how default windows are split
set splitright splitbelow
" Allow switching between windows without double bindings
map <C-p> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Easily indent blocks of code
vnoremap > <gv
vnoremap < >gv
" Set scrolloff
set scrolloff=3
" Set smart-indent
set smartindent
" Set smart tab
set smarttab
" Allows you to use w! sudo restricted files without sudo permission
cmap w!! w !sudo tee % >/dev/null
" Tab is 4 spaces
set tabstop=4
" Copy previous autoindents
set copyindent
" Enable folding
set foldenable
" Alllow jk to function as expected with wrapped lines
nnoremap j gj
nnoremap k gk
" Clears the search register
nnoremap <silent> <leader>/ :nohlsearch<CR>
" Turns on spellcheck
:nmap <leader>s :set spell<Return>
" Turns off spellcheck
:nmap <leader>ss :set nospell<Return>
" Autocomplete parenthesis
:nmap <leader>p i()<Esc>
" Autocomplete double qoutes
:nmap <leader>' i""<Esc>
" Adds a 5-line buffer before scolling down
set so=5
" Highlights matching ()
set showmatch
" Ruler on
set ruler
" Enable filetype-specific indenting
filetype indent on
