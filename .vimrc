" Colours {{{
syntax enable	" enable syntax processing
set background=dark
colorscheme badwolf
" }}}

" Spaces & tabs {{{
set tabstop=4	" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab	" tabs are spaces
" }}}

" UI config {{{
set number	" show line numbers
filetype indent on  " load filetype-specific indent files
set wildmenu    " visual autocomplete for command menu
set lazyredraw  " redraw only when we need too
set showmatch   " highlight matching [{()}]
" }}}

" Searching {{{
set incsearch   " search as characters are entered
set hlsearch   " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Movement {{{
" move verically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]
" }}}

" Misc {{{
" jk is escape
inoremap jk <esc>

" toggle gui undo
nnoremap <leader>u :GundoToggle<CR>

" open ag.vim -> command line tool to search source code in a project
nnoremap <leader>a :Ag
" }}}

" crtlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}
