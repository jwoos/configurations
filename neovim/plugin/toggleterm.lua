vim.pack.add({'https://github.com/akinsho/toggleterm.nvim'})

local toggleterm = require("toggleterm")
toggleterm.setup({
	float_opts = {
		border = 'rounded',
	},
	open_mapping = '<F11>',
	direction = 'float'
})
