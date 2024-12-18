local sub = require('substitute')

sub.setup({})

vim.keymap.set("n", "s", sub.operator, { noremap = true })
vim.keymap.set("n", "ss", sub.line, { noremap = true })
vim.keymap.set("n", "S", sub.eol, { noremap = true })
vim.keymap.set("x", "s", sub.visual, { noremap = true })

vim.keymap.set("n", "<leader>x", require('substitute.exchange').operator, { noremap = true })
vim.keymap.set("x", "<leader>x", require('substitute.exchange').visual, { noremap = true })
