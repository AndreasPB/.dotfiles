if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
    Plug 'hoob3rt/lualine.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'ms-jpq/coq_nvim'
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
    Plug 'folke/lsp-colors.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-treesitter/playground'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'windwp/nvim-autopairs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'sainnhe/gruvbox-material'
    " Plug 'morhetz/gruvbox'
    " Plug 'gruvbox-community/gruvbox'
    " Plug 'rktjmp/lush.nvim'
    " Plug 'ellisonleao/gruvbox.nvim'
    Plug 'airblade/vim-gitgutter'
    Plug 'romgrk/nvim-treesitter-context'
    Plug 'haskell/haskell-language-server'
    

endif

call plug#end()
