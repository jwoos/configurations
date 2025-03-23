vim.cmd([[
let g:signify_line_highlight = 0
let g:signify_sign_add = '┃'
let g:signify_sign_delete = '┃'
let g:signify_sign_change = '┃'
let g:signify_sign_delete_first_line = '┃'
let g:signify_sign_change_delete = '┃'
let g:signify_sign_show_count = 0

nnoremap <a-c> :SignifyFold<CR>
nnoremap <c-c> :SignifyHunkDiff<CR>
nnoremap <Leader>c :SignifyDiff<CR>
]])
