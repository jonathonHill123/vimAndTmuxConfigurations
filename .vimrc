" Global variables
let mapleader=","   " leader is comma

" Colours
syntax enable	" enable syntax processing
set background=dark
colorscheme badwolf

" Spaces & tabs
set tabstop=4	" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab	" tabs are spaces

" UI config
set number	" show line numbers
filetype indent on  " load filetype-specific indent files
set wildmenu    " visual autocomplete for command menu
set lazyredraw  " redraw only when we need too
set showmatch   " highlight matching [{()}]

" Searching
set incsearch   " search as characters are entered
set hlsearch   " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
