" Add plugins here "
call plug#begin('~/.config/nvim/plugged')
Plug 'rebelot/kanagawa.nvim'
Plug 'slugbyte/lackluster.nvim'
call plug#end()

" Default configs for nvim "
set number
set relativenumber
set shiftwidth=4
syntax on
inoremap jk "<Esc>"
set timeoutlen=300

" Colorscheme "
colorscheme kanagawa-dragon
