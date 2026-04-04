vim.pack.add('https://github.com/neovim/nvim-lspconfig')

-- disable inline diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		-- disable virtual text
		virtual_text = false,

		-- show signs
		signs = true,

		-- delay update diagnostics
		update_in_insert = false,
	}
)

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	-- vim.api.nvim_buf_set_option(bufnr, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')
	vim.api.nvim_buf_set_option(bufnr, 'formatexpr', "v:lua.require'conform'.formatexpr()")

	-- Mappings.
	-- everything commented out is using lspsaga

	-- not buffer specific
	local opts = {
		noremap=true,
		silent=true,
	}
	-- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
	-- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
	vim.keymap.set('n', '<leader>B', vim.diagnostic.setloclist, opts)

	-- buffer specific
	local bufopts = {
		noremap=true,
		silent=true,
		buffer=bufnr,
	}
	-- buf_set_keymap('n', 'bb', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
	vim.keymap.set('n', '<C-b>', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', '<A-b>', vim.lsp.buf.implementation, bufopts)
	-- buf_set_keymap('n', 'bn', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	-- buf_set_keymap('n', 'br', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

	-- Set some keybinds conditional on server capabilities
	if client.server_capabilities.documentFormattingProvider then
		-- vim.keymap.set('n', 'bf', function() vim.lsp.buf.format({async = true}) end, bufopts)
		vim.keymap.set('n', 'bf', function()
			require('conform').format({async = true})
		end, bufopts)
	end

	if client.server_capabilities.documentRangeFormattingProvider then
		-- vim.keymap.set('v', 'bf', function() vim.lsp.buf.format({async = true}) end, bufopts)
		vim.keymap.set('v', 'bf', function()
			require('conform').format({async = true})
		end, bufopts)
	end

	-- Set autocommands conditional on server_capabilities
	-- if client.server_capabilities.document_highlight then
	--   vim.api.nvim_exec([[
	--     hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
	--     hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
	--     hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
	--     augroup lsp_document_highlight
	--       autocmd! * <buffer>
	--       autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
	--       autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
	--     augroup END
	--   ]], false)
	-- end
end

local servers = require('lsp_servers')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do
	vim.lsp.config(lsp, {
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 100,
		},
		capabilities = capabilities,
	})
end

vim.lsp.enable(servers)
