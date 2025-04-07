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

" Colorscheme "
colorscheme kanagawa-dragon
