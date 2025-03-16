local lazy = require("lazy")
lazy.setup({
	"stevearc/conform.nvim",
	"mfussenegger/nvim-dap-python",
	"ggandor/leap.nvim",
	"mfussenegger/nvim-lint",
	"mfussenegger/nvim-dap",
	"sitiom/nvim-numbertoggle",
	"folke/which-key.nvim",
	"gbprod/yanky.nvim",
	"numToStr/Comment.nvim",
	"ahmedkhalf/project.nvim",
	"lewis6991/gitsigns.nvim",
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"onsails/lspkind.nvim",
			"f3fora/cmp-spell",
			"kdheepak/cmp-latex-symbols",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/vim-vsnip",
			"hrsh7th/vim-vsnip-integ",
		},
	},
	"williamboman/mason-lspconfig.nvim",
	"echasnovski/mini.nvim",
	"tpope/vim-fugitive",
	{"rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}},
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	{ "norcalli/nvim-colorizer.lua",         lazy = false },
	{ "williamboman/mason.nvim",             lazy = false },
	{ "sainnhe/gruvbox-material", },
	{ "neovim/nvim-lspconfig",               lazy = false },
	{ "akinsho/bufferline.nvim",             branch = "main", dependencies = "nvim-tree/nvim-web-devicons", lazy = false },
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"kevinhwang91/nvim-ufo",
		dependencies = "kevinhwang91/promise-async",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true, lazy = false }
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
	},
	{
		"michaelb/sniprun",
		branch = "master",
		build = "sh install.sh",

	},
}, {
	defaults = {
		lazy = false,
	}
})
