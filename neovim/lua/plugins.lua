return {
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
	'sustech-data/wildfire.nvim',

	-- Color Schemes
	'rebelot/kanagawa.nvim',
	'nyoom-engineering/oxocarbon.nvim',
	'navarasu/onedark.nvim',
}