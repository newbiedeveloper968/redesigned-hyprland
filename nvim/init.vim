" Add plugins here "
call plug#begin('~/.config/nvim/plugged')
Plug 'rebelot/kanagawa.nvim'
Plug 'comfysage/evergarden'
Plug 'rktjmp/lush.nvim'
Plug 'rockyzhang24/arctic.nvim', { 'branch': 'v2' }
Plug 'GustavoPrietoP/doom-themes.nvim'
call plug#end()


" Opening terminal
let g:terminal_open = 0
function! ToggleTerminal()
  if g:terminal_open == 0
    " Open terminal, run the Python file
    execute 'cd %:p:h | split | terminal'
    " Wait for the terminal to open before running the next commands
    call feedkeys("3j")       " Move cursor 3 lines down
    call feedkeys("a")        " Enter Insert mode
    let g:terminal_open = 1
  else
    " Close the terminal if it's open
    execute 'q'
    let g:terminal_open = 0
  endif
endfunction
" Disable the terminal toggle if we are in an active terminal mode
augroup TerminalFix
  autocmd!
  autocmd BufEnter * if &buftype == 'terminal' | let g:terminal_open = 1 | endif
  autocmd BufLeave * if &buftype == 'terminal' | let g:terminal_open = 0 | endif
augroup END


" Default configs and keybinding for nvim "
set number
set relativenumber
set shiftwidth=4
syntax on
set timeoutlen=300  " Set a delay for key sequences
inoremap kj <Esc>   " Remap 'fj' to Escape in insert mode
nnoremap <A-l> :w<CR>:term python %<CR>:normal! a<CR>
nnoremap <A-a> :call ToggleTerminal()<CR>


" Colorscheme "
colorscheme doom-challenger-deep
