let g:gruvbox_contrast_dark = 'hard'
syntax enable
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set background=dark

hi Normal ctermbg=none

set encoding=utf-8

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'szw/vim-tags'
Plugin 'scrooloose/nerdtree'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-chosen-plugins/vim-colorschemes'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
"Plugin 'vim-scripts/TagHighlight'

colorscheme jelleybeans

call vundle#end()
filetype plugin indent on

set laststatus=2
let g:airline_theme='jellybeans'
set number

let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = 'L'
