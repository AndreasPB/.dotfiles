
if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
    Plug 'hoob3rt/lualine.nvim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'evanleck/vim-svelte', {'branch': 'main'}
    Plug 'pangloss/vim-javascript'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    " Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'windwp/nvim-autopairs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

endif

Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()
