call plug#begin('~/.config/nvim/plugged')

Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Yggdroot/indentLine'

""" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


let g:jellybeans_overrides = {
\    'background': { 'guibg': '000000' },
\}

colorscheme jellybeans
let g:airline_theme = 'minimalist'

call plug#end()
