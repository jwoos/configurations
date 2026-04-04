vim.pack.add('https://github.com/lukas-reineke/indent-blankline.nvim')

require('ibl').setup({
  indent = {
    char = "▏",
    tab_char = "▏",
    smart_indent_cap = false,
  },
  whitespace = {
    remove_blankline_trail = true,
  },
  scope = {
    enabled = false,
  },
})
