local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup {
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    window = {
        completion = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None,CursorLine:PmenuSel",
            col_offset = -3,
            side_padding = 0,
        },
        documentation = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
        }
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }),
    sources = cmp.config.sources({
	{
	    name = 'spell',
	    option = {
		keep_all_entires = false,
		enable_in_context = function()
		    return true
		end,
		preselect_correct_word = true,
	    }
	},
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'path' },
        { name = 'buffer' }
    }),
}

cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' },
        { name = 'buffer' }
    }),
})

cmp.setup.cmdline({ '/', '?' }, {
mapping = cmp.mapping.preset.cmdline(),
sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['pyright'].setup { capabilities = capabilities }
require('lspconfig')['bashls'].setup { capabilities = capabilities }
cmp.setup {
    formatting = {
	format = lspkind.cmp_format({
	    mode = 'symbol',
	    maxwidth = 50,
	    ellipsis_char = '...',
	    show_labelDetails = true,
	    before = function (entry, vim_item)
		return vim_item
	    end
	})
    }
}


