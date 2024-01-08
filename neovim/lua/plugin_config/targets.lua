vim.api.nvim_create_autocmd({'User'}, 'targets#mappings#user', [[
		call targets#mappings#extend({
			\ 'a': {},
			\ 'B': {},
			\ 'b': {},
			\ 'q': {},
			\ })
]])
