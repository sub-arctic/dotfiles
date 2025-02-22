vim.opt.termguicolors = true
vim.opt.hlsearch = true
vim.opt.conceallevel = 2
vim.opt.relativenumber = true

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

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

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*.py",
  callback = function()
    require("lint").try_lint()
    require("lint").try_lint("flake8")
  end,
})

vim.opt.showmode = false
vim.opt.breakindent = true

vim.o.shiftwidth = 4
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.cursorline = true

vim.opt.scrolloff = 10

-- vim: ts=2 sts=2 sw=2 et
