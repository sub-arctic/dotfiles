call plug#begin('~/.config/nvim/plugged')
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
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
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'lervag/vimtex'
Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
Plug 'michaelb/sniprun', {'do': 'sh install.sh'}
call plug#end()

set termguicolors
lua require('sub-arctic')

set background=dark


lua require'colorizer'.setup()
""let g:everforest_background = 'medium'
colorscheme everforest 

filetype plugin indent on
filetype plugin on
let g:vimtex_compiler_method = 'arara'
let g:vimtex_view_method = 'zathura'
""let g:lightline = {'colorscheme' : 'everforest'}
nnoremap <C-y> :Telescope yank_history<Cr>
nnoremap <C-o> :Telescope projects<Cr>
nnoremap <C-t> :Neotree toggle<Cr>
nnoremap <C-p> :Telescope find_files<Cr>
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)
""set clipboard=unnamedplus
syntax on
set tabstop=4
set softtabstop=4
set expandtab

set smartindent
set conceallevel=2

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

