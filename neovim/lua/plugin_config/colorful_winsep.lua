require('colorful-winsep').setup({
	no_exec_files = {'NvimTree'},
	highlight = require('kanagawa.colors').setup({ theme = 'dragon' }).palette.lightBlue,
	animate = {
		enabled = false
	}
})
