local project = require('project_nvim')
project.setup {
    manual_mode = true,
    detection_methods = { "lsp", "pattern" },
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
    ignore_lsp = {},
    exclude_dirs = {},
    show_hidden = true,
    silent_chdir = true,
    scope_chdir = 'global',
    datapath = vim.fn.stdpath("data"),
}
