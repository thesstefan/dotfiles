colorscheme gruvbox
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

"Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'jeaye/color_coded'

call vundle#end()
filetype plugin indent on

set laststatus=2
let g:airline_theme='badwolf'
set number

let g_airline_powerline_fonts=1
