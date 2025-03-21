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
	borderchars = { "━", "┃", "━", "┃", "┏", "┓", " ┛", "┗" },
        prompt_title = true,
        results_title = true,
        color_devicons = true,
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
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
        }
    }
})

telescope.load_extension('projects', 'yank_history')
