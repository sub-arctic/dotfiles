local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[██╗   ██╗ ██████╗ ██╗██████╗ ]],
    [[██║   ██║██╔═══██╗██║██╔══██╗]],
    [[██║   ██║██║   ██║██║██║  ██║]],
    [[╚██╗ ██╔╝██║   ██║██║██║  ██║]],
    [[ ╚████╔╝ ╚██████╔╝██║██████╔╝]],
    [[  ╚═══╝   ╚═════╝ ╚═╝╚═════╝ ]],
}
_Gopts = {
	position = "center",
	hl = "Type",
	wrap = "overflow";
}
-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "󰝒  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "󰈞  > Find file", ":Telescope find_files<CR>"),
    dashboard.button( "r", "󱔗  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "󰑴  > Note Taking" , ":cd ~/documents/vault<CR> :Neotree left<CR> :Telescope oldfiles <CR>"),
    dashboard.button( "q", "󰈆  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
