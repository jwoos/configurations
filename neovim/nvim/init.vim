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

" ----- VIM options ----- "
" set 256 color mode
set t_Co=256

" true color mode
:let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" set python interpreter
let g:python3_host_prog = '/usr/bin/python3'

" colorscheme
colorscheme evening
set background=dark

" cursor shape
":let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" set line numbers
set number

" don't expand tabs
set noet
set tabstop=4
set softtabstop=0
set shiftwidth=4

" disable mouse
set mouse=

" tab switching
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Down> :tabclose<CR>
nnoremap <C-Up> :tab split <CR>
tnoremap <C-Left> <C-Bslash><C-n>:tabprevious<CR>
tnoremap <C-Right> <C-Bslash><C-n>:tabnext<CR>
tnoremap <C-Down> <C-Bslash><C-n>:tabclose<CR>
tnoremap <C-Up> <C-Bslash><C-n>:tab split <CR>

" hide status
set laststatus=0

" remap esc to control-c for ease of use
inoremap <C-c> <Esc>

" unmap keys (sets to no op)
nnoremap Q <nop>
nnoremap s <nop>
nnoremap <F1> <nop>
inoremap <F1> <nop>
nnoremap <S-\> <nop>

" highlighting
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"set cursorline

" folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" indent guide
set list lcs=tab:\|\ 

" easy switching between splits
nnoremap <A-Left> <C-w><Left>
nnoremap <A-Right> <C-w><Right>
nnoremap <A-Down> <C-w><Down>
nnoremap <A-Up> <C-w><Up>
tnoremap <A-Left> <C-\><C-n><C-w><Left>
tnoremap <A-Right> <C-\><C-n><C-w><Right>
tnoremap <A-Down> <C-\><C-n><C-w><Down>
tnoremap <A-Up> <C-\><C-n><C-w><Up>

" split to the right and below
set splitbelow
set splitright

" open/close terminal emulator
nnoremap <F12> :te<CR>
"tnoremap <F12> <C-d><CR>

" ----- VIM-PLUG ----- "
" PlugInstall to install
" PlugUpdate to update
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ap/vim-css-color'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'henrik/vim-indexed-search'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim'
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
" Plugins of interest
"Plug 'benekastah/neomake'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'Valloric/MatchTagAlways'
"Plug 'garbas/vim-snipmate'
"Plug 'majutsushi/tagbar'
"Plug 'tpope/vim-repeat'
"Plug 'Valloric/YouCompleteMe'
call plug#end()

"          _____                    _____            _____                    _____                    _____                    _____                    _____
"         /\    \                  /\    \          /\    \                  /\    \                  /\    \                  /\    \                  /\    \ 
"        /::\    \                /::\____\        /::\____\                /::\    \                /::\    \                /::\____\                /::\    \ 
"       /::::\    \              /:::/    /       /:::/    /               /::::\    \               \:::\    \              /::::|   |               /::::\    \ 
"      /::::::\    \            /:::/    /       /:::/    /               /::::::\    \               \:::\    \            /:::::|   |              /::::::\    \ 
"     /:::/\:::\    \          /:::/    /       /:::/    /               /:::/\:::\    \               \:::\    \          /::::::|   |             /:::/\:::\    \ 
"    /:::/__\:::\    \        /:::/    /       /:::/    /               /:::/  \:::\    \               \:::\    \        /:::/|::|   |            /:::/__\:::\    \ 
"   /::::\   \:::\    \      /:::/    /       /:::/    /               /:::/    \:::\    \              /::::\    \      /:::/ |::|   |            \:::\   \:::\    \ 
"  /::::::\   \:::\    \    /:::/    /       /:::/    /      _____    /:::/    / \:::\    \    ____    /::::::\    \    /:::/  |::|   | _____    ___\:::\   \:::\    \ 
" /:::/\:::\   \:::\____\  /:::/    /       /:::/____/      /\    \  /:::/    /   \:::\ ___\  /\   \  /:::/\:::\    \  /:::/   |::|   |/\    \  /\   \:::\   \:::\    \ 
"/:::/  \:::\   \:::|    |/:::/____/       |:::|    /      /::\____\/:::/____/  ___\:::|    |/::\   \/:::/  \:::\____\/:: /    |::|   /::\____\/::\   \:::\   \:::\____\
"\::/    \:::\  /:::|____|\:::\    \       |:::|____\     /:::/    /\:::\    \ /\  /:::|____|\:::\  /:::/    \::/    /\::/    /|::|  /:::/    /\:::\   \:::\   \::/    /
" \/_____/\:::\/:::/    /  \:::\    \       \:::\    \   /:::/    /  \:::\    /::\ \::/    /  \:::\/:::/    / \/____/  \/____/ |::| /:::/    /  \:::\   \:::\   \/____/
"          \::::::/    /    \:::\    \       \:::\    \ /:::/    /    \:::\   \:::\ \/____/    \::::::/    /                   |::|/:::/    /    \:::\   \:::\    \ 
"           \::::/    /      \:::\    \       \:::\    /:::/    /      \:::\   \:::\____\       \::::/____/                    |::::::/    /      \:::\   \:::\____\ 
"            \::/____/        \:::\    \       \:::\__/:::/    /        \:::\  /:::/    /        \:::\    \                    |:::::/    /        \:::\  /:::/    /
"             ~~               \:::\    \       \::::::::/    /          \:::\/:::/    /          \:::\    \                   |::::/    /          \:::\/:::/    /
"                               \:::\    \       \::::::/    /            \::::::/    /            \:::\    \                  /:::/    /            \::::::/    /
"                                \:::\____\       \::::/    /              \::::/    /              \:::\____\                /:::/    /              \::::/    /
"                                 \::/    /        \::/____/                \::/____/                \::/    /                \::/    /                \::/    /
"                                  \/____/          ~~                                                \/____/                  \/____/                  \/____/
"

" -------------------------- "
" |    TRAILING WHITESPACE | "
" -------------------------- "
nnoremap <F1> :FixWhitespace<CR>
inoremap <F1> :FixWhitespace<CR>

" -------------------------- "
" |       NERDTREE       | "
" -------------------------- "
autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-\> :NERDTreeToggle<CR>


" -------------------------- "
" |       EASYMOTION       | "
" -------------------------- "
map <Leader> <Plug>(easymotion-prefix)

" -------------------------- "
" |       INDENTLINE       | "
" -------------------------- "
let g:indentLine_enabled = 1
let g:indentLine_char = '|'

" -------------------------- "
" |    MULTIPLECURSOR      | "
" -------------------------- "
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-a>'
let g:multi_cursor_skip_key='<C-s>'
let g:multi_cursor_quit_key='<C-c>'

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

" -------------------------- "
" |       SYNTASTIC        | "
" -------------------------- "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap <F10> :SyntasticToggleMode<CR>
inoremap <F10> :SyntasticToggleMode<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_disabled_filetypes = ['html, xhtml']

"javascript
let g:syntastic_javascript_checkers = ["jshint"]
"c++
let g:syntastc_cpp_checkers = ["g++"]
let g:syntastic_cpp_compiler_args = '-std=c++14c -Wall -g -I.'
"python
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = "--ignore=E501,W191"
"html
let g:syntastic_html_checkers = ['']
let g:syntastic_xhtml_checkers = ['']
"sass
let g:syntastic_sass_checks = ['compass']

" -------------------------- "
" |         GUNDO          | "
" -------------------------- "
let g:gundo_close_on_revert = 0
let g:gundo_help = 0
let g:gundo_right = 1
let g:gundo_return_on_revert = 0
nnoremap <F11> :GundoToggle<CR>

" UNUSED PLUGINS

" ----- SNIPMATE ----- "
"let g:snips_trigger_key = '<C-s>'
"let g:snips_trigger_key_backwards = '<C-a>'

" ----- YOUCOMPLETEME ----- "
"let g:ycm_filetype_blacklist = {
"			\ 'markdown' : 1,
"			\ 'text' : 1
"			\ }
" disabled ycm setting itself as syntastic checker
"let g:ycm_register_as_syntastic_checker = 0

" python interpreter
"let g:ycm_python_binary_path = '/usr/bin/python3'

" ----- NEOMAKE ----- "
"autocmd! BufWritePost * Neomake
"noremap <F11> :Neomake<CR>

"let g:neomake_open_list = 1
"let g:neomake_list_height = 10

" C++
"let g:neomake_cpp_gcc_make = {
	"\ 'exe': 'g++',
	"\ 'args': ['-Wall', '-std=c++14'],
	"\ }

