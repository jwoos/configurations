local flash = require('flash')

flash.setup({
	modes = {
		search = {
			enabled = true
		},
		char = {
      keys = {
				"f",
				"F",
				"t",
				"T",
				";",
				[","] = ":",
			},
		}
	}

})

vim.keymap.set({'n', 'x', 'o'}, '<leader>S', flash.treesitter)
vim.keymap.set({'n', 'x', 'o'}, '<leader>s', flash.jump)
