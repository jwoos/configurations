
local leap = require('leap')

vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
vim.api.nvim_set_hl(0, 'LeapMatch', {
  fg = 'white',  -- for light themes, set to 'black' or similar
  bold = true,
  nocombine = true,
})
leap.opts.highlight_unlabeled_phase_one_targets = true

-- s adds a delay since it's used by surround
-- vim.keymap.set({'n', 'v', 'o'}, 's', '<Plug>(leap-forward-to)')
vim.keymap.set({'n', 'v', 'o'}, '<c-s>', '<Plug>(leap-forward-to)')
vim.keymap.set({'n', 'v', 'o'}, 'S', '<Plug>(leap-backward-to)')
