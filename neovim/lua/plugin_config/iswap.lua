local iswap = require('iswap')

iswap.setup{
  keys = 'asdfghjklqwertyuiopzxcvbnm',
  grey = 'enable',
  hl_snipe = 'Search',
  hl_selection = 'Visual',
  hl_grey = 'Comment',
  flash_style = 'simultaneous',
  hl_flash = 'IncSearch',
  move_cursor = true,
  autoswap = true,
}
vim.keymap.set('n', 'bx', '<cmd>ISwapNodeWith<CR>', {silent = true})
vim.keymap.set('n', 'bX', '<cmd>ISwapWith<CR>', {silent = true})
