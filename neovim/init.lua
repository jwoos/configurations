--  modes           | recursive | not recursive | unmap
-- -----------------------------------------------------
--  normal          | nmap      | nnoremap      | nunmap
-- -----------------------------------------------------
--  visual/select   | vmap      | vnoremap      | vunmap
-- -----------------------------------------------------
--  visual          | xmap      | xnoremap      | xunmap
-- -----------------------------------------------------
--  select          | smap      | snoremap      | sunmap
-- -----------------------------------------------------
--  insert          | imap      | inoremap      | iunmap
-- -----------------------------------------------------
--  cli             | cmap      | cnoremap      | cunmap
-- -----------------------------------------------------
--  operator        | omap      | onoremap      | ounmap
-- -----------------------------------------------------
--  terminal        | tmap      | tnnoremap     | tunmap
-- -----------------------------------------------------
--
--  map refers to normal, visual, and insert
--
-- http://patorjk.com/software/taag/#p=display&h=0&v=0&f=Slant&t=test
--
--  NOT USED
--  <Space>
--  <F2> <F4> <F5> <F6> <F7> <F8> <F9> <F10>
--  <leader>t
--  <leader>f
--  <leader>r
--  <leader>?
--  <leader>d
--  <c-d>
--  <a-d>
--  <leader>y
--  <c-y>
--  <a-y>
--  <leader>x
--  <leader>a
--  <a-a>
--  <leader>x
--  <a-x>
--  ,
--  B
-- bm bM


--              __                     _
--     ____    / /  __  __   ____ _   (_)   ____    _____
--    / __ \  / /  / / / /  / __ `/  / /   / __ \  / ___/
--   / /_/ / / /  / /_/ /  / /_/ /  / /   / / / / (__  )
--  / .___/ /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/
-- /_/                    /____/
--
-- TODO find a better plugin for space indents
-- TODO separate settings into various files and source them here
local paq = require('paq')

paq({
	'savq/paq-nvim',
	-- TODO move to main branch later
	{'nvim-treesitter/nvim-treesitter', branch = 'main', build = ':TSUpdate'},

	'nvim-tree/nvim-web-devicons',

	-- libraries
	{'nvim-treesitter/nvim-treesitter-textobjects', branch = 'main'},
	'kana/vim-operator-user',
	'kana/vim-textobj-user',
	'tpope/vim-repeat',
	'nvim-lua/plenary.nvim',
	'kkharji/sqlite.lua',
	'kevinhwang91/promise-async',
	'AckslD/nvim-neoclip.lua',
	'mason-org/mason.nvim',
	-- TODO
	-- 'chrisgrieser/nvim-various-textobjs',
	-- 'anuvyklack/hydra.nvim',

	-- 'stevearc/conform.nvim',
	-- 'jake-stewart/multicursor.nvim'

	-- meta
	-- TODO
	-- 'folke/which-key.nvim',
	-- https://github.com/FeiyouG/commander.nvim

	-- session
	-- TODO
	-- 'gennaro-tedesco/nvim-possession',

	-- terminal
	'akinsho/toggleterm.nvim',

	-- movement within file
	'smoka7/hop.nvim',
	'folke/flash.nvim',

	-- movement along marks
	'cbochs/grapple.nvim',
	-- https://github.com/cbochs/portal.nvim

	-- lsp
	'neovim/nvim-lspconfig',
	'nvimdev/lspsaga.nvim',
	'mason-org/mason-lspconfig.nvim',

	-- snippets
	'L3MON4D3/LuaSnip',
	'rafamadriz/friendly-snippets',


	-- completion
	-- 'saadparwaiz1/cmp_luasnip'
	-- 'hrsh7th/cmp-nvim-lua'
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/nvim-cmp',

	-- navigation
	'kyazdani42/nvim-tree.lua',
	'rgroli/other.nvim',

	-- SSR
	'cshuaimin/ssr.nvim',
	'AckslD/muren.nvim',

	-- visual
	'gregsexton/matchtag',
	'lukas-reineke/indent-blankline.nvim',
	'nvim-lualine/lualine.nvim',
	'mhinz/vim-signify',
	'j-hui/fidget.nvim',
	'nvim-zh/colorful-winsep.nvim',
	-- TODO something like the following with status signs but not scroll bar?
	-- 'dstein64/nvim-scrollview',
	'folke/todo-comments.nvim',
	'kevinhwang91/nvim-bqf',

	-- folding
	'kevinhwang91/nvim-ufo',

	-- utils
	'ntpeters/vim-better-whitespace',
	'nelstrom/vim-visual-star-search',
	'nacro90/numb.nvim',

	-- editing
	'windwp/nvim-autopairs',
	'numToStr/Comment.nvim',
	'kylechui/nvim-surround',
	'gbprod/substitute.nvim',
	'wellle/targets.vim',
	-- generally should be installed on system but required for bqf
	'junegunn/fzf',
	'ibhagwan/fzf-lua',
	'junegunn/vim-easy-align',
	'zegervdv/nrpattern.nvim',

	-- Color Schemes
	'rebelot/kanagawa.nvim',
	'nyoom-engineering/oxocarbon.nvim',
	'navarasu/onedark.nvim',
})

--            _                                              ____    _
--  _   __   (_)   ____ ___          _____  ____    ____    / __/   (_)   ____ _
-- | | / /  / /   / __ `__ \        / ___/ / __ \  / __ \  / /_    / /   / __ `/
-- | |/ /  / /   / / / / / /       / /__  / /_/ / / / / / / __/   / /   / /_/ /
-- |___/  /_/   /_/ /_/ /_/        \___/  \____/ /_/ /_/ /_/     /_/    \__, /
--                                                                     /____/
--

-- set python interpreter
vim.g.python3_host_prog = '/usr/local/bin/python3'
vim.g.python_host_prog = '/usr/local/bin/python2'

-- set swap, backup and undo directory
vim.opt.undodir = vim.fn.stdpath('data') .. '/undo//'
vim.opt.backupdir = vim.fn.stdpath('data') .. '/backup//'
vim.opt.directory = vim.fn.stdpath('data') .. '/swap//'

-- true color mode
vim.opt.termguicolors = true

-- cursor shape
-- vim.opt.guicursor =

-- enable mouse
vim.opt.mouse = 'a'

-- colorscheme
vim.opt.background = 'dark'

require('kanagawa').setup({
	theme = 'dragon',
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none"
				}
			}
		}
	}
})

vim.cmd('colorscheme kanagawa-dragon')

vim.opt.showmode = false

-- line numbers
vim.opt.number = false

-- don't expand tabs
vim.opt.et = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 2

-- set key combination timeouts
vim.opt.timeout = true
vim.opt.timeoutlen = 250

-- undofile
vim.opt.undofile = false

-- update time
vim.opt.updatetime = 2000

-- split to the right and below
vim.opt.splitbelow = true
vim.opt.splitright = true

-- show status
vim.opt.laststatus = 2

-- live susstitution
vim.opt.inccommand = 'nosplit'

-- line highlight
--autocmd WinEnter * setlocal cursorline
--autocmd WinLeave * setlocal nocursorline

-- searching
-- make searches case insensitive except when capital letter is present
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- folding
-- set in nvim ufo
-- set foldmethod=manual
-- set foldnestmax=10
-- set nofoldenable
-- set foldlevel=20

-- indent guide
-- this is now set in indent-blankline
-- set list lcs=tab:\|\

-- set grep
vim.opt.grepprg = 'rg --vimgrep'

-- set session
vim.opt.sessionoptions = 'buffers,curdir,folds,winpos,winsize'

-- set filetype correctly for c/c++
vim.api.nvim_create_autocmd(
	{'BufRead', 'BufNewFile'},
	{
		pattern = {'*.hpp', '*.cpp'},
		command = 'set filetype=cpp'
	}
)
vim.api.nvim_create_autocmd(
	{'BufRead', 'BufNewFile'},
	{
		pattern = {'*.h', '*.c'},
		command = 'set filetype=c'
	}
)

--[[
	unmap keys
]]--
local keys_to_unbind = {
	-- unmap
	[{'n', 'v', 'o'}] = {
		-- '<C-d>',
		'<C-u>',
		'<C-t>',
		'<C-n>',
		'<Up>',
		'<Down>',
		'<Left>',
		'<Right>',
		'<C-w><Up>',
		'<C-w><Down>',
		'<C-w><Left>',
		'<C-w><Right>',
		'<C-r>',
		',',
		'ge',
		'b',
		'B',
		's',
		'S'
	},
	-- nunmap
	[{'n'}] = {
		'<C-]',
		'K',
		'Q',
		'<F1>',
		'<S-\\>',
	},
	-- vunmap
	[{'v'}] = {
		'J',
	}
};

for modes, keybindings in pairs(keys_to_unbind) do
	for _, keybinding in ipairs(keybindings) do
		vim.keymap.set(modes, keybinding, '<nop>')
	end
end

-- better navigations
local navigation_keybindings = {
	['<C-h>'] = '^',
	['<C-j>'] = '<C-d>',
	['<C-k>'] = '<C-u>',
	['<C-l>'] = '$',
}
for keybind, action in pairs(navigation_keybindings) do
	vim.keymap.set({'n', 'v'}, keybind, action)
end

-- folding
vim.keymap.set({'n'}, '[f', 'zk')
vim.keymap.set({'n'}, ']f', 'zj')

-- screen navigation
vim.keymap.set({'n'}, 'zT', 'H')
vim.keymap.set({'n'}, 'zZ', 'M')
vim.keymap.set({'n'}, 'zB', 'L')

-- tabs
vim.keymap.set({'n'}, '<tab>l', ':tabnext<CR>')
vim.keymap.set({'n'}, '<tab>h', ':tabprevious<CR>')
vim.keymap.set({'n'}, '<tab>j', ':tabclose<CR>')
vim.keymap.set({'n'}, '<tab>k', ':tabsplit<CR>')
vim.keymap.set({'n'}, '<tab><tab>', ':tabnew<CR>')

-- easy switching between splits
vim.keymap.set({'n'}, '<A-h>', '<C-w>h')
vim.keymap.set({'n'}, '<A-l>', '<C-w>l')
vim.keymap.set({'n'}, '<A-j>', '<C-w>j')
vim.keymap.set({'n'}, '<A-k>', '<C-w>k')

-- pane splitting
vim.keymap.set({'n'}, '<A-[>', '<C-w>v')
vim.keymap.set({'n'}, '<A-]>', '<C-w>s')

-- Move splits
vim.keymap.set({'n'}, 'H', '<C-w>H')
vim.keymap.set({'n'}, 'J', '<C-w>J')
vim.keymap.set({'n'}, 'K', '<C-w>K')
vim.keymap.set({'n'}, 'L', '<C-w>L')

-- remap merge
vim.keymap.set({'n'}, 'M', 'J')

-- remap : to be opposite of ;
vim.keymap.set({'n', 'v'}, ':', ',')

-- remap <C-r> to U
vim.keymap.set({'n'}, 'U', '<C-r>')

-- remap : to use enter
vim.keymap.set({'n', 'v'}, '<CR>', ':')

-- remap shift to mean backwards
vim.keymap.set({'n', 'v'}, 'E', 'ge')
vim.keymap.set({'n', 'v'}, 'W', 'b')

-- remap esc to c-c for ease of use
vim.keymap.set({'i'}, '<C-c>', '<esc>')

-- get rid of highlighting after search
vim.keymap.set({'n', 'v', 'o'}, '<F3>', ':nohl<CR>')

vim.keymap.set({'n'}, '<leader>q', ':reg<CR>')

-- disable treesitter highlighting for a buffer. helps with large files since ts will cause nvim to crash
vim.keymap.set({'n'}, '<F5>', ':TSBufDisable highlight<CR>')

-- copy current filename to + and therefore, the clipboard
vim.keymap.set({'n'}, '<F6>', ':let @+ = expand("%")<CR>')

vim.keymap.set({ 'n', 'x' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard after' })
vim.keymap.set({ 'n', 'x' }, '<leader>P', '"+P', { desc = 'Paste from system clipboard before' })

vim.keymap.set({ 'n', 'x' }, '<leader>y', '"+y', { desc = 'Yank to system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>yy', '"+yy', { desc = 'Yank to system clipboard linewise' })
vim.keymap.set({ 'n', 'x' }, '<leader>Y', '"+y$', { desc = 'Yank to system clipboard from cursor to end' })
vim.keymap.set({ 'n', 'x' }, '<leader>YY', '"+y^', { desc = 'Yank to system clipboard from cursor to start' })
vim.keymap.set({ 'n', 'x' }, 'Y', 'y$', { desc = 'Yank from cursor to end' })
vim.keymap.set({ 'n', 'x' }, 'YY', 'y^', { desc = 'Yank from cursor to start' })

vim.keymap.set({ 'n', 'x' }, '<leader>d', '"+d', { desc = 'Delete into system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>dd', '"+dd', { desc = 'Delete into system clipboard linewise' })
vim.keymap.set({ 'n', 'x' }, '<leader>D', '"+d$', { desc = 'Delete into system clipboard from cursor to end' })
vim.keymap.set({ 'n', 'x' }, '<leader>DD', '"+d^', { desc = 'Delete into system clipboard from cursor to start' })
vim.keymap.set({ 'n', 'x' }, 'D', 'd$', { desc = 'Delete to from cursor to start' })
vim.keymap.set({ 'n', 'x' }, 'DD', 'd^', { desc = 'Delete to system clipboard from cursor to end' })

vim.keymap.set({ 'n', 'x' }, 'C', 'c$', { desc = 'Change from cursor to end' })
vim.keymap.set({ 'n', 'x' }, 'CC', 'c^', { desc = 'Change from cursor to start' })

-- tags
--nnoremap <C-]> g<C-]>
--vnoremap <C-]> g<C-]>
--nnoremap <C-[> <C-t>
--vnoremap <C-[> <C-t>

-- open/close terminal emulator
--nnoremap <F12> :te<CR>
--tnoremap <F12> <C-d><CR>

-- load multiple cursors
vim.cmd('source ~/.config/nvim/multiple_cursors.vim')

-- sessions
require('sessions')

-- load all plugins
require('plugin_config')

-- lsp config
-- needs to be loaded after plugins since lspconfig has all of the configs
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
