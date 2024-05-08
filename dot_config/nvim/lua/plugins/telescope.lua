local map = vim.keymap.set
local telescope = require('telescope')
local telescope_builtin = require('telescope.builtin')

vim.cmd([[
  highlight link TelescopePromptCounter TelescopeNormal
  highlight link TelescopeSelection TelescopePromptPrefix
]])

telescope.setup({
    defaults = {
        border = true,
        prompt_title = true,
        results_title = true,
        color_devicons = false,
        layout_strategy = 'vertical',
        layout_config = {
            bottom_pane = {
                height = 20,
                preview_cutoff = 120,
                prompt_position = 'top'
            },
            center = {
                height = 0.4,
                preview_cutoff = 40,
                prompt_position = 'top',
                width = 0.7
            },
            horizontal = {
                prompt_position = 'top',
                preview_cutoff = 40,
                preview_height = 0.5,
                height = 0.9,
                width = 0.8
            }
        },
        sorting_strategy = 'ascending',
        prompt_prefix = ' ',
        selection_caret = ' → ',
        entry_prefix = '   ',
        file_ignore_patterns = {'node_modules'},
        path_display = { 'truncate' },
        results_title = false,
        prompt_title = false,
        preview = {
            treesitter = {
                enable = {
                    'css', 'dockerfile', 'elixir', 'erlang', 'fish',
                    'html', 'http', 'javascript', 'json', 'lua', 'php',
                    'python', 'regex', 'ruby', 'rust', 'scss', 'svelte',
                    'typescript', 'vue', 'yaml', 'markdown', 'bash', 'c',
                    'cmake', 'comment', 'cpp', 'dart', 'go', 'jsdoc',
                    'json5', 'jsonc', 'llvm', 'make', 'ninja', 'prisma',
                    'proto', 'pug', 'swift', 'todotxt', 'toml', 'tsx',
                }
            }
        },
        mappings = {
            i = {
                ['<esc>'] = require('telescope.actions').close,
            },
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = 'smart_case',        -- other options: 'ignore_case' or 'respect_case'
        }
    }
})

telescope.load_extension('projects', 'yank_history')
telescope.load_extension('chezmoi')
vim.keymap.set('n', '<leader>cz', telescope.extensions.chezmoi.find_files, {})
local function set_highlight(group, options)
    vim.api.nvim_set_hl(0, group, options)
end
set_highlight("TelescopePromptNormal", { bg = "#3d484b" })
set_highlight("TelescopePromptTitle", { bg = "#3d484b" })
set_highlight("TelescopePromptPrefix", { bg = "#3d484b" })
set_highlight("TelescopePromptCounter", { bg = "#3d484b" })
set_highlight("TelescopePromptBorder", { bg = "#3d484b" })
set_highlight("TelescopePreviewNormal", { bg = "#3d484b" })
set_highlight("TelescopePreviewTitle", { bg = "#3d484b" })
set_highlight("TelescopePreviewBorder", { bg = "#3d484b" })
set_highlight("TelescopePromptNormal", { bg = "#3d484b" })
set_highlight("TelescopeResultsTitle", { bg = "#3d484b" })
set_highlight("TelescopeResultsNormal", { bg = "#3d484b" })
set_highlight("TelescopeResultsBorder", { bg = "#3d484b" })
set_highlight("TelescopeSelection", { bg = "#a7c080", fg = "#2d353b" })
