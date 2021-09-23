filetype plugin indent on

" Sets
set number
set nowrap
set bg=dark
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'dag/vim-fish'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc-git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'Lokaltog/powerline-fonts'
call plug#end()

" Theme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" Funcs
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Leader
let mapleader = ' '

" Remaps
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

nnoremap <leader>cl :CocDiagnostics<cr>
nnoremap <leader>cf :CocFix<cr>
nnoremap <leader>ch :call CocAction('doHover')<cr>

nmap <Leader>F :FZF<cr>
nmap <Leader>ff :FZF<cr>
nmap <Leader>fh :FZF ~<cr>
nmap <Leader>fc :FZF ~/.config<cr>
nmap <Leader>fr :FZF ~/Repo<cr>

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'

