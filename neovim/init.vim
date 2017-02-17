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

" NOT USED
" <F6> <F7>

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

Plug 'PeterRincker/vim-argumentative'
Plug 'Shougo/deoplete.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'benekastah/neomake'
Plug 'bronson/vim-trailing-whitespace'
Plug 'cloudhead/neovim-fuzzy'
Plug 'easymotion/vim-easymotion'
Plug 'foosoft/vim-argwrap'
Plug 'gregsexton/matchtag'
Plug 'haya14busa/vim-signjk-motion'
Plug 'junegunn/vim-slash'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
Plug 'kshenoy/vim-signature'
Plug 'majutsushi/tagbar'
Plug 'osyo-manga/vim-hopping'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'sjl/gundo.vim'
Plug 'thinca/vim-visualstar'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'wesq3/vim-windowswap'

Plug 'Haron-Prime/evening_vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'tyrannicaltoucan/vim-quantum'

" Plugins of interest
"Plug 'henrik/vim-indexed-search'
"Plug 'ap/vim-css-color'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'garbas/vim-snipmate'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'matze/vim-move'
"Plug 'metakirby5/codi.vim'
"Plug 'mileszs/ack.vim'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'tommcdo/vim-exchange'
"Plug 'vim-scripts/mru.vim'
"Plug 'xolox/vim-session'
call plug#end()

"            _                                              ____    _
"  _   __   (_)   ____ ___          _____  ____    ____    / __/   (_)   ____ _
" | | / /  / /   / __ `__ \        / ___/ / __ \  / __ \  / /_    / /   / __ `/
" | |/ /  / /   / / / / / /       / /__  / /_/ / / / / / / __/   / /   / /_/ /
" |___/  /_/   /_/ /_/ /_/        \___/  \____/ /_/ /_/ /_/     /_/    \__, /
"                                                                     /____/

" set 256 color mode
"set t_Co=256

" set python interpreter
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" true color mode
set termguicolors

function! ToggleColorscheme()
	if g:colors_name == 'PaperColor'
		colorscheme onedark
		set background=dark
	else
		colorscheme PaperColor
		set background=light
	endif
endfunction

nnoremap <F4> :call ToggleColorscheme()<CR>

" colorscheme
let g:quantum_black = 1
let g:quantum_italics = 1
let g:onedark_terminal_italics = 1

" light colorscheme
"colorscheme PaperColor
"set background=light

" dark colorscheme
colorscheme onedark
set background=dark

" cursor shape
":let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

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

" better navigation
vnoremap <C-h> ^
vnoremap <C-l> $
vnoremap <C-j> <C-d>
vnoremap <C-k> <C-u>
nnoremap <C-h> ^
nnoremap <C-l> $
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

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

" split to the right and below
set splitbelow
set splitright

" hide status
set laststatus=0

" remap esc to control-c for ease of use
inoremap <C-c> <ESC>

" live substitution
set inccommand=nosplit

" line highlight
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"set cursorline

" get rid of highlighting after search
"noremap <silent> <F2> :nohl<CR>

" searching
" make searches case insensitive except when capital letter is present
set ignorecase
set smartcase

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
nnoremap <silent> <F2> :!echo %<CR>

" redraw
nnoremap <silent> <F5> :redraw!<CR>

" set filetype correctly for c/c++
au BufRead,BufNewFile *.hpp set filetype=cpp
au BufRead,BufNewFile *.cpp set filetype=cpp
au BufRead,BufNewFile *.h set filetype=c
au BufRead,BufNewFile *.c set filetype=c

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
nnoremap <F8> :call WindowSwap#EasyWindowSwap()<CR>

" -------------------------- "
" |   TRAILING WHITESPACE  | "
" -------------------------- "
nnoremap <F1> :FixWhitespace<CR>
inoremap <F1> :FixWhitespace<CR>

" -------------------------- "
" |          ARGWRAP       | "
" -------------------------- "
nnoremap <F3> :ArgWrap<CR>

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
" |         GUNDO          | "
" -------------------------- "
let g:gundo_close_on_revert = 0
let g:gundo_help = 0
let g:gundo_right = 1
let g:gundo_return_on_revert = 0
nnoremap <F11> :GundoToggle<CR>

" -------------------------- "
" |     argumentative      | "
" -------------------------- "
nmap [m <Plug>Argumentative_Prev
nmap ]m <Plug>Argumentative_Next
xmap [m <Plug>Argumentative_XPrev
xmap ]m <Plug>Argumentative_XNext
nmap <m <Plug>Argumentative_MoveLeft
nmap >m <Plug>Argumentative_MoveRight
xmap im <Plug>Argumentative_InnerTextObject
xmap am <Plug>Argumentative_OuterTextObject
omap im <Plug>Argumentative_OpPendingInnerTextObject
omap am <Plug>Argumentative_OpPendingOuterTextObject

" -------------------------- "
" |        surround        | "
" -------------------------- "
" make surround $ work
let g:surround_36 = "$\r$"

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

" -------------------------- "
" |          ctrlp         | "
" -------------------------- "
"directories and files to ignore
"let g:ctrlp_custom_ignore = {
			"\ 'dir': '\.git$\|\.tmp$\|bower_components$\|node_modules$',
			"\ 'file': '\.swo$\|\.swp$\|\.pyc$'
			"\ }

"max number of files listed
"let g:ctrlp_max_files = 10000

" -------------------------- "
" |    MULTIPLECURSOR      | "
" -------------------------- "
"let g:multi_cursor_use_default_mapping=0
"let g:multi_cursor_next_key='<C-d>'
"let g:multi_cursor_prev_key='<C-a>'
"let g:multi_cursor_skip_key='<C-s>'
"let g:multi_cursor_quit_key='<C-c>'