vim.pack.add('https://github.com/stevearc/conform.nvim')
local conform = require('conform')

conform.setup({
	-- Map of filetype to formatters
	formatters_by_ft = {},
	-- Custom formatters and overrides for built-in formatters
	formatters = {},
	default_format_opts = {
		lsp_format = "fallback",
	},
	notify_on_error = true,
	notify_no_formatters = true,
})
