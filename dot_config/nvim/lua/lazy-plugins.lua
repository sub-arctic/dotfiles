local lazy = require('lazy')
lazy.setup({
    'rafamadriz/friendly-snippets',
    'folke/which-key.nvim',
    'gbprod/yanky.nvim',
    'numToStr/Comment.nvim',
    'ahmedkhalf/project.nvim',
     'lewis6991/gitsigns.nvim',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'hrsh7th/vim-vsnip-integ',
    'williamboman/mason-lspconfig.nvim',
    'echasnovski/mini.nvim',
    'onsails/lspkind-nvim',
    'Yggdroot/indentLine',
    'tpope/vim-fugitive',
    { 'norcalli/nvim-colorizer.lua', lazy=false },
    { 'williamboman/mason.nvim', lazy=false },
    { 'sainnhe/everforest', lazy=false },
    { 'neovim/nvim-lspconfig', lazy=false },
    { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons', lazy=false},
    {
        'goolord/alpha-nvim',
        event = 'VimEnter',
        enabled = true,
        init = false,
    },
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim'}
    },
    {
        'kevinhwang91/nvim-ufo',
        dependencies = 'kevinhwang91/promise-async',
    },
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        keys = {
            { '<leader>ft', '<cmd>Neotree toggle<cr>', desc='NeoTree'}
        },
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
            '3rd/image.nvim',
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true, lazy=false }
    },
    {
        'epwalsh/obsidian.nvim',
        version = '*',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'neanias/everforest-nvim',
        version = false,
        lazy = false,
        priority = 1000,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    {
        'michaelb/sniprun',
        branch = 'master',
        build = 'sh install.sh',

    },
    {
        'instant-markdown/vim-instant-markdown',
    }
}, {
	defaults = {
	    lazy = false,
	}
    })


