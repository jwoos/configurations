local ts = require('nvim-treesitter')

ts.setup({})

-- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
local supported_languages = {
	'bash',
	'comment',
	'c',
	'cpp',
	'css',
	'csv',
	'diff',
	'dockerfile',
	'dot',
	'git_config',
	'git_rebase',
	'gitattributes',
	'gitcommit',
	'gitignore',
	'go',
	'graphql',
	'hack',
	'haskell',
	'html',
	'http',
	'ini',
	'java',
	'javascript',
	'jinja',
	'json',
	'kitty',
	'latex',
	'lua',
	'luadoc',
	'make',
	'markdown',
	'markdown_inline',
	'ninja',
	'pem',
	'python',
	'query',
	'readline',
	'regex',
	'requirements',
	'robot_txt',
	'rust',
	'sql',
	'ssh_config',
	'starlark',
	'strace',
	'terraform',
	'thrift',
	'tmux',
	'toml',
	'tsv',
	'typescript',
	'vim',
	'vimdoc',
	'xml',
	'yaml',
	'zsh',
}

local ignored_filetypes = {
	'checkhealth',
	'fidget',
	'fzf',
	'mason',
	'qf,'
}

ts.install(supported_languages)

vim.api.nvim_create_autocmd('FileType', {
  callback = function(event)
		if vim.tbl_contains(ignored_filetypes, event.match) then
			return
		end

		local lang = vim.treesitter.language.get_lang(event.match) or event.match

		local already_installed = ts.get_installed()
		if not vim.tbl_contains(already_installed, lang) then
			print(lang .. " couldn't be loaded in treesitter - ensure it is specified in the config")
			return
		end

		vim.treesitter.start()

		if vim.treesitter.query.get(lang, "indents") then
				vim.bo.indentexpr = "v:lua.require('nvim-treesitter').indentexpr()"
		end

		if vim.treesitter.query.get(lang, "folds") then
			vim.wo.foldmethod = "expr"
			vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		end
	end,
})
