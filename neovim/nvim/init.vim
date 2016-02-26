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

" colorscheme
colorscheme evening
set background=dark

" cursor shape
":let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" set line numbers
set number

" don't expand tabs
set noet

" tab switching
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Down> :tabclose<CR>
nnoremap <C-Up> :tab split <CR>

" hide status
set laststatus=0

" disable ex mode
nnoremap Q <nop>

" disable s being insert
nnoremap s <nop>

" highlighting
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
set cursorline

" folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" indent guide
"set list lcs=tab:\|-

" easy switching between splits
nnoremap <A-Left> <C-w><Left>
nnoremap <A-Right> <C-w><Right>
nnoremap <A-Down> <C-w><Down>
nnoremap <A-Up> <C-w><Up>

" split to the right and below
set splitbelow
set splitright

" open/close terminal emulator
nnoremap <A-Bslash> :te<CR>
"tnoremap <A-Bslash> <C-d><CR>

" ----- VIM-PLUG ----- "
" PlugInstall to install
" PlugUpdate to update
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'ap/vim-css-color'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'henrik/vim-indexed-search'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'easymotion/vim-easymotion'
call plug#end()

" ----- NERDTREE ----- "
autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-\> :NERDTreeToggle<CR>

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
	if exists("t:NERDTreeBufName")
		if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
				q
			endif
		endif
	endif
endfunction

" ----- SYNTASTIC ----- "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ignore some python errors
let g:syntastic_python_flake8_args = "--ignore=E501,W191"

"disable syntastic for html
let g:syntastic_disabled_filetypes=['html, xhtml']
let g:syntastic_html_checkers=['']
let g:syntastic_xhtml_checkers=['']

" set c++ compiler
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall'


" ----- YOUCOMPLETEME ----- "
let g:ycm_filetype_blacklist = {
			\ 'markdown' : 1,
			\ 'text' : 1
			\ }
" disabled ycm setting itself as syntastic checker
let g:ycm_register_as_syntastic_checker = 0

" ----- EASYMOTION ----- "
map <Leader> <Plug>(easymotion-prefix)

" ----- SNIPMATE ----- "
inoremap <C-`> <Plug>snipMateNextOrTrigger

" TODO remap toggling syntastic
" TODO map :FixWhitespace
" TODO map write and quit
