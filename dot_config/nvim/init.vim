set termguicolors
lua require('sub-arctic')

set background=dark

lua require'colorizer'.setup()
colorscheme everforest 
let mapleader = ","
filetype plugin indent on
filetype plugin on


nnoremap <C-y> :Telescope yank_history<Cr>
nnoremap <C-o> :Telescope projects<Cr>
nnoremap <C-t> :Neotree toggle<Cr>
nnoremap <C-p> :Telescope find_files<Cr>
nnoremap <C-j> :tabnext<CR>
nnoremap <C-k> :tabprevious<CR>
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)
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
