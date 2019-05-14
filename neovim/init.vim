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
" <F4> <F5> <F6> <F7> <F8> <F9> <F10>
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

" Libraries
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-repeat'

" movement
Plug 'easymotion/vim-easymotion'

" completion
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}

" navigation
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

" visual
Plug 'gregsexton/matchtag'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'

" utils
Plug 'foosoft/vim-argwrap'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nelstrom/vim-visual-star-search'

" editing
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'machakann/vim-sandwich'
Plug 'wellle/targets.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'frioux/vim-regedit'

" Color Schemes
Plug 'Haron-Prime/evening_vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'fxn/vim-monochrome'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'rhysd/vim-color-spring-night'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'zcodes/vim-colors-basic'
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
colorscheme onedark
set background=dark
let g:onedark_terminal_italics = 1
"hi Normal ctermbg=None guibg=None
"hi NonText ctermbg=None guibg=None

set noshowmode

" set line numbers
set nonumber

" don't expand tabs
set noet
set tabstop=4
set softtabstop=0
set shiftwidth=4

" set key combination timeouts
set timeout
set timeoutlen=500

" update time
set updatetime=250

" unmap keys
nnoremap <C-]> <nop>
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

"=======================================================================================================
"              __                     _                                          ____    _
"     ____    / /  __  __   ____ _   (_)   ____          _____  ____    ____    / __/   (_)   ____ _
"    / __ \  / /  / / / /  / __ `/  / /   / __ \        / ___/ / __ \  / __ \  / /_    / /   / __ `/
"   / /_/ / / /  / /_/ /  / /_/ /  / /   / / / /       / /__  / /_/ / / / / / / __/   / /   / /_/ /
"  / .___/ /_/   \__,_/   \__, /  /_/   /_/ /_/        \___/  \____/ /_/ /_/ /_/     /_/    \__, /
" /_/                    /____/                                                            /____/
"=======================================================================================================

" ------------------------- "
" |   BETTER WHITESPACE    | "
" -------------------------- "
nnoremap <F1> :StripWhitespace<CR>
inoremap <F1> :StripWhitespace<CR>

" -------------------------- "
" |          FZF           | "
" -------------------------- "
nnoremap <C-p> :Files<CR>
nnoremap <A-\> :Buffers<CR>
nnoremap <A-p> :BLines<CR>
nnoremap b :Rg 
nnoremap B :Marks<CR>

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
" |       NERDTREE         | "
" -------------------------- "
"autocmd vimenter * NERDTree

let NERDTreeIgnore = ['\.pyc$', '\.o$', '__pycache__$[[dir]]']

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFind<CR>

" -------------------------- "
" |       EASYMOTION       | "
" -------------------------- "
map <Leader> <Plug>(easymotion-prefix)
map <Leader>W <Plug>(easymotion-b)
map <Leader>E <Plug>(easymotion-ge)

" vim-sneak mapping
"nmap s <Plug>(easymotion-fl2)
"nmap S <Plug>(easymotion-Fl2)
"nmap <Leader>s <Plug>(easymotion-fn)
"nmap <Leader>S <Plug>(easymotion-Fn)
"vmap s <Plug>(easymotion-fl2)
"vmap S <Plug>(easymotion-Fl2)
"vmap <Leader>s <Plug>(easymotion-fn)
"vmap <Leader>S <Plug>(easymotion-Fn)

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
" |       DEOPLETE         | "
" -------------------------- "
" disable deoplete preview
set completeopt-=preview
"set previewheight=2
set completeopt+=noinsert
set completeopt+=noselect
let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1

set completefunc=LanguageClient#complete

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
" use shift tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<C-p>" : "\<S-tab>"

" show snippets with short names
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
nnoremap <F11> :call deoplete#toggle()<CR>

" ----------------------------- "
" |       LANGUAGECLIENT      | "
" ----------------------------- "
" disable linting
let g:LanguageClient_diagnosticsEnable = 0

let g:LanguageClient_serverCommands = {
			\ 'sh': ['bash-language-server', 'start'],
			\ 'c': ['cquery', '--init={"cacheDirectory": "/Users/junwoo/.vim/plugcache/cquery"}'],
			\ 'cpp': ['cquery', '--init={"cacheDirectory": "/Users/junwoo/.vim/plugcache/cquery"}'],
			\ 'go': ['gopls'],
			\ 'javascript': ['javascript-typescript-stdio'],
			\ 'python': ['pyls'],
			\ 'rust': ['rustup', 'run', 'stable', 'rls'],
			\ 'typescript': ['javascript-typescript-stdio'],
			\ }

nnoremap <F4> :call LanguageClient_contextMenu()

" -------------------------- "
" |        SURROUND        | "
" -------------------------- "
" make surround $ work
let g:surround_36 = "$\r$"

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

" -------------------------- "
" |         TAGBAR         | "
" -------------------------- "
nnoremap <Leader>b :TagbarToggle<CR>

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

"=============================================================
"                                              __
"   __  __   ____   __  __   _____  ___   ____/ /
"  / / / /  / __ \ / / / /  / ___/ / _ \ / __  /
" / /_/ /  / / / // /_/ /  (__  ) /  __// /_/ /
" \__,_/  /_/ /_/ \__,_/  /____/  \___/ \__,_/
"=============================================================

" Plugins of interest
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-eunuch'
"Plug 'matze/vim-move'
"Plug 'metakirby5/codi.vim'
"Plug 'mileszs/ack.vim'
"Plug 'tommcdo/vim-exchange'
"Plug 'xolox/vim-session'
"Plug 'benekastah/neomake'
"Plug 'sjl/gundo.vim'
"Plug 'wesq3/vim-windowswap'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'liuchengxu/vista.vim'

" -------------------------- "
" |      INDENT GUIDES     | "
" -------------------------- "
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey

" -------------------------- "
" |        NEOMAKE         | "
" -------------------------- "
"noremap <F10> :Neomake<CR>
"autocmd! BufWritePost * Neomake
"let g:neomake_open_list = 2
"let g:neomake_list_height = 10

"let g:neomake_cpp_gcc_maker = {
	"\ 'exe': 'g++-6',
	"\ 'args': ['-std=c++14', '-g', '-I.', '-O0', 'Wall']
	"\ }

" -------------------------- "
" |         GUNDO          | "
" -------------------------- "
"let g:gundo_close_on_revert = 0
"let g:gundo_help = 0
"let g:gundo_right = 1
"let g:gundo_return_on_revert = 0
"nnoremap <F10> :GundoToggle<CR>

"let g:neomake_javascript_enabled_makers = ['eslint']
"let g:neomake_cpp_enabled_makers = ['gcc']
"let g:neomake_python_enabled_makers = ['flake8']

" -------------------------- "
" |      WINDOWSWAP        | "
" -------------------------- "
"let g:windowswap_map_keys = 0
"nnoremap <F8> :call WindowSwap#EasyWindowSwap()<CR>

" -------------------------- "
" |        UTILSNIPS       | "
" -------------------------- "
"let g:UltiSnipsExpandTrigger = '<C-x>'
"let g:UltiSnipsJumpForwardTrigger = '<C-s>'
"let g:UltiSnipsJumpBackwardTrigger = '<C-a>'

" ------------------------- "
" |      BUFEXPLORER      | "
" ------------------------- "
"let g:bufExplorerDisableDefaultKeyMapping = 1
"nnoremap <silent> <Leader>vv :BufExplorer<CR>
"nnoremap <silent> <Leader>v] :BufExplorerHorizontalSplit<CR>
"nnoremap <silent> <Leader>v[ :BufExplorerVerticalSplit<CR>


" -------------------------- "
" |        TABLEMODE       | "
" -------------------------- "
"let g:table_mode_corner = '|'
"let g:table_mode_resize_map = '<Leader>oo'
"let g:table_mode_tableize_op_map = '<Leader>O'
"let g:table_mode_add_formula_map = '<Leader>ofa'
"let g:able_mode_eval_expr_map = '<Leader>tfe'

"nnoremap <F3> :TableModeToggle<CR>
