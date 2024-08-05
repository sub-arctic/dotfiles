-- Telescope configuration
local map = vim.keymap.set
local telescope = require('telescope')
local telescope_builtin = require('telescope.builtin')

vim.cmd([[
  highlight link TelescopePromptCounter TelescopeNormal
  highlight link TelescopeSelection TelescopePromptPrefix
]])

local themes = {
  popup_list = {
    theme = 'popup_list',
    border = true,
    preview = false,
    prompt_title = false,
    results_title = false,
    sorting_strategy = 'ascending',
    layout_strategy = 'center',
    borderchars = {
      prompt  = { '─', '│', '─', '│', '┌', '┐', '┤', '└' },
      results = { '─', '│', '─', '│', '├', '┤', '┘', '└' },
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    },
  },
  popup_extended = {
    theme = 'popup_extended',
    prompt_title = false,
    results_title = false,
    layout_strategy = 'center',
    layout_config = {
      width = 0.7,
      height = 0.3,
      mirror = true,
      preview_cutoff = 1,
    },
    borderchars = {
      prompt  = { '─', '│', ' ', '│', '┌', '┐', '│', '│' },
      results = { '─', '│', '─', '│', '├', '┤', '┘', '└' },
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    },
  },
  command_pane = {
    theme = 'command_pane',
    preview = false,
    prompt_title = false,
    results_title = false,
    sorting_strategy = 'descending',
    layout_strategy = 'bottom_pane',
    layout_config = {
      height = 13,
      preview_cutoff = 1,
      prompt_position = 'bottom'
    },
  },
  ivy_plus = {
    theme = 'ivy_plus',
    preview = false,
    prompt_title = false,
    results_title = false,
    layout_strategy = 'bottom_pane',
    layout_config = {
      height = 13,
      preview_cutoff = 120,
      prompt_position = 'bottom'
    },
    borderchars = {
      prompt  = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
      results = { '─', '│', '─', '│', '┌', '┬', '┴', '└' },
      preview = { '─', '│', ' ', ' ', '─', '┐', '│', ' ' },
    },
  },
}

telescope.setup({
  defaults = {
    border = true,
    prompt_title = false,
    results_title = false,
    color_devicons = false,
    layout_strategy = 'horizontal',
    borderchars = {
      prompt  = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
      results = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    },
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
    prompt_title =false,
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

local use_layout = function(picker, layout)
  return function() picker(themes[layout]) end
end
local set_keymap = function(lhs, rhs)
  map('n', lhs, rhs, { noremap = true })
end
-- Unbind F1 key
vim.api.nvim_set_keymap('n', '<F1>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<F1>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<F1>', '<Nop>', { noremap = true, silent = true })
set_keymap('<leader>t', use_layout(telescope_builtin.builtin, 'popup_list'))
set_keymap('<leader>o', use_layout(telescope_builtin.find_files, 'popup_list'))
set_keymap('<leader>b', use_layout(telescope_builtin.buffers, 'popup_extended'))
set_keymap('<leader>p', use_layout(telescope_builtin.commands, 'command_pane'))
set_keymap('<leader>g', use_layout(telescope_builtin.git_status, 'popup_extended'))
set_keymap('<F1>',      use_layout(telescope_builtin.help_tags, 'popup_extended'))
-- local dap = telescope.extensions.dap
-- set_keymap('<leader>do', dap.commands)
-- set_keymap('<leader>dc', dap.configurations)
-- set_keymap('<leader>db', dap.list_breakpoints)
-- set_keymap('<leader>dv', dap.variables)
-- set_keymap('<leader>df', dap.frames)
