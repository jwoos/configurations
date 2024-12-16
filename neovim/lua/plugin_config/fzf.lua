local fzf = require('fzf-lua')

fzf.setup({
  "default",
  winopts = {},
  fzf_opts = {
    ['--layout'] = 'default',
  },
  blines = {
    previewer = false
  }
})

vim.keymap.set("n", "<c-p>", fzf.files, { silent = true })
vim.keymap.set("n", "<A-p>", fzf.buffers, { silent = true })
vim.keymap.set("n", "<leader>/", fzf.blines, { silent = true })
vim.keymap.set("n", "<a-m>", fzf.marks, { silent = true })
-- vim.keymap.set({'n'}, '<leader>q', fzf.registers, {silent = true})
