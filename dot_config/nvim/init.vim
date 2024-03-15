call plug#begin('~/.config/nvim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'sainnhe/everforest'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'L3MON4D3/LuaSnip'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'lervag/vimtex'
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
let g:lightline = {'colorscheme' : 'everforest'}

nnoremap <C-p> :Telescope find_files<Cr>
set clipboard=unnamedplus
syntax on

set termguicolors

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

