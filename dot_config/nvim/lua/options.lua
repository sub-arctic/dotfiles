vim.opt.termguicolors = true
-- Make line numbers default
vim.opt.conceallevel = 2
vim.opt.relativenumber = true
-- vim.opt.relativenumber = true
-- Vim-Instant-Markdown settings
vim.g.instant_markdown_slow = 0
vim.g.instant_markdown_autostart = 1
vim.g.instant_markdown_open_to_the_world = 0
vim.g.instant_markdown_mathjax = 1
vim.g.instant_markdown_mermaid = 1
vim.g.instant_markdown_logfile = '/tmp/instant_markdown.log'
vim.g.instant_markdown_port = 8090
vim.g.instant_markdown_theme = 'dark'

vim.opt.spell = true
vim.opt.spelllang = { "en_au" }
vim.cmd('autocmd FileType * setlocal nospell')
vim.cmd('autocmd FileType markdown,text,gitcommit setlocal spell')
vim.cmd [[
augroup CppSpellComments
    autocmd!
    autocmd FileType cpp syntax match CommentSpell +/\*\_.\{-}\*/+ contains=@Spell
    autocmd FileType cpp syntax match CommentSpell +//\_.*+ contains=@Spell
augroup END
]]

vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
--vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Set tab to 4
vim.o.shiftwidth = 4
-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- vim: ts=2 sts=2 sw=2 et
