vim.pack.add({'https://github.com/wellle/targets.vim'})

vim.api.nvim_create_autocmd({'User'}, {
	pattern = 'targets#mappings#user', 
	command = [[call targets#mappings#extend({'a': {}, 'B': {}, 'b': {}, 'q': {}})]]
})
