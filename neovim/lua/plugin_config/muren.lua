local muren = require('muren')
muren.setup({
  -- general
  create_commands = true,
  filetype_in_preview = true,
  -- default togglable options
  two_step = false,
  all_on_line = true,
  preview = true,
  -- keymaps
  keys = {
    close = '<esc>',
    toggle_side = '<Tab>',
    toggle_options_focus = '<S-tab>',
    toggle_option_under_cursor = '<CR>',
    scroll_preview_up = '<c-u>',
    scroll_preview_down = '<c-d>',
    do_replace = '<CR>',
  },
  -- ui sizes
  patterns_width = 40,
  patterns_height = 10,
  options_width = 20,
  preview_height = 20,
  -- options order in ui
  order = {
    'buffer',
    'two_step',
    'all_on_line',
    'preview',
  },
  -- highlights used for options ui
  hl = {
    options = {
      on = '@string',
      off = '@variable.builtin',
    },
  },
})

local api = require('muren.api')
vim.keymap.set('n', '<leader>R', '<cmd>MurenOpen<CR>')
