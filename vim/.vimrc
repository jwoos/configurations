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

" navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'

" visual
Plug 'gregsexton/matchtag'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'

" utils
Plug 'foosoft/vim-argwrap'
Plug 'ntpeters/vim-better-whitespace'

" editing
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-surround'
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
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" set swap, backup and undo directory
set directory=~/.vim/swap//
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//

" true color mode
set termguicolors

" cursor shape
"set guicursor=

" disable mouse
set mouse=

" colorscheme
colorscheme onedark
set background=dark
let g:onedark_terminal_italics = 1
"hi Normal ctermbg=None guibg=None
"hi NonText ctermbg=None guibg=None

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
noremap <silent> <Space> :nohl<CR>

" searching
" make searches case insensitive except when capital letter is present
set incsearch
set hlsearch
set ignorecase
set smartcase

" folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

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

" echo current filename
nnoremap <silent> <F2> :!echo %<CR>

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

" -------------------------- "
" |       EASYMOTION       | "
" -------------------------- "
map <Leader> <Plug>(easymotion-prefix)
map <Leader>W <Plug>(easymotion-b)
map <Leader>E <Plug>(easymotion-ge)

" vim-sneak mapping
nmap s <Plug>(easymotion-fl2)
nmap S <Plug>(easymotion-Fl2)
nmap <Leader>s <Plug>(easymotion-fn)
nmap <Leader>S <Plug>(easymotion-Fn)
vmap s <Plug>(easymotion-fl2)
vmap S <Plug>(easymotion-Fl2)
vmap <Leader>s <Plug>(easymotion-fn)
vmap <Leader>S <Plug>(easymotion-Fn)

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
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
" use shift tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<C-p>" : "\<S-tab>"

" show snippets with short names
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
nnoremap <F11> :call deoplete#toggle()<CR>

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
nnoremap <F3> :ArgWrap<CR>

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
