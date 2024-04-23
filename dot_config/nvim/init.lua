-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
require 'options'

require 'keymaps'

require 'lazy-bootstrap'

require 'lazy-plugins'
require 'plugins'
vim.cmd [[colorscheme everforest]]
-- vim: ts=2 sts=2 sw=2 et
