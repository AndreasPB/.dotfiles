filetype plugin indent on

" Sets
set relativenumber
set number
set nowrap
set bg=dark
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set hidden
set smartindent
set noswapfile
set nobackup
set undodir=/.vim/undodir
set undofile
set incsearch
set scrolloff=12

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'dag/vim-fish'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc-git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jupyter-vim/jupyter-vim'
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

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" Leader
let mapleader = ' '

" Remaps
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" remove trailing whitespaces
nnoremap <Leader>w :call TrimWhitespace()<cr>

" coc/sourcery
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <leader>cl :CocDiagnostics<cr>
nnoremap <leader>cf :CocFix<cr>
nnoremap <leader>ch :call CocAction('doHover')<cr>

" fzf
nnoremap <C-p> :GFiles<cr>
nnoremap <Leader>F :FZF<cr>
nnoremap <Leader>ff :FZF<cr>
nnoremap <Leader>fh :FZF ~<cr>
nnoremap <Leader>fc :FZF ~/.config<cr>
nnoremap <Leader>fr :FZF ~/Repo<cr>

" vim-airline
" tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tab_nr = 0

if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ':'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' '
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.dirty='⚡'

