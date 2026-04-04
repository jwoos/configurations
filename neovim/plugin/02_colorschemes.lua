vim.pack.add({
	'https://github.com/rebelot/kanagawa.nvim',
	'https://github.com/nyoom-engineering/oxocarbon.nvim',
	'https://github.com/navarasu/onedark.nvim',
})

require('kanagawa').setup({
	theme = 'dragon',
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none"
				}
			}
		}
	}
})
vim.cmd('colorscheme kanagawa-dragon')
