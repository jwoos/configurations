local flash = require('flash')

flash.setup({
        modes = {
                search = {
                        enabled = false
                },
                char = {
      keys = {
                                "f",
                                "F",
                                "t",
                                "T",
                                ";",
                                [","] = ":",
                        },
                }
        }

})

vim.keymap.set({'n', 'x', 'o'}, '<leader>t', flash.treesitter)
vim.keymap.set({'n', 'x', 'o'}, '<leader>f', flash.jump)
