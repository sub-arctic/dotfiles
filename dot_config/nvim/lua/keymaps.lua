vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = '[A]pply lsp quick fixes' })

vim.keymap.set('n', '<leader>lp', '<cmd>Lspsaga peek_definition<CR>', { noremap = true, silent = true, desc = 'Lspsaga: peek definition'})
vim.keymap.set('n', '<leader>lpt', '<cmd>Lspsaga peek_type_definition<CR>', { noremap = true, silent = true, desc = 'Lspsaga: peek type definition'})
vim.keymap.set('n', '<leader>lg', '<cmd>Lspsaga goto_definition<CR>', { noremap = true, silent = true, desc = 'Lspsaga: goto type'})
vim.keymap.set('n', '<leader>lgt', '<cmd>Lspsaga goto_type_definition<CR>', { noremap = true, silent = true, desc = 'Lspsaga: goto type definition'})

vim.keymap.set("n", "<leader>lr", "<cmd>Lspsaga rename<CR> ", { noremap = true, silent = true, desc = 'Lspsaga: rename identifier'})
vim.keymap.set("n", "<leader>lrp", "<cmd>Lspsaga rename<CR> ", { noremap = true, silent = true, desc = 'Lspsaga: rename identifier across project'})

vim.keymap.set('n', '<leader>lf', '<cmd>Lspsaga finder<CR>', { noremap = true, silent = true, desc = 'Lspsaga: finder'})
vim.keymap.set('n', '<leader>ld', '<cmd>Lspsaga hover_doc<CR>', { noremap = true, silent = true, desc = 'Lspsaga: open documentation'})

vim.keymap.set('n', '[e', '<cmd>Lspsaga diagnostic_jump_next', { noremap = true, silent = true, desc = "Lspsaga: jump to next diagnostic"})

vim.keymap.set('n', '<leader>tf', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true, desc = 'Telescope: find_files' })
vim.keymap.set('n', '<leader>to', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true, desc = 'Telescope: old files' })
vim.keymap.set('n', '<leader>ts', '<cmd>Telescope spell_suggest<CR>', { noremap = true, silent = true, desc = 'Telescope: spell suggest'})

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
