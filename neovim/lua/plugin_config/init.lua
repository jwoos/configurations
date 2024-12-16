local files = {
	'autopairs',
	'betterwhitespace',
	'cmp',
	'colorful_winsep',
	'comment',
	'easy_align',
	'fidget',
	'fzf',
	'grapple',
	'hop',
	'indent_blankline',
	'iswap',
	'leap',
	'lspconfig',
	'lspsaga',
	'lspconfig',
	'lualine',
	'luasnip',
	'muren',
	'neoclip',
	'nrpattern',
	'numb',
	'nvim_tree',
	'other',
	'signify',
	'spread',
	'ssr',
	'targets',
	'toggleterm',
	'treesitter',
	'treesitter_textobject',
	'ufo'
}

for _, file in ipairs(files) do
	require('plugin_config/' .. file)
end
