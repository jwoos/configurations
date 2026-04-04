vim.pack.add({src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main'})
vim.api.nvim_create_autocmd('PackChanged', {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind

		if name == 'nvim-treesitter' and kind == 'update' then
			if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
			vim.cmd('TSUpdate')
		end
	end
})

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

local language_alias = {
	configerator = {
		'python', {'cconf', 'cinc', 'configerator', 'conf'}
	}
}

local ignored_filetypes = {
	'checkhealth',
	'fidget',
	'fzf',
	'mason',
	'qf',
	'text',
	'toggleterm',
	'robot_txt'
}

ts.install(supported_languages)

vim.api.nvim_create_autocmd('FileType', {
  callback = function(event)
		if vim.tbl_contains(ignored_filetypes, event.match) then
			return
		end

		local lang = vim.treesitter.language.get_lang(event.match) or event.match
		local aliased_lang_info = language_alias[lang]

		local already_installed = ts.get_installed()
		if not vim.tbl_contains(already_installed, lang) and (not aliased_lang_info or (not vim.tbl_contains(already_installed, aliased_lang_info[1]))) then
			print(lang .. " couldn't be loaded in treesitter - ensure it is specified in the config directly or via aliasing")
			return
		end

		if aliased_lang_info then
			print('Registering alias '..aliased_lang_info[1]..' -> '..lang)
			vim.treesitter.language.register(aliased_lang_info[1], aliased_lang_info[2])
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
