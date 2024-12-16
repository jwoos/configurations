local bqf = require('bqf')

bqf.setup({
	func_map = {
		open = '<CR>',
		tab = 't',
		split = '<a-]>',
		vsplit = '<a-[>',
		prevfile = '<c-p>',
		nextfile = '<c-n>',
		prevhist = '<',
		nexthist = '>',
		stoggleup = '<s-tab>',
		stoggledown = '<tab>',
		stogglevm = '<tab>',
		sclear = 'z<tab>',
		pscrollup = '<c-k>',
		pscrolldown = '<c-j>',
	}
})
