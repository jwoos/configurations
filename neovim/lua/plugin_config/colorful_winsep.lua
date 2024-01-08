require('colorful-winsep').setup({
	no_exec_files = {'NvimTree'},
	highlight = {
		fg = require('kanagawa.colors').setup().palette.sumiInk4,
		bg = vim.api.nvim_get_hl_by_name("Normal", true)["background"]
	}
})
