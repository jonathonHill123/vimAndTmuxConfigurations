" Vundle (Required for YCM) {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sjl/badwolf'
call vundle#end()
filetype plugin indent on
" }}}

" Backspace {{{
set backspace=indent,eol,start
" }}}


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

" Tmux {{{
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}

" Backups {{{
" move backup files to /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" YouCompleteMe {{{
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:enable_ycm_at_startup = 1
" }}}
