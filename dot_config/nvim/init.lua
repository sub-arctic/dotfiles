-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
require 'options'

require 'keymaps'

require 'lazy-bootstrap'

require 'lazy-plugins'
require 'plugins'
vim.g.gruvbox_material_enable_italic=1
vim.g.gruvbox_material_diagnostic_text_highlight=1
vim.g.gruvbox_material_diagnostic_line_highlight=1
vim.g.gruvbox_material_diagnostic_virtual_text='highlighted'
vim.g.gruvbox_material_inlay_hints_background='dimmed'
vim.cmd [[colorscheme gruvbox-material]]
vim.g.background=dark
-- vim: ts=2 sts=2 sw=2 et
