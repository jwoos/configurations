local wildfire = require('wildfire')

wildfire.setup({
	surrounds = {
		{ "(", ")" },
		{ "{", "}" },
		{ "<", ">" },
		{ "[", "]" },
	},
	keymaps = {
		init_selection = "`",
		node_incremental = "`",
		node_decremental = "~",
	},
	--keymaps will be unset in excluding filetypes
	filetype_exclude = {
		'checkhealth',
		'fidget',
		'fzf',
		'mason',
		'qf,'
	},
})
