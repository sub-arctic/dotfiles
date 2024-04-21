call plug#begin('~/.config/nvim/plugged')
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'sainnhe/everforest'
Plug 'Yggdroot/indentLine'
Plug 'neanias/everforest-nvim', { 'branch': 'main' }
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'L3MON4D3/LuaSnip'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'lervag/vimtex'
Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
call plug#end()

lua require('sub-arctic')
set termguicolors
lua require'colorizer'.setup()
set background=dark

let g:everforest_background = 'medium'
colorscheme everforest 

filetype plugin indent on

let g:vimtex_compiler_method = 'arara'

let g:vimtex_view_method = 'zathura'
""let g:lightline = {'colorscheme' : 'everforest'}
nnoremap <C-y> :Telescope yank_history<Cr>
nnoremap <C-t> :Neotree toggle<Cr>
nnoremap <C-p> :Telescope find_files<Cr>
""set clipboard=unnamedplus
syntax on

set tabstop=4
set softtabstop=4
set expandtab

set smartindent

set shiftwidth=4

set number

set numberwidth=4

set incsearch
set nohlsearch

set splitbelow
set splitright

set hidden

set scrolloff=8

set undofile

set mouse=a

set ignorecase
set smartcase

set noshowmode

set signcolumn=number

