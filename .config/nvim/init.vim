" Fundamentals "{{{
" ---------------------------------------------------------------------

" init autocmd
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible
set number
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set incsearch
set hidden
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=12
set expandtab
set shell=fish
" set backupskip=/tmp/*,/private/tmp/*
" set autochdir
set splitbelow
set splitright
set clipboard^=unnamed,unnamedplus

" For GitGutter
set updatetime=750

" incremental substitution (neovim)
if has('nvim')
    set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

"}}}

" Keymaps "{{{
" ---------------------------------------------------------------------
let mapleader = ' '

" Crazy j-j to ESC
imap jj <Esc>

" This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <Leader>f~ :FZF ~<cr>
nnoremap <Leader>fc :FZF ~/.config<cr>
nnoremap <Leader>fr :FZF ~/Repo<cr>

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
" set shortmess+=c
"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
" set cursorcolumn

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
    autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
    autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim

"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

syntax enable
set background=dark
set termguicolors

" let g:gruvbox_material_background = "hard"
let g:gruvbox_material_palette = "original"

colorscheme gruvbox-material

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
highlight NonText    ctermbg=NONE guibg=NONE
highlight clear EndOfBuffer

"}}}

" Language Servers "{{{
" ---------------------------------------------------------------------

let g:coq_settings = { "auto_start": v:true, "display.icons.mode": "none", "clients.tabnine.enabled": v:true }

lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.svelte.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.rust_analyzer.setup{}
require('nvim-autopairs').setup{}

EOF

"}}}
