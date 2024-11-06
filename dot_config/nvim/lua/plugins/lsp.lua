local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}
lspconfig.clangd.setup{}

lspconfig.arduino_language_server.setup({
    cmd = { "arduino_language_server", "-clangd", "/usr/bin/clangd", "-cli", "/usr/bin/arduino-cli", "-cli-config", "$HOME/.arduino15/arduino-cli.yaml", "-fqbn", "arduino:avr:uno" },
})
