local ssr = require('ssr')
ssr.setup({
  keymaps = {
    close = '<esc>',
    next_match = 'n',
    prev_match = 'N',
    replace_all = '<cr>',
  },
})

vim.keymap.set({ 'n', 'x' }, '<leader>r', function() ssr.open() end)
