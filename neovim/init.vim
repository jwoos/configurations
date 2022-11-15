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
" <F2> <F4> <F5> <F6> <F7> <F8> <F9> <F10>
" <Leader>c <Leader>m
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

" Libraries
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-repeat'
Plug 'anuvyklack/hydra.nvim'

" movement within file
Plug 'easymotion/vim-easymotion'
Plug 'ggandor/leap.nvim'

" movement along marks

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" completion
Plug 'hrsh7th/nvim-compe'

" navigation
Plug 'kyazdani42/nvim-tree.lua'

" visual
Plug 'gregsexton/matchtag'
Plug 'Yggdroot/indentLine'
" https://github.com/nvim-lualine/lualine.nvim
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'

" utils
Plug 'foosoft/vim-argwrap'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nelstrom/vim-visual-star-search'
Plug 'nacro90/numb.nvim'

" editing
Plug 'raimondi/delimitmate'
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
set directory=~/.vim/swap//
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//

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
nnoremap z<S-t> H
nnoremap z<S-b> L
nnoremap z<S-z> M

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
set foldlevel=2

" use ` by default instead of '
nnoremap ' `
vnoremap ' `

" indent guide
set list lcs=tab:\|\ 

" tags
"nnoremap <C-]> g<C-]>
"vnoremap <C-]> g<C-]>
"nnoremap <C-[> <C-t>
"vnoremap <C-[> <C-t>

" open/close terminal emulator
nnoremap <F12> :te<CR>
"tnoremap <F12> <C-d><CR>

" set filetype correctly for c/c++
au BufRead,BufNewFile *.hpp set filetype=cpp
au BufRead,BufNewFile *.cpp set filetype=cpp
au BufRead,BufNewFile *.h set filetype=c
au BufRead,BufNewFile *.c set filetype=c

" set grep
set grepprg=rg\ --vimgrep

" multiple cursors
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
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				-- You can optionally set descriptions to the mappings (used in the desc parameter of
				-- nvim_buf_set_keymap) which plugins like which-key display
				["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
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
local lspsaga = require 'lspsaga'

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
vim.api.nvim_set_keymap('n', '<A-\\>', "<cmd>LSoutlineToggle<CR>", opts)
vim.api.nvim_set_keymap('n', 'bb', "<cmd>Lspsaga hover_doc<CR>", opts)
vim.api.nvim_set_keymap('n', 'bB', "<cmd>Lspsaga peek_definition<CR>", opts)
vim.api.nvim_set_keymap('n', 'bv', "<cmd>Lspsaga lsp_finder<CR>", opts)
vim.api.nvim_set_keymap('n', 'ba', "<cmd>Lspsaga code_action<CR>", opts)
vim.api.nvim_set_keymap('n', 'br', "<cmd>Lspsaga rename<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
-- vim.api.nvim_set_keymap('n', '<leader>B', "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
vim.api.nvim_set_keymap('n', '[d', "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.api.nvim_set_keymap('n', ']d', "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

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
" |          FZF           | "
" -------------------------- "
nnoremap <C-p> :Files<CR>
nnoremap <A-p> :Buffers<CR>
nnoremap <Leader>/ :BLines<CR>
nnoremap <Leader>? :Rg
nnoremap <A-m> :Marks<CR>

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
" |     DELIMITEMATE       | "
" -------------------------- "
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_inside_quotes = 1

" -------------------------- "
" |      nvim-compe        | "
" -------------------------- "
set completeopt=menuone,noselect
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:false
let g:compe.source.spell = v:false
let g:compe.source.tags = v:false
let g:compe.source.treesitter = v:false
let g:compe.source.snippets_nvim = v:false

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm({ 'keys': "\<Plug>delimitMateCR", 'mode': '' })
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

lua <<EOF
local t = function(str)
return vim.api.nvim_replace_termcodes(str, true, true, true)
		end

		local check_back_space = function()
		local col = vim.fn.col('.') - 1
		if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
			return true
		else
			return false
		end
	end

	-- Use (s-)tab to:
	--- move to prev/next item in completion menuone
	--- jump to prev/next snippet's placeholder
	_G.tab_complete = function()
	if vim.fn.pumvisible() == 1 then
		return t "<C-n>"
	elseif check_back_space() then
		return t "<Tab>"
	else
		return vim.fn['compe#complete']()
	end
end
_G.s_tab_complete = function()
if vim.fn.pumvisible() == 1 then
	return t "<C-p>"
else
	return t "<S-Tab>"
end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
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
" |       INDENTLINE       | "
" -------------------------- "
let g:indentLine_enabled = 1
let g:indentLine_char = '|'
let g:indentLine_setConceal = 1

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
