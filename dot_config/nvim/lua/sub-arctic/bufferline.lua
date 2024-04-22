vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup {
    options = {
        mode = "buffers",
        themable = true,
        numbers = "ordinal",
        diagnostics = "nvim_lsp",
        separator_style = "slant",
        offsets = {
            {
                filetype = "neo-tree",
                highlight = "Directory",
                align = "left",
                text = "tree",
                separator = true,
            }
        }
    }
}
