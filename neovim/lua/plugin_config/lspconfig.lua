local lspconfig = require('lspconfig')

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
		vim.keymap.set('n', 'bf', function() vim.lsp.buf.format({async = true}) end, bufopts)
	elseif client.server_capabilities.documentRangeFormattingProvider then
		vim.keymap.set('v', 'bf', function() vim.lsp.buf.format({async = true}) end, bufopts)
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

local configs = require('lspconfig.configs')

local servers = {
	-- bash
	"bashls",
	-- python
	"pylsp",
	-- c/c++
	"clangd",
	-- css
	"cssls",
	-- go
	"gopls",
	-- rust
	"rust_analyzer",
	-- java
	"jdtls",
	-- typescript
	"ts_ls",
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do
	local cmd = nil;
	if lsp == 'ts_ls' then
		cmd = {"npx", "typescript-language-server", "--stdio"}
	end

	lspconfig[lsp].setup({
		cmd = cmd,
		on_attach = on_attach,
		root_dir = function(fname)
			return vim.fn.getcwd()
		end,
		flags = {
			debounce_text_changes = 100,
		},
		capabilities = capabilities,
	})
end
