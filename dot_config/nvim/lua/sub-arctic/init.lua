local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require('sub-arctic/plugins')
require('sub-arctic/project')
require('sub-arctic/mason')
require('sub-arctic/whichkey')
require('sub-arctic/comments')
require('sub-arctic/cmp')
require('sub-arctic/bufferline')
require('sub-arctic/devicons')
require('sub-arctic/gitsigns')
require('sub-arctic/lsp')
require('sub-arctic/lualine')
require('sub-arctic/minipairs')
require('sub-arctic/neotree')
require('sub-arctic/obsidian')
require('sub-arctic/telescope')
require('sub-arctic/treesitter')
require('sub-arctic/ufo')
require('sub-arctic/yanky')
require('colorizer').setup()
