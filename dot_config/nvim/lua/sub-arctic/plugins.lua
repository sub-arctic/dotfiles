return { 
    "rafamadriz/friendly-snippets",
    "folke/which-key.nvim",
    "gbprod/yanky.nvim",
    "ahmedkhalf/project.nvim",
    { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons"},
    { "kevinhwang91/nvim-ufo", dependencies = "kevinhwang91/promise-async" },
    {
        'numToStr/Comment.nvim',
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',  
        dependencies = {'nvim-tree/nvim-web-devicons'}
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
}
