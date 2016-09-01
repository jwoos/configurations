set nocompatible              " be iMproved, required
filetype off                  " required

" ----- VIM options ----- "
" Sets colorscheme, color, tab, and line numbers
set t_Co=256
syntax enable
set background=dark
colorscheme evening
set number
set tabstop=2 softtabstop=2 shiftwidth=2
set noexpandtab
set noet

filetype plugin indent on

" tab switching
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Down> :tabclose<CR>
nnoremap <C-Up> :tab split <CR>

" disable ex mode
nnoremap Q <nop>
nnoremap s <nop>

" hide status
:set laststatus=0

" split to the right and below
set splitbelow
set splitright

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
:set list lcs=tab:\|-

" ----- PATHOGEN ----- "
execute pathogen#infect()

" ----- NERDTREE ----- "
" Start nerdtree when vim opens
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
:imap <C-a> <Plug>snipMateNextOrTrigger
:smap <C-a> <Plug>snipMateNextOrTrigger

" ----- YOUCOMPLLETEME ----- "
"let g:ycm_key_list_select_completion = []

" TODO remap toggling syntastic
" TODO map :FixWhitespace
" TODO map write and quit
