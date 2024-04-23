local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = { 
        'c', 
        'lua', 
        'vim', 
        'vimdoc', 
        'query', 
        'python', 
        'bash', 
        'javascript', 
        'html' 
    },
    sync_install = false,
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}


