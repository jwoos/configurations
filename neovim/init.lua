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
--  <F2> <F4> <F5> <F6> <F7> <F8> <F9> <F10> <F11>
--  <leader>s
--  <leader>w
--  <leader>e
--  <leader>t
--  <leader>f
--  <leader>r
--  ,
--  B


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
	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

	-- {'nvim-tree/nvim-web-devicons'},

	-- libraries
	'nvim-treesitter/nvim-treesitter-textobjects',
	'kana/vim-operator-user',
	'kana/vim-textobj-user',
	'tpope/vim-repeat',
	'nvim-lua/plenary.nvim',
	'kkharji/sqlite.lua',
	'kevinhwang91/promise-async',
	'AckslD/nvim-neoclip.lua',
	-- TODO
	-- 'chrisgrieser/nvim-various-textobjs',
	-- 'anuvyklack/hydra.nvim',

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
	'phaazon/hop.nvim',
	'ggandor/leap.nvim',

	-- movement along marks
	'cbochs/grapple.nvim',
	-- https://github.com/cbochs/portal.nvim

	-- lsp
	'neovim/nvim-lspconfig',
	'glepnir/lspsaga.nvim',

	-- snippets
	'L3MON4D3/LuaSnip',

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

	-- folding
	'kevinhwang91/nvim-ufo',

	-- utils
	'aarondiel/spread.nvim',
	'ntpeters/vim-better-whitespace',
	'nelstrom/vim-visual-star-search',
	'nacro90/numb.nvim',

	-- editing
	'windwp/nvim-autopairs',
	'numToStr/Comment.nvim',
	'machakann/vim-sandwich',
	'wellle/targets.vim',
	-- generally should be installed on system
	-- Plug 'junegunn/fzf'
	'ibhagwan/fzf-lua',
	-- TODO merge this into neoclip when macros are supported for fzf
	'ecthelionvi/NeoComposer.nvim',
	'junegunn/vim-easy-align',
	'zegervdv/nrpattern.nvim',
	'mizlan/iswap.nvim',

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
vim.opt.timeoutlen = 500

-- update time
vim.opt.updatetime = 250

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

-- tab switching
--nnoremap <S-h> :tabprevious<CR>
--nnoremap <S-l> :tabnext<CR>
--nnoremap <S-j> :tabclose<CR>
--nnoremap <S-k> :tab split <CR>

vim.keymap.set({'n'}, '<c-t>', ':tabnew<CR>')
vim.keymap.set({'n'}, '<a-t>', ':tabnew<CR>')

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
require('plugin_configs')
