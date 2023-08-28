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
" <Space>
" <F2> <F4> <F5> <F6> <F7> <F8> <F9> <F10> <F11>
" <Leader>c
" ,
" B

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

Plug 'nvim-tree/nvim-web-devicons'

" Libraries
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-repeat'
Plug 'nvim-lua/plenary.nvim'
Plug 'kkharji/sqlite.lua'
" TODO
" Plug 'anuvyklack/hydra.nvim'

" meta
" TODO
" Plug 'folke/which-key.nvim'
" https://github.com/FeiyouG/commander.nvim

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
Plug 'rgroli/other.nvim'

" SSR
Plug 'cshuaimin/ssr.nvim'
Plug 'AckslD/muren.nvim'

" visual
Plug 'gregsexton/matchtag'
Plug 'lukas-reineke/indent-blankline.nvim'
" https://github.com/nvim-lualine/lualine.nvim
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'

" folding
Plug 'kevinhwang91/nvim-ufo'

" utils
Plug 'aarondiel/spread.nvim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nelstrom/vim-visual-star-search'
Plug 'nacro90/numb.nvim'

" editing
Plug 'windwp/nvim-autopairs'
Plug 'numToStr/Comment.nvim'
Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
" generally should be installed on system
" Plug 'junegunn/fzf'
Plug 'ibhagwan/fzf-lua'
Plug 'ecthelionvi/NeoComposer.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'zegervdv/nrpattern.nvim'
Plug 'mizlan/iswap.nvim'

" Color Schemes
Plug 'rebelot/kanagawa.nvim'
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'navarasu/onedark.nvim'

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

vim.opt.background = 'dark'
vim.cmd('colorscheme kanagawa-dragon')

EOF

" override the SignColumn highlight
" lua Group.new('SignColumn', c.none, c.none, no)

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
noremap s <nop>
noremap S <nop>

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
noremap <silent> <F3> :nohl<CR>

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

lspsaga.setup({
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
})

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
lua <<EOF

local ssr = require('ssr')
ssr.setup({
  keymaps = {
    close = '<esc>',
    next_match = 'n',
    prev_match = 'N',
    replace_all = '<cr>',
  },
})

vim.keymap.set({ 'n', 'x' }, 'bs', function() ssr.open() end)

EOF

" -------------------------- "
" |          MUREN         | "
" -------------------------- "
lua <<EOF
local muren = require('muren')
muren.setup({
  -- general
  create_commands = true,
  filetype_in_preview = true,
  -- default togglable options
  two_step = false,
  all_on_line = true,
  preview = true,
  -- keymaps
  keys = {
    close = '<esc>',
    toggle_side = '<Tab>',
    toggle_options_focus = '<S-tab>',
    toggle_option_under_cursor = '<CR>',
    scroll_preview_up = '<Up>',
    scroll_preview_down = '<Down>',
    do_replace = '<CR>',
  },
  -- ui sizes
  patterns_width = 40,
  patterns_height = 10,
  options_width = 20,
  preview_height = 20,
  -- options order in ui
  order = {
    'buffer',
    'two_step',
    'all_on_line',
    'preview',
  },
  -- highlights used for options ui
  hl = {
    options = {
      on = '@string',
      off = '@variable.builtin',
    },
  },
})

local api = require('muren.api')
vim.keymap.set('n', 'bS', '<cmd>MurenOpen<CR>')

EOF

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
local scope = require('grapple.scope')
local path = require('plenary.path')

grapple.setup({
    ---@type "debug" | "info" | "warn" | "error"
    log_level = "warn",

    ---The scope used when creating, selecting, and deleting tags
    ---@type Grapple.Scope
    scope = scope.resolver(function()
      return vim.fn.getcwd()
    end, { cache = "DirChanged" }),

    ---The save location for tags
    save_path = tostring(path:new(vim.fn.stdpath("data")) / "grapple"),

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
lua <<EOF

local fzf = require('fzf-lua')

fzf.setup({
  "default",
  winopts = {},
  fzf_opts = {
    ['--layout'] = 'default',
  },
  blines = {
    previewer = false
  }
})

vim.keymap.set("n", "<c-p>", fzf.files, { silent = true })
vim.keymap.set("n", "<A-p>", fzf.buffers, { silent = true })
vim.keymap.set("n", "<leader>/", fzf.blines, { silent = true })
vim.keymap.set("n", "<leader>?", fzf.grep, { silent = true })
vim.keymap.set("n", "<a-m>", fzf.marks, { silent = true })

EOF


" -------------------------- "
" |      NVIM-TREE         | "
" -------------------------- "
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

lua <<EOF
local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end


  -- Default mappings not inserted as:
  --  remove_keymaps = true
  --  OR
  --  view.mappings.custom_only = true


  -- Mappings migrated from view.mappings.list
  --
  -- You will need to insert "your code goes here" for any mappings with a custom action_cb
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
  vim.keymap.set('n', '<C-s>', api.node.open.horizontal, opts('Open: Horizontal Split'))
  vim.keymap.set('n', '<C-t>', api.node.open.tab, opts('Open: New Tab'))
  vim.keymap.set('n', '<S-CR>', api.node.navigate.parent_close, opts('Close Directory'))
  vim.keymap.set('n', '<Tab>', api.node.open.preview, opts('Open Preview'))
  vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Dotfiles'))
  vim.keymap.set('n', '<C-r>', api.tree.reload, opts('Refresh'))
  vim.keymap.set('n', 'c', api.fs.create, opts('Create'))
  vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))
  vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
  vim.keymap.set('n', 'R', api.fs.rename_sub, opts('Rename: Omit Filename'))
  vim.keymap.set('n', 'x', api.fs.cut, opts('Cut'))
  vim.keymap.set('n', 'y', api.fs.copy.node, opts('Copy'))
  vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
  vim.keymap.set('n', '<', api.tree.change_root_to_parent, opts('Up'))
  vim.keymap.set('n', '>', api.tree.change_root_to_node, opts('CD'))
  vim.keymap.set('n', 'q', api.tree.close, opts('Close'))
end

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
  update_focused_file = {
    enable = false,
  },
  on_attach = on_attach,
}
EOF

nnoremap <C-\> :NvimTreeToggle<CR>
nnoremap \| :NvimTreeFindFile<CR>

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

vim.keymap.set({'n', 'v', 'o'}, 's', '<Plug>(leap-forward-to)')
vim.keymap.set({'n', 'v', 'o'}, 'S', '<Plug>(leap-backward-to)')
vim.keymap.set({'n', 'v', 'o'}, '<c-s>', '<Plug>(leap-forward-till)')
vim.keymap.set({'n', 'v', 'o'}, '<c-S>', '<Plug>(leap-backward-till)')

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
local utils = require('nvim-autopairs.utils')

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

local function move_for_angle_bracket(opts)
  -- this is adapted from the bracket logic in the plugin
  if opts.next_char == opts.char then
    if opts.char == '>' then
        return true
    end
    -- move right when have quote on end line or in quote
    -- situtaion  |"  => "|
    if utils.is_quote(opts.char) then
      if opts.col == string.len(opts.line) then
          return true
      end
      -- ("|")  => (""|)
      --  ""       |"      "  => ""       "|      "
      if utils.is_in_quotes(opts.line, opts.col - 1, opts.char) then
          return true
      end
    end
  end
  return false
end

ap.add_rules({
  rule('<', '>', {'cpp'}):with_pair(function(opts)
    local fn1 = cond.before_regex('template%s+', -1)
    local fn2 = cond.before_regex('%w', 1)
    local fn3 = cond.before_regex('#include%s+', -1)
    return fn1(opts) or fn2(opts) or fn3(opts)
  end):with_move(move_for_angle_bracket),
  rule('<', '>', {'rust'}):with_pair(function(opts)
    local fn1 = cond.before_regex('template%s+', -1)
    local fn2 = cond.before_regex('%w', 1)
    local fn3 = cond.before_regex('::', 2)
    return fn1(opts) or fn2(opts) or fn3(opts)
  end):with_move(move_for_angle_bracket),
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
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-c>'] = cmp.mapping.abort(),
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
" |       NeoComposer      | "
" -------------------------- "
lua <<EOF
require("NeoComposer").setup({
  notify = true,
  delay_timer = 150,
  colors = {
    bg = "#16161e",
    fg = "#ff9e64",
    red = "#ec5f67",
    blue = "#5fb3b3",
    green = "#99c794",
  },
  keymaps = {
    play_macro = "Q",
    yank_macro = "yq",
    stop_macro = "<c-q>",
    toggle_record = "q",
    cycle_next = "<a-q>",
    cycle_prev = "<a-Q>",
    toggle_macro_menu = "<leader>q",
  },
})
EOF

" -------------------------- "
" |       SPREAD.NVIM      | "
" -------------------------- "
lua <<EOF
local spread = require('spread')

local opts = {
  silent = true,
  noremap = true
}

vim.keymap.set('n', 'bM', spread.out, opts)
vim.keymap.set('n', 'bm', spread.combine, opts)

EOF

" -------------------------- "
" |    Indent_BLANKLINE    | "
" -------------------------- "
lua <<EOF
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', {link = 'Whitespace'})
vim.api.nvim_set_hl(0, 'IndentBlanklineSpaceChar', {link = 'Whitespace'})
require("indent_blankline").setup {
    char = "│",
    show_trailing_blankline_indent = false,
}
EOF

" ----------------------------- "
" |         LIGHTLINE         | "
" ----------------------------- "
let g:lightline = {
      \ 'colorscheme': 'wombat',
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

" -------------------------- "
" |         ISWAP          | "
" -------------------------- "
lua <<EOF

local iswap = require('iswap')

iswap.setup{
  keys = 'asdfghjklqwertyuiopzxcvbnm',
  grey = 'enable',
  hl_snipe = 'Search',
  hl_selection = 'Visual',
  hl_grey = 'Comment',
  flash_style = 'simultaneous',
  hl_flash = 'IncSearch',
  move_cursor = true,
  autoswap = true,
}
vim.keymap.set('n', 'bx', '<cmd>ISwapNodeWith<CR>', {silent = true})
vim.keymap.set('n', 'bX', '<cmd>ISwapWith<CR>', {silent = true})

EOF

" -------------------------- "
" |         OTHER          | "
" -------------------------- "
lua <<EOF

local other = require('other-nvim')

other.setup({
	mappings = {
		{
			pattern = "./(.*)/(.*).cpp$",
			target = {
				{
					target = "./%1/%2.h",
				},
				{
					target = "./%1/%2.hpp"
				}
			},
		},
		{
			pattern = "./(.*)/(.*).h$",
			target = "./%1/%2.cpp",
		},
		{
			pattern = "./(.*)/(.*).hpp$",
			target = "./%1/%2.cpp",
		},
	},
	transformers = {
		-- defining a custom transformer
		lowercase = function (inputString)
			return inputString:lower()
		end
	},
        hooks = {
		-- disable showing any files which don't exist
                filePickerBeforeShow = function(files)
                        for k, v in pairs(files) do
                                if not v.exists then
                                        table.remove(files, k)
                                end
                        end

                        return files
                end
        },
	style = {
		-- How the plugin paints its window borders
		-- Allowed values are none, single, double, rounded, solid and shadow
		border = "solid",

		-- Column seperator for the window
		seperator = "|",

		-- width of the window in percent. e.g. 0.5 is 50%, 1.0 is 100%
		width = 0.7,

		-- min height in rows.
		-- when more columns are needed this value is extended automatically
		minHeight = 5
	},
})

vim.keymap.set('n', '<leader>p', '<cmd>Other<CR>')

EOF

" -------------------------- "
" |          UFO           | "
" -------------------------- "
lua << EOF

vim.o.foldcolumn = '0' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:v,foldsep: ,foldclose:>]]

local ufo = require('ufo')

vim.keymap.set('n', 'zR', ufo.openAllFolds)
vim.keymap.set('n', 'zM', ufo.closeAllFolds)
vim.keymap.set('n', 'zr', ufo.openFoldsExceptKinds)
vim.keymap.set('n', 'zm', ufo.closeFoldsWith)
vim.keymap.set('n', 'zs', ufo.peekFoldedLinesUnderCursor)

local handler = function(virtText, lnum, endLnum, width, truncate)
        local newVirtText = {}
        local suffix = ('  <== %d '):format(endLnum - lnum)
        local sufWidth = vim.fn.strdisplaywidth(suffix)
        local targetWidth = width - sufWidth
        local curWidth = 0
        for _, chunk in ipairs(virtText) do
                local chunkText = chunk[1]
                local chunkWidth = vim.fn.strdisplaywidth(chunkText)
                if targetWidth > curWidth + chunkWidth then
                        table.insert(newVirtText, chunk)
                else
                        chunkText = truncate(chunkText, targetWidth - curWidth)
                        local hlGroup = chunk[2]
                        table.insert(newVirtText, {chunkText, hlGroup})
                        chunkWidth = vim.fn.strdisplaywidth(chunkText)
                        -- str width returned from truncate() may less than 2nd argument, need padding
                        if curWidth + chunkWidth < targetWidth then
                                suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
                        end
                        break
                end

                curWidth = curWidth + chunkWidth
        end
        table.insert(newVirtText, {suffix, 'MoreMsg'})
        return newVirtText
end

ufo.setup({
        open_fold_hl_timeout = 500,
        close_fold_kinds = {},
        provider_selector = function(bufnr, filetype, buftype)
                return {'treesitter', 'indent'}
        end,
        fold_virt_text_handler = handler,
        enable_get_fold_virt_text = false,
        preview = {
                border = 'shadow',
                winhighlight = 'Normal:Normal',
                winblend = 0,
                maxheight = 30,
                mapping = {
                        scrollU = '<C-u>',
                        scrollD = '<C-d>',
                },
        },
})

EOF
