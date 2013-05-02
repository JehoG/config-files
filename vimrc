""""""""""""""""""""""""""""""""
""" .vimrc - Custom Vim 
""" Nilovna Bascunan-Vasquez
""" 15 janvier 2012
"""""""""""""""""""""""""""""""""

" ---- General settings ---- "
set term=xterm-256color
colorscheme railscasts

" Syntax hightlighting
syntax on

" Detect filetype
filetype on
filetype indent on
filetype plugin on

"No vi compatibility
set nocompatible

" Automatic and smart indent
set autoindent smartindent

" Set spaces instead of tab
set expandtab
set smarttab

" Tab width
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Line number
set number
set ruler

" Search options
" Incremental research
set incsearch 
" Highlight things found
set hlsearch

" Delete buffer when closing tab
set nohidden

" Show current line, and set CurrentLine color
set cul
hi CursorLine term=none cterm=none ctermbg=black

" Wrap long lines
set wrap

" Text width
set textwidth=120
set shiftround " round indents

" History length
set history=1000

" ---- Specific Filetypes setting ---- "

" X?HTML & XML
autocmd FileType html,xhtml,xml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" CSS
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" PHP
autocmd FileType php setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Python/C/C++
autocmd FileType python,c,cpp,h setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

autocmd FileType python,c,cpp,h setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" Smarty
" au BufRead,BufNewFile *.tpl set filetype=smarty 
