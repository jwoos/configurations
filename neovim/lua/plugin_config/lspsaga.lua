local lspsaga = require('lspsaga')

lspsaga.setup({
  symbol_in_winbar = {
    separator = ' › ',
    show_file = false,
  },
  diagnostic_header = {'E', 'W', 'I', 'H'},
  code_action_keys = {
    quit = '<esc>',
    exec = '<CR>'
  },
  finder_action_keys = {
    open = "<CR>",
    vsplit = "<c-v>",
    split = "<c-s>",
    quit = "<esc>",
  },
  definition_action_keys = {
    edit = '<CR>',
    vsplit = '<c-v>',
    split = '<c-s>',
    quit = '<esc>',
  },
  rename_action_quit = "<esc>",
  finder_action_keys = {
    quit = '<esc>',
    open = '<CR>',
    vsplit = '<c-v>',
    split = '<c-s>',
    scroll_up = '<C-u>',
    scroll_down = '<C-d>'
  },
  max_preview_lines = 25,
  finder_icons = {
    def = '[def] ',
    ref = '[ref] ',
    link = '[link] ',
  },
  show_outline = {
    jump_key = '<CR>'
  },
	ui = {
		devicon = false,
	},
	lightbulb = {
		sign = false,
	}
})

local opts = { noremap=true, silent=true }
-- vim.keymap.set('n', '<A-\\>', "<cmd>Lspsaga outline<CR>", opts)
vim.keymap.set('n', 'bb', "<cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set('n', 'bB', "<cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set('n', 'bv', "<cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set('n', 'ba', "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set('n', 'br', "<cmd>Lspsaga rename<CR>", opts)
vim.keymap.set('n', '<leader>b', "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
-- vim.keymap.set('n', '<leader>B', "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
vim.keymap.set('n', '[d', "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set('n', ']d', "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
local lspsaga_diagnostics = require("lspsaga.diagnostic")
vim.keymap.set('n', '[e', function()
  lspsaga_diagnostics:goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
vim.keymap.set('n', ']e', function()
  lspsaga_diagnostics:goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)
