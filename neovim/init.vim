" modes           | recursive | not recursive | unmap
"-----------------------------------------------------
" normal          | nmap      | nnoremap      | nunmap
"-----------------------------------------------------
" visual/select   | vmap      | vnoremap      | vunmap
"-----------------------------------------------------
" visual          | xmap      | xnoremap      | xunmap
"-----------------------------------------------------
" select          | smap      | snoremap      | sunmap
"-----------------------------------------------------
" insert          | imap      | inoremap      | iunmap
"-----------------------------------------------------
" cli             | cmap      | cnoremap      | cunmap
"-----------------------------------------------------
" operator        | omap      | onoremap      | ounmap
"-----------------------------------------------------
" terminal        | tmap      | tnnoremap     | tunmap
"-----------------------------------------------------
"
" map refers to normal, visual, and insert

"http://patorjk.com/software/taag/#p=display&h=0&v=0&f=Slant&t=test

" NOT USED
" <F2> <F4> <F5> <F6> <F7> <F8> <F9> <F10> <F11>
" <Leader>c
" ,
" Q

"              __                     _
"     ____    / /  __  __   ____ _   (_)   ____    _____
"    / __ \  / /  / / / /  / __ `/  / /   / __ \  / ___/
"   / /_/ / / /  / /_/ /  / /_/ /  / /   / / / / (__  )
"  / .___/ /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/
" /_/                    /____/

" TODO find a better plugin for space indents
" TODO separate settings into various files and source them here
call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" UI
" https://github.com/folke/noice.nvim

" Libraries
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-repeat'
" TODO
" Plug 'anuvyklack/hydra.nvim'

" meta
" TODO
" Plug 'folke/which-key.nvim'

" movement within file
Plug 'easymotion/vim-easymotion'
Plug 'ggandor/leap.nvim'

" movement along marks
Plug 'cbochs/grapple.nvim'
" https://github.com/cbochs/portal.nvim

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" snippets
Plug 'L3MON4D3/LuaSnip'

" completion
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

" navigation
Plug 'kyazdani42/nvim-tree.lua'

" SSR
Plug 'cshuaimin/ssr.nvim'

" visual
Plug 'gregsexton/matchtag'
Plug 'lukas-reineke/indent-blankline.nvim'
" https://github.com/nvim-lualine/lualine.nvim
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'
Plug 'anuvyklack/pretty-fold.nvim'
Plug 'anuvyklack/fold-preview.nvim'

" utils
" https://github.com/Wansmer/treesj
Plug 'foosoft/vim-argwrap'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nelstrom/vim-visual-star-search'
Plug 'nacro90/numb.nvim'

" editing
Plug 'windwp/nvim-autopairs'
Plug 'numToStr/Comment.nvim'
Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'frioux/vim-regedit'
Plug 'junegunn/vim-easy-align'
Plug 'zegervdv/nrpattern.nvim'

" Color Schemes
Plug 'navarasu/onedark.nvim'
Plug 'rakr/vim-two-firewatch'
Plug 'glepnir/zephyr-nvim'


call plug#end()

"            _                                              ____    _
"  _   __   (_)   ____ ___          _____  ____    ____    / __/   (_)   ____ _
" | | / /  / /   / __ `__ \        / ___/ / __ \  / __ \  / /_    / /   / __ `/
" | |/ /  / /   / / / / / /       / /__  / /_/ / / / / / / __/   / /   / /_/ /
" |___/  /_/   /_/ /_/ /_/        \___/  \____/ /_/ /_/ /_/     /_/    \__, /
"                                                                     /____/

" set python interpreter
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/local/bin/python2'

" set swap, backup and undo directory
lua <<EOF

vim.opt.undodir = vim.fn.stdpath('data') .. '/undo//'
vim.opt.backupdir = vim.fn.stdpath('data') .. '/backup//'
vim.opt.directory = vim.fn.stdpath('data') .. '/swap//'

EOF

" true color mode
set termguicolors

" cursor shape
"set guicursor=

" enable mouse
set mouse=a

" colorscheme
lua << EOF
require('onedark').setup  {
	-- Main options --
	style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
	transparent = false,  -- Show/hide background
	term_colors = true, -- Change terminal color as per the selected theme style
	ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

	-- toggle theme style ---
	toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
	toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

	-- Change code style ---
	-- Options are italic, bold, underline, none
	-- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
	code_style = {
		comments = 'italic',
		keywords = 'none',
		functions = 'none',
		strings = 'none',
		variables = 'none'
	},

	-- Lualine options --
	lualine = {
		transparent = false, -- lualine center bar transparency
	},

	-- Custom Highlights --
	colors = {}, -- Override default colors
	highlights = {}, -- Override highlight groups

	-- Plugins Config --
	diagnostics = {
		darker = true, -- darker colors for diagnostic
		undercurl = true,   -- use undercurl instead of underline for diagnostics
		background = true,    -- use background color for virtual text
	},
}
EOF
set background=dark
colorscheme onedark
" override the SignColumn highlight
" lua Group.new('SignColumn', c.none, c.none, no)

"hi Normal ctermbg=None guibg=None
"hi NonText ctermbg=None guibg=None

set noshowmode

" set line numbers
set nonumber

" don't expand tabs
set noet
set tabstop=2
set softtabstop=0
set shiftwidth=2

" set key combination timeouts
set timeout
set timeoutlen=500

" update time
set updatetime=250

" unmap keys
nnoremap <C-]> <nop>
noremap <C-t> <nop>
noremap <C-n> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <C-w><Up> <nop>
noremap <C-w><Down> <nop>
noremap <C-w><Left> <nop>
noremap <C-w><Right> <nop>
nnoremap <C-r> <nop>
vnoremap <C-r> <nop>
noremap , <nop>
vnoremap J <nop>
nnoremap K <nop>
nnoremap Q <nop>
nnoremap s <nop>
nnoremap <F1> <nop>
nnoremap <S-\> <nop>
nnoremap ge <nop>
vnoremap ge <nop>
nnoremap b <nop>
vnoremap b <nop>
nnoremap B <nop>
vnoremap B <nop>

" better navigation
vnoremap <C-h> ^
vnoremap <C-l> $
vnoremap <C-j> <C-d>
vnoremap <C-k> <C-u>
nnoremap <C-h> ^
nnoremap <C-l> $
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

" screen navigation
nnoremap zT H
nnoremap zZ M
nnoremap zB L

" tab switching
"nnoremap <S-h> :tabprevious<CR>
"nnoremap <S-l> :tabnext<CR>
"nnoremap <S-j> :tabclose<CR>
"nnoremap <S-k> :tab split <CR>

" easy switching between splits
nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k

" pane splitting
nnoremap <A-[> <C-w>v
nnoremap <A-]> <C-w>s

" Move splits
nnoremap H <C-w>H
nnoremap L <C-w>L
nnoremap J <C-w>J
nnoremap K <C-w>K

" remap merge
nnoremap M J

" remap : to be opposite of ;
nnoremap : ,
vnoremap : ,

" remap <C-r> to U
nnoremap U <C-r>

" remap : to use enter
nnoremap <CR> :
vnoremap <CR> :

" remap to better delimited words
"vnoremap w W
"nnoremap w W
"vnoremap e E
"nnoremap e E

" remap shift to mean backwards
nnoremap E ge
vnoremap E ge
nnoremap W b
vnoremap W b

" split to the right and below
set splitbelow
set splitright

" show status
set laststatus=2

" remap esc to control-c for ease of use
inoremap <C-c> <ESC>

" live substitution
set inccommand=nosplit

" line highlight
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"set cursorline

" get rid of highlighting after search
noremap <silent> <Space> :nohl<CR>

" searching
" make searches case insensitive except when capital letter is present
set incsearch
set hlsearch
set ignorecase
set smartcase

" folding
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=20

" use ` by default instead of '
nnoremap ' `
vnoremap ' `

" indent guide
" set list lcs=tab:\|\ 

" tags
"nnoremap <C-]> g<C-]>
"vnoremap <C-]> g<C-]>
"nnoremap <C-[> <C-t>
"vnoremap <C-[> <C-t>

" open/close terminal emulator
" nnoremap <F12> :te<CR>
" tnoremap <F12> <C-d><CR>

" set filetype correctly for c/c++
au BufRead,BufNewFile *.hpp set filetype=cpp
au BufRead,BufNewFile *.cpp set filetype=cpp
au BufRead,BufNewFile *.h set filetype=c
au BufRead,BufNewFile *.c set filetype=c

" set grep
set grepprg=rg\ --vimgrep

" BEGIN: multiple cursors
let g:mc = "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>"

nnoremap cn *``cgn
nnoremap cN *``cgN

vnoremap <expr> cn g:mc . "``cgn"
vnoremap <expr> cN g:mc . "``cgN"

function! SetupCR()
	nnoremap <Enter> :nnoremap <lt>Enter> n@z<CR>q:<C-u>let @z=strpart(@z,0,strlen(@z)-1)<CR>n@z
endfunction

nnoremap cq :call SetupCR()<CR>*``qz
nnoremap cQ :call SetupCR()<CR>#``qz

vnoremap <expr> cq ":\<C-u>call SetupCR()\<CR>" . "gv" . g:mc . "``qz"
vnoremap <expr> cQ ":\<C-u>call SetupCR()\<CR>" . "gv" . substitute(g:mc, '/', '?', 'g') . "``qz"

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
	echo "@".getcmdline()
	execute ":'<,'>normal @".nr2char(getchar())
endfunction

" END: multiple cursors

" BEGIN: session
set sessionoptions=buffers,curdir,folds,winpos,winsize

lua << EOF

local function maybe_make_dir(path)
	if vim.fn.isdirectory(path) == 0 then
		vim.fn.mkdir(path, "p")
	end
end

local function get_normalized_cwd()
	local cwd = vim.fn.getcwd()
	local cwd_normalized = cwd:gsub('/', '__')
	return cwd_normalized
end

local function get_session_dir()
	return vim.fn.stdpath('data') .. '/sessions/'
end

local function get_session_path()
	local session_dir = get_session_dir()
	local cwd = get_normalized_cwd()

	return session_dir .. cwd
end

function make_session()
	local session_dir = get_session_dir()
	maybe_make_dir(session_dir)

	local session_path = get_session_path()

	vim.cmd('mks! ' .. session_path)
end
vim.keymap.set('n', '<F12><F12>', make_session)

function load_session()
	local session_path = get_session_path()

	local cmd = 'source ' .. session_path
	vim.cmd(cmd)
end
vim.keymap.set('n', '<F12>', load_session)

--[[
function delete_session()
	local session_path = get_session_path()

	vim.fn.delete(session_path)
end
vim.keymap.set('n', '<F10>', delete_session)
]]

EOF
" END: session

"=======================================================================================================
"              __                     _                                          ____    _
"     ____    / /  __  __   ____ _   (_)   ____          _____  ____    ____    / __/   (_)   ____ _
"    / __ \  / /  / / / /  / __ `/  / /   / __ \        / ___/ / __ \  / __ \  / /_    / /   / __ `/
"   / /_/ / / /  / /_/ /  / /_/ /  / /   / / / /       / /__  / /_/ / / / / / / __/   / /   / /_/ /
"  / .___/ /_/   \__,_/   \__, /  /_/   /_/ /_/        \___/  \____/ /_/ /_/ /_/     /_/    \__, /
" /_/                    /____/                                                            /____/
"=======================================================================================================
" ----------------------------- "
" |         TREESITTER        | "
" -----------------------------"
lua <<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = 'all',
	highlight = {
		enable = true,
		disable = {'rust'}
	},
}
EOF

" ----------------------------- "
" |          TARGETS          | "
" -----------------------------"
autocmd User targets#mappings#user call targets#mappings#extend({
    \ 'a': {},
    \ 'B': {},
    \ 'b': {},
    \ 'q': {},
    \ })

" ----------------------------- "
" |   TREESITTER-TEXTOBJECT   | "
" -----------------------------"
lua <<EOF
require'nvim-treesitter.configs'.setup {
	textobjects = {
		select = {
			enable = true,

			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,

			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = {query = "@class.outer", desc = "Select around class region"},
				["ic"] = {query = "@class.inner", desc = "Select inner part of a class region"},
				["aa"] = {query = "@parameter.outer", desc = "Select around parameter region"},
				["ia"] = {query = "@parameter.inner", desc = "Select inner part of a parameter region"},
			},
			-- You can choose the select mode (default is charwise 'v')
			--
			-- Can also be a function which gets passed a table with the keys
			-- * query_string: eg '@function.inner'
			-- * method: eg 'v' or 'o'
			-- and should return the mode ('v', 'V', or '<c-v>') or a table
			-- mapping query_strings to modes.
			selection_modes = {
				['@parameter.outer'] = 'v', -- charwise
				['@function.outer'] = 'V', -- linewise
				['@class.outer'] = '<c-v>', -- blockwise
			},
			-- If you set this to `true` (default is `false`) then any textobject is
			-- extended to include preceding or succeeding whitespace. Succeeding
			-- whitespace has priority in order to act similarly to eg the built-in
			-- `ap`.
			--
			-- Can also be a function which gets passed a table with the keys
			-- * query_string: eg '@function.inner'
			-- * selection_mode: eg 'v'
			-- and should return true of false
			include_surrounding_whitespace = true,
		},
		-- TODO set up the below
		-- swap = {
		--   enable = true,
		--   swap_next = {
		--     ["<leader>a"] = "@parameter.inner",
		--   },
		--   swap_previous = {
		--     ["<leader>A"] = "@parameter.inner",
		--   },
		-- }
		-- move = {
		--   enable = true,
		--   set_jumps = true, -- whether to set jumps in the jumplist
		--   goto_next_start = {
		--     ["]m"] = "@function.outer",
		--     ["]]"] = { query = "@class.outer", desc = "Next class start" },
		--   },
		--   goto_next_end = {
		--     ["]M"] = "@function.outer",
		--     ["]["] = "@class.outer",
		--   },
		--   goto_previous_start = {
		--     ["[m"] = "@function.outer",
		--     ["[["] = "@class.outer",
		--   },
		--   goto_previous_end = {
		--     ["[M"] = "@function.outer",
		--     ["[]"] = "@class.outer",
		--   },
		-- },
		-- lsp_interop = {
		--   enable = true,
		--   border = 'none',
		--   peek_definition_code = {
		--     ["<leader>df"] = "@function.outer",
		--     ["<leader>dF"] = "@class.outer",
		--   },
		-- },
		},
}
EOF

" ----------------------------- "
" |          LSPSAGA          | "
" -----------------------------"
lua << EOF

local lspsaga = require('lspsaga')

lspsaga.init_lsp_saga {
	symbol_in_winbar = {
		separator = '#',
		show_file = false,
	},
	diagnostic_header = {'E', 'W', 'I', 'H'},
	code_action_icon = '',
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
		scroll_up = '<C-k>',
		scroll_down = '<C-j>'
	},
	max_preview_lines = 25,
	finder_icons = {
		def = '[def] ',
		ref = '[ref] ',
		link = '[link] ',
	},
	show_outline = {
		jump_key = '<CR>'
	}
}

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<A-\\>', "<cmd>LSoutlineToggle<CR>", opts)
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
	lspsaga_diagnostics.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
vim.keymap.set('n', ']e', function()
	lspsaga_diagnostics.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)

EOF

" ----------------------------- "
" |          LSPCONFIG        | "
" -----------------------------"
lua << EOF
local lspconfig = require'lspconfig'

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

local configs = require'lspconfig/configs'

local servers = {
	-- bash
	"bashls",
	-- js/ts
	"tsserver",
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
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
		root_dir = function(fname)
		return vim.fn.getcwd()
		end,
		flags = {
			debounce_text_changes = 100,
		}
	}
end

EOF

" -------------------------- "
" |   BETTER WHITESPACE    | "
" -------------------------- "
nnoremap <F1> :StripWhitespace<CR>

" -------------------------- "
" |           SSR          | "
" -------------------------- "
lua vim.keymap.set({ 'n', 'x' }, 'bs', function() require('ssr').open() end)

" -------------------------- "
" |         COMMENT        | "
" -------------------------- "
lua <<EOF

require('Comment').setup({
    ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = 'gcc',
        ---Block-comment toggle keymap
        block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'gc',
        ---Block-comment keymap
        block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = 'gcO',
        ---Add comment on the line below
        below = 'gco',
        ---Add comment at the end of line
        eol = 'gcA',
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
})

EOF

" -------------------------- "
" |       EASY ALIGN       | "
" -------------------------- "
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" -------------------------- "
" |         GRAPPLE        | "
" -------------------------- "
lua <<EOF

local grapple = require('grapple')

grapple.setup({
    ---@type "debug" | "info" | "warn" | "error"
    log_level = "warn",

    ---The scope used when creating, selecting, and deleting tags
    ---@type Grapple.Scope
    scope = function()
        return vim.fn.getcwd()
    end,

    ---The save location for tags
    save_path = vim.fn.stdpath("data") .. "/grapple.json",

    ---Window options used for the popup menu
    popup_options = {
        relative = "editor",
        width = 120,
        height = 24,
        style = "minimal",
        focusable = false,
        border = "single",
    },

    integrations = {
        ---Support for saving tag state using resession.nvim
        resession = false,
    },
})

vim.keymap.set("n", "<leader>m", grapple.toggle, {})
vim.keymap.set("n", "<A-m>", grapple.popup_tags, {})
vim.keymap.set("n", "<A-o>", grapple.cycle_backward, {})
vim.keymap.set("n", "<A-i>", grapple.cycle_forward, {})

EOF


" -------------------------- "
" |          FZF           | "
" -------------------------- "
nnoremap <C-p> :Files<CR>
nnoremap <A-p> :Buffers<CR>
nnoremap <Leader>/ :BLines<CR>
nnoremap <Leader>? :Rg 
nnoremap <A-M> :Marks<CR>

command! -bang -nargs=* Rg
			\ call fzf#vim#grep(
			\   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
			\   <bang>0 ? fzf#vim#with_preview('up:60%')
			\           : fzf#vim#with_preview('right:50%:hidden', '?'),
			\   <bang>0)

let g:fzf_action = {
			\ 'ctrl-s': 'split',
			\ 'ctrl-v': 'vsplit'
			\ }

" -------------------------- "
" |      NVIM-TREE         | "
" -------------------------- "
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

lua <<EOF
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup {
	renderer = {
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				folder = false,
				file = false,
				folder_arrow = false,
				git = false,
			}
		},
		special_files = {"TARGETS", "BUCK"},
	},
	filters = {
		dotfiles = true,
		custom = {},
		exclude = {},
	},
	git = {
		enable = false,
		ignore = false,
		timeout = 400,
	},
	open_on_setup = false,
	update_focused_file = {
		enable = false,
	},
	view = {
		mappings = {
			custom_only = true,
			list = {
				{key = "<CR>", cb = tree_cb("edit")},
				{key = "o", cb = tree_cb("edit")},
				{key = "<C-v>", cb = tree_cb("vsplit")},
				{key = "<C-s>", cb = tree_cb("split")},
				{key = "<C-t>", cb = tree_cb("tabnew")},
				{key = "<S-CR>", cb = tree_cb("close_node")},
				{key = "<Tab>", cb = tree_cb("preview")},
				{key = "I", cb = tree_cb("toggle_ignored")},
				{key = "H", cb = tree_cb("toggle_dotfiles")},
				{key = "<C-r>", cb = tree_cb("refresh")},
				{key = "c", cb = tree_cb("create")},
				{key = "d", cb = tree_cb("remove")},
				{key = "r", cb = tree_cb("rename")},
				{key = "R", cb = tree_cb("full_rename")},
				{key = "x", cb = tree_cb("cut")},
				{key = "y", cb = tree_cb("copy")},
				{key = "p", cb = tree_cb("paste")},
				{key = "<", cb  = tree_cb("dir_up")},
				{key = ">", cb  = tree_cb("cd")},
				{key = "q", cb  = tree_cb("close")},
			}
		}
	}
}
EOF

nnoremap <C-\> :NvimTreeToggle<CR>
nnoremap <F3> :NvimTreeFindFile<CR>

" -------------------------- "
" |          LEAP          | "
" -------------------------- "
lua <<EOF

local leap = require('leap')

vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
vim.api.nvim_set_hl(0, 'LeapMatch', {
  fg = 'white',  -- for light themes, set to 'black' or similar
  bold = true,
  nocombine = true,
})
leap.opts.highlight_unlabeled_phase_one_targets = true

vim.keymap.set({'n', 'v', 'o'}, '<Leader>s', '<Plug>(leap-forward-to)')
vim.keymap.set({'n', 'v', 'o'}, '<Leader>S', '<Plug>(leap-backward-to)')
vim.keymap.set({'n', 'v', 'o'}, '<Leader>x', '<Plug>(leap-forward-till)')
vim.keymap.set({'n', 'v', 'o'}, '<Leader>X', '<Plug>(leap-backward-till)')

EOF

" -------------------------- "
" |       EASYMOTION       | "
" -------------------------- "
map <Leader> <Plug>(easymotion-prefix)
map <Leader>W <Plug>(easymotion-b)
map <Leader>E <Plug>(easymotion-ge)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" keep cursor column when JK motion
let g:EasyMotion_startofline = 0

" -------------------------- "
" |     nvim-autopairs     | "
" -------------------------- "
lua <<EOF

local ap = require('nvim-autopairs')
local rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')
local ts_conds = require('nvim-autopairs.ts-conds')

ap.setup({
	disable_filetype = { "TelescopePrompt" },
	disable_in_macro = false,  -- disable when recording or executing a macro
	disable_in_visualblock = false, -- disable when insert after visual block mode
	disable_in_replace_mode = true,
	ignored_next_char = [=[[%w%%%'%[%"%.]]=],
	enable_moveright = true,
	enable_afterquote = true,  -- add bracket pairs after quote
	enable_check_bracket_line = true,  --- check bracket in same line
	enable_bracket_in_quote = true, --
	enable_abbr = false, -- trigger abbreviation
	break_undo = true, -- switch for basic rule break undo sequence
	check_ts = true,
	map_cr = true,
	map_bs = true,  -- map the <BS> key
	map_c_h = false,  -- Map the <C-h> key to delete a pair
	map_c_w = false, -- map <c-w> to delete a pair if possible
})

ap.add_rules({
	rule('<', '>', {'cpp', 'rust'}):with_pair(function(opts)
		local fn1 = cond.before_regex('template%s+', -1)
		local fn2 = cond.before_regex('%w', 1)
		return fn1(opts) or fn2(opts)
	end),
})

-- integrate nvim-cmp with autopairs
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- local cmp = require('cmp')
-- cmp.event:on(
--   'confirm_done',
--   cmp_autopairs.on_confirm_done()
-- )

EOF

" -------------------------- "
" |         LUASNIP        | "
" -------------------------- "
lua require("luasnip.loaders.from_snipmate").lazy_load()

" -------------------------- "
" |        nvim-cmp        | "
" -------------------------- "
set completeopt=menu,menuone,noselect
lua <<EOF

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

-- Set up nvim-cmp.
local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
	snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
	},
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-x>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { 'i', 's' }),

		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { 'i', 's' }),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'buffer' },
		{ name = 'path' },
	})
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

cmp.setup.filetype('lua', {
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'nvim_lua' },
		{ name = 'buffer' },
		{ name = 'path' },
	})
})

-- TODO completion of lua doesn't work in embedded lua
cmp.setup.filetype('vim', {
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'nvim_lua' },
		{ name = 'buffer' },
		{ name = 'path' },
	})
})

EOF

" -------------------------- "
" |         REGEDIT        | "
" -------------------------- "
nmap <leader>q <Plug>(RegEditPostfix)

" -------------------------- "
" |          ARGWRAP       | "
" -------------------------- "
nnoremap <F2> :ArgWrap<CR>

" -------------------------- "
" |    Indent_BLANKLINE    | "
" -------------------------- "
lua <<EOF
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', {link = 'VertSplit'})
vim.api.nvim_set_hl(0, 'IndentBlanklineSpaceChar', {link = 'VertSplit'})
require("indent_blankline").setup {
    char = "│",
    show_trailing_blankline_indent = false,
}
EOF

" ----------------------------- "
" |         LIGHTLINE         | "
" ----------------------------- "
let g:lightline = {
			\ 'colorscheme': 'one',
			\ 'active': {
				\   'left': [ [ 'mode', 'paste' ],
				\             [ 'readonly', 'relativepath', 'modified'] ]
				\ },
				\ }

" ----------------------------- "
" |         NRPATTERN         | "
" ----------------------------- "
lua require("nrpattern").setup()

" ------------------------ "
" |         numb         | "
" ------------------------ "
lua require('numb').setup()

" -------------------------- "
" |       PRETTY-FOLD      | "
" -------------------------- "
lua <<EOF

local pf = require('pretty-fold')

pf.setup({
	sections = {
      left = {
         '+', function() return string.rep('-', vim.v.foldlevel) end, ' ', 'content',
      },
      right = {
         ' ', 'number_of_folded_lines', ' ',
         function(config) return config.fill_char:rep(3) end
      }
   },

   fill_char = '•',

   remove_fold_markers = true,

   -- Keep the indentation of the content of the fold string.
   keep_indentation = false,

   -- Possible values:
   -- "delete" : Delete all comment signs from the fold string.
   -- "spaces" : Replace all comment signs with equal number of spaces.
   -- false    : Do nothing with comment signs.
   process_comment_signs = 'delete',

   -- Comment signs additional to the value of `&commentstring` option.
   comment_signs = {},

   -- List of patterns that will be removed from content foldtext section.
   stop_words = {},

   add_close_pattern = true, -- true, 'last_line' or false

   matchup_patterns = {
      {  '{', '}' },
      { '%(', ')' }, -- % to escape lua pattern char
      { '%[', ']' }, -- % to escape lua pattern char
   },

   ft_ignore = {},
})

EOF

" -------------------------- "
" |      FOLD-PREVIEW      | "
" -------------------------- "
lua <<EOF

local fp = require('fold-preview')

fp.setup({
	default_keybindings = false,
	border = 'single'
})
vim.keymap.set('n', 'zs', fp.toggle_preview)

EOF
