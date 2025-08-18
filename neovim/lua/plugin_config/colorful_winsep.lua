require('colorful-winsep').setup({
        no_exec_files = {'NvimTree'},
        highlight = {
                fg = require('kanagawa.colors').setup({ theme = 'dragon' }).palette.lightBlue,
                bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg,
        },
        animate = {
                enabled = false
        }
})
