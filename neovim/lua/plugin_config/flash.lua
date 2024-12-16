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
