local obsidian = require('obsidian')
obsidian.setup {
    workspaces = {
        {
            name = "school",
            path = "~/documents/vault/school",
        }
    },
    log_level = vim.log.levels.INFO,
    completion = {
        nvim_cmp = true,
        min_chars = 2,
    },
    mappings = {},
    new_notes_location = "current_dir",
    preferred_link_style = "wiki",
    image_name_func = function()
        return string.format("%s-", os.time())
    end,
    follow_url_func = function(url)
        vim.fn.jobstart({"xdg-open", url})
    end,
    use_advanced_uri = false,
    open_app_foreground = false,
    picker = {
        name = "telescope.nvim",
        mappings = {
            new = "<C-x>",
            insert_link = "<C-l>",
        }
    },

    sort_by = "modified",
    sort_reversed = true,
    open_notes_in = "current",
    callbacks = {
        -- TODO: Implement automatic git pulls and commits on startup and file write
        -- Runs at the end of `require("obsidian").setup()`.
        ---@param client obsidian.Client
        post_setup = function(client) end,

        -- Runs anytime you enter the buffer for a note.
        ---@param client obsidian.Client
        ---@param note obsidian.Note
        enter_note = function(client, note) end,

        -- Runs anytime you leave the buffer for a note.
        ---@param client obsidian.Client
        ---@param note obsidian.Note
        leave_note = function(client, note) end,

        -- Runs right before writing the buffer for a note.
        ---@param client obsidian.Client
        ---@param note obsidian.Note
        pre_write_note = function(client, note) end,

        -- Runs anytime the workspace is set/changed.
        ---@param client obsidian.Client
        ---@param workspace obsidian.Workspace
        post_set_workspace = function(client, workspace) end,
    },

  -- This requires you have `conceallevel` set to 1 or 2. See `:help conceallevel` for more details.
    ui = {
        enable = true,
        update_debounce = 200,
        checkboxes = {
          [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
          ["x"] = { char = "", hl_group = "ObsidianDone" },
          [">"] = { char = "", hl_group = "ObsidianRightArrow" },
          ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
        },
        bullets = { char = "•", hl_group = "ObsidianBullet" },
        external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
        reference_text = { hl_group = "ObsidianRefText" },
        highlight_text = { hl_group = "ObsidianHighlightText" },
        tags = { hl_group = "ObsidianTag" },
        block_ids = { hl_group = "ObsidianBlockID" },
        hl_groups = {
            ObsidianTodo = { bold = true, fg = "#e69875" },
            ObsidianDone = { bold = true, fg = "#7fbbb3" },
            ObsidianRightArrow = { bold = true, fg = "#e69875" },
            ObsidianTilde = { bold = true, fg = "#e67e80" },
            ObsidianBullet = { bold = true, fg = "#7fbbb3" },
            ObsidianRefText = { underline = true, fg = "#d699b6" },
            ObsidianExtLinkIcon = { fg = "#d699b6" },
            ObsidianTag = { italic = true, fg = "#7fbbb3" },
            ObsidianBlockID = { italic = true, fg = "#7fbbb3" },
            ObsidianHighlightText = { bg = "#4d4c43" },
        },
    },
    attachments = {
        img_folder = "attachments",
        img_text_func = function(client, path)
            path = client:vault_relative_path(path) or path
            return string.format("![%s](%s)", path.name, path)
        end,
    },
}


