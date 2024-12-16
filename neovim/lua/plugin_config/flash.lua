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

vim.keymap.set({'n', 'x', 'o'}, 'S', flash.treesitter)
vim.keymap.set({'n', 'x', 'o'}, 's', flash.jump)
