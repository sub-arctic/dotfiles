local conform = require("conform")

conform.setup({
	lua = { "stylua" },
	formatters_by_ft = {
		python = { "black", "isort", "pylint", "flake8" }
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
