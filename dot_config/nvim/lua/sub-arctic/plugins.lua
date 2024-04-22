require("lazy").setup({
    "rafamadriz/friendly-snippets",
    "folke/which-key.nvim",
    "gbprod/yanky.nvim",
    "numToStr/Comment.nvim",
    { "norcalli/nvim-colorizer.lua", lazy=false },
    "ahmedkhalf/project.nvim",
    "lewis6991/gitsigns.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "hrsh7th/vim-vsnip",
    "hrsh7th/vim-vsnip-integ",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-vsnip",
    { "williamboman/mason.nvim", lazy=false },
    "onsails/lspkind-nvim",
    "Yggdroot/indentLine",
    { "sainnhe/everforest", lazy=false },
    "tpope/vim-fugitive",
    { "neovim/nvim-lspconfig", lazy=false },
    { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons", lazy=false},
    "echasnovski/mini.nvim",
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        enabled = true,
        init = false,
    },
    {
        "nvim-telescope/telescope.nvim", branch = '0.1.x',
        lazy = true,
        dependencies = { "nvim-lua/plenary.nvim"}
    },
    {
        "kevinhwang91/nvim-ufo",
        dependencies = "kevinhwang91/promise-async",
        lazy = true,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        keys = {
            { "<leader>ft", "<cmd>Neotree toggle<cr>", desc="NeoTree"}
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true, lazy=false }
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*",  -- recommended, use latest release instead of latest commit
        dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- see below for full list of optional dependencies 👇
        },
    },
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "bash", "javascript", "html" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    {
        "michaelb/sniprun",
        branch = "master",

        build = "sh install.sh",
        -- do 'sh install.sh 1' if you want to force compile locally
        -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

        config = function()
          require("sniprun").setup({
          -- your options
          })
        end,
    },
    {
        "instant-markdown/vim-instant-markdown",
        lazy = true,
    }
})

