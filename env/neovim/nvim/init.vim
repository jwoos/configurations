" modes    | recursive | not recursive | unmap
"---------------------------------------------
" normal   | nmap      | nnoremap      | nunmap
"---------------------------------------------
" visual   | vmap      | vnoremap      | vunmap
"---------------------------------------------
" insert   | imap      | inoremap      | iunmap
"---------------------------------------------
"   cli    | cmap      | cnoremap      | cunmap
"---------------------------------------------
" terminal | tmap      | tnnoremap     | tunmap
"---------------------------------------------
"
" map refers to normal, visual, and insert

"http://patorjk.com/software/taag/#p=display&h=0&v=0&f=Slant&t=test

" <F6> and <F8> are not used

"              __                     _
"     ____    / /  __  __   ____ _   (_)   ____    _____
"    / __ \  / /  / / / /  / __ `/  / /   / __ \  / ___/
"   / /_/ / / /  / /_/ /  / /_/ /  / /   / / / / (__  )
"  / .___/ /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/
" /_/                    /____/

" TODO find a better plugin for space indents
" TODO separate settings into various files and source them here
call plug#begin('~/.config/nvim/plugged')
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'henrik/vim-indexed-search'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim'
Plug 'raimondi/delimitmate'
Plug 'benekastah/neomake'
Plug 'sjl/gundo.vim'
Plug 'gregsexton/matchtag'
Plug 'Yggdroot/indentLine'
Plug 'foosoft/vim-argwrap'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-operator-user'
Plug 'tommcdo/vim-exchange'
Plug 'tommcdo/vim-lion'
Plug 'osyo-manga/vim-hopping'
Plug 'cloudhead/neovim-fuzzy'
Plug 'wesq3/vim-windowswap'
Plug 'sheerun/vim-polyglot'

Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'NLKNguyen/papercolor-theme'
Plug 'Haron-Prime/evening_vim'
Plug 'tyrannicaltoucan/vim-quantum'
" Plugins of interest
"Plug 'mileszs/ack.vim'
"Plug 'vim-scripts/mru.vim'
"Plug 'matze/vim-move'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'scrooloose/syntastic'
"Plug 'garbas/vim-snipmate'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'metakirby5/codi.vim'
"Plug 'digitaltoad/vim-pug', {'for': 'pug'}
"Plug 'elzr/vim-json', {'for': 'json'}
"Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
"Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
"Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
"Plug 'digitaltoad/vim-jade', {'for': 'jade'}
"Plug 'othree/yajs.vim'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'kana/vim-textobj-user'
"Plug 'kchmck/vim-coffee-script'
"Plug 'jiangmiao/auto-pairs'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'ap/vim-css-color'
"Plug 'Valloric/MatchTagAlways'
"Plug 'tpope/vim-repeat'
"Plug 'Valloric/YouCompleteMe'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'wesq3/vim-windowswap'
"Plug 'klen/python-mode'
call plug#end()

"            _                                              ____    _
"  _   __   (_)   ____ ___          _____  ____    ____    / __/   (_)   ____ _
" | | / /  / /   / __ `__ \        / ___/ / __ \  / __ \  / /_    / /   / __ `/
" | |/ /  / /   / / / / / /       / /__  / /_/ / / / / / / __/   / /   / /_/ /
" |___/  /_/   /_/ /_/ /_/        \___/  \____/ /_/ /_/ /_/     /_/    \__, /
"                                                                     /____/

" set 256 color mode
"set t_Co=256

" true color mode
set termguicolors

" set python interpreter
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" colorscheme
let g:quantum_black = 1
let g:quantum_italics = 1

colorscheme onedark
set background=dark

" cursor shape
":let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" disable concealing quotations
let g:vim_json_syntax_conceal = 0

" set line numbers
set nonumber

" don't expand tabs
set noet
set tabstop=4
set softtabstop=0
set shiftwidth=4

" disable mouse
set mouse=

" unmap keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <C-w><Up> <nop>
noremap <C-w><Down> <nop>
noremap <C-w><Left> <nop>
noremap <C-w><Right> <nop>
nnoremap Q <nop>
nnoremap s <nop>
nnoremap <F1> <nop>
nnoremap <S-\> <nop>
nnoremap <S-j> <nop>

" better navigation
nnoremap <S-h> ^
nnoremap <S-l> $
nnoremap <S-j> <C-d>
nnoremap <S-k> <C-u>

" tab switching
"nnoremap <C-h> :tabprevious<CR>
"nnoremap <C-l> :tabnext<CR>
"nnoremap <C-j> :tabclose<CR>
"nnoremap <C-k> :tab split <CR>

" easy switching between splits
nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k

" pane splitting
nnoremap <A-[> <C-w>v
nnoremap <A-]> <C-w>s

" split to the right and below
set splitbelow
set splitright

" hide status
set laststatus=0

" remap esc to control-c for ease of use
inoremap <C-c> <ESC>

" live substitution
set inccommand=nosplit

" highlighting
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"set cursorline

" get rid of highlighting after search
noremap <silent> <F2> :nohl<CR>

" folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

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

" echo current filename
nnoremap <silent> <F3> :!echo %<CR>

"              __                     _                                          ____    _
"     ____    / /  __  __   ____ _   (_)   ____          _____  ____    ____    / __/   (_)   ____ _
"    / __ \  / /  / / / /  / __ `/  / /   / __ \        / ___/ / __ \  / __ \  / /_    / /   / __ `/
"   / /_/ / / /  / /_/ /  / /_/ /  / /   / / / /       / /__  / /_/ / / / / / / __/   / /   / /_/ /
"  / .___/ /_/   \__,_/   \__, /  /_/   /_/ /_/        \___/  \____/ /_/ /_/ /_/     /_/    \__, /
" /_/                    /____/                                                            /____/


" -------------------------- "
" |      WINDOWSWAP        | "
" -------------------------- "
let g:windowswap_map_keys = 0
nnoremap <F7> :call WindowSwap#EasyWindowSwap()<CR>

" -------------------------- "
" |   TRAILING WHITESPACE  | "
" -------------------------- "
nnoremap <F1> :FixWhitespace<CR>
inoremap <F1> :FixWhitespace<CR>

" -------------------------- "
" |          ARGWRAP       | "
" -------------------------- "
nnoremap <F4> :ArgWrap<CR>

" -------------------------- "
" |          ACK           | "
" -------------------------- "
let g:ackprg = 'ag --vimgrep'

" -------------------------- "
" |          FZY           | "
" -------------------------- "
nnoremap <C-p> :FuzzyOpen<CR>

" -------------------------- "
" |       NERDTREE         | "
" -------------------------- "
"autocmd vimenter * NERDTree

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-\> :NERDTreeToggle<CR>

" -------------------------- "
" |       EASYMOTION       | "
" -------------------------- "
map <Leader> <Plug>(easymotion-prefix)

" -------------------------- "
" |     BUNNYHOPPING       | "
" -------------------------- "
nnoremap <A-p> :HoppingStart<CR>

let g:hopping#keymapping = {
\   "\<C-n>" : "<Over>(hopping-next)",
\   "\<C-p>" : "<Over>(hopping-prev)",
\   "\<C-u>" : "<Over>(scroll-u)",
\   "\<C-d>" : "<Over>(scroll-d)",
\}

" -------------------------- "
" |     DELIMITEMATE       | "
" -------------------------- "
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_inside_quotes = 1


" -------------------------- "
" |       INDENTLINE       | "
" -------------------------- "
let g:indentLine_enabled = 1
let g:indentLine_char = '|'

" -------------------------- "
" |    MULTIPLECURSOR      | "
" -------------------------- "
"let g:multi_cursor_use_default_mapping=0
"let g:multi_cursor_next_key='<C-d>'
"let g:multi_cursor_prev_key='<C-a>'
"let g:multi_cursor_skip_key='<C-s>'
"let g:multi_cursor_quit_key='<C-c>'

" -------------------------- "
" |         TAGBAR         | "
" -------------------------- "
nnoremap <A-\> :TagbarToggle<CR>

" -------------------------- "
" |       DEOPLETE         | "
" -------------------------- "
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
nnoremap <F9> :call deoplete#toggle()<CR>


" -------------------------- "
" |        NEOMAKE         | "
" -------------------------- "
noremap <F10> :Neomake<CR>
"autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2
let g:neomake_list_height = 10

let g:neomake_cpp_gcc_maker = {
	\ 'exe': 'g++-6',
	\ 'args': ['-std=c++14', '-g', '-I.', '-O0', 'Wall']
	\ }

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_cpp_enabled_makers = ['gcc']
let g:neomake_python_enabled_makers = ['flake8']



" -------------------------- "
" |          ctrlp         | "
" -------------------------- "
"directories and files to ignore
let g:ctrlp_custom_ignore = {
			\ 'dir': '\.git$\|\.tmp$\|bower_components$\|node_modules$',
			\ 'file': '\.swo$\|\.swp$\|\.pyc$'
			\ }

"max number of files listed
let g:ctrlp_max_files = 10000

" -------------------------- "
" |         GUNDO          | "
" -------------------------- "
let g:gundo_close_on_revert = 0
let g:gundo_help = 0
let g:gundo_right = 1
let g:gundo_return_on_revert = 0
nnoremap <F11> :GundoToggle<CR>


"                                              __
"   __  __   ____   __  __   _____  ___   ____/ /
"  / / / /  / __ \ / / / /  / ___/ / _ \ / __  /
" / /_/ /  / / / // /_/ /  (__  ) /  __// /_/ /
" \__,_/  /_/ /_/ \__,_/  /____/  \___/ \__,_/
"
" -------------------------- "
" |        TABLEMODE       | "
" -------------------------- "
"let g:table_mode_corner = "|"
"let g:table_mode_resize_map = "<Leader>oo"
"let g:table_mode_tableize_op_map = "<Leader>O"
"let g:table_mode_add_formula_map = "<Leader>ofa"
"let g:able_mode_eval_expr_map = "<Leader>tfe"

"nnoremap <F3> :TableModeToggle<CR>

" -------------------------- "
" |         MOVE           | "
" -------------------------- "
"use A for alt and C for ctrl
"let g:move_key_modifier = 'A'

" -------------------------- "
" |         GUTENTAG       | "
" -------------------------- "
"set statusline+=%{gutentags#statusline('[CtagsGenerating...]')}
"let g:gutentags_project_root = ['.roottags', '.subtags']
"let g:gutentags_tagfile = 'tags'
"let g:gutentags_exclude = ['.disabletags']
"let g:gutentags_cache_dir = '~/.tags/'

" ----- SNIPMATE ----- "
"let g:snips_trigger_key = '<C-s>'
"let g:snips_trigger_key_backwards = '<C-a>'

" -------------------------- "
" |           MRU          | "
" -------------------------- "
"nnoremap <F6> :MRU<CR>
