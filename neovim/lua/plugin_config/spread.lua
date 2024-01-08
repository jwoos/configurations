local spread = require('spread')

local opts = {
  silent = true,
  noremap = true
}

vim.keymap.set('n', 'bM', spread.out, opts)
vim.keymap.set('n', 'bm', spread.combine, opts)
