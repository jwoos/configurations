vim.pack.add('https://github.com/mason-org/mason.nvim')

require("mason-lspconfig").setup({
	ensure_installed = require('lsp_servers'),
	automatic_enable = false
})
