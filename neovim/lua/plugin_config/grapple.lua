local grapple = require('grapple')
local path = require('plenary.path')

grapple.setup({
    ---@type "debug" | "info" | "warn" | "error"
    log_level = "warn",

    ---The scope used when creating, selecting, and deleting tags
    scope = "cwd",

    ---The save location for tags
    save_path = tostring(path:new(vim.fn.stdpath("data")) / "grapple"),

    ---Window options used for the popup menu
    popup_options = {
        relative = "editor",
        width = 120,
        height = 24,
        style = "minimal",
        focusable = false,
        border = "single",
    },

    integrations = {
        ---Support for saving tag state using resession.nvim
        resession = false,
    },
})

vim.keymap.set("n", "<leader>m", grapple.toggle, {})
vim.keymap.set("n", "<leader>M", grapple.toggle_tags, {})
vim.keymap.set("n", "<A-o>", grapple.cycle_backward, {})
vim.keymap.set("n", "<A-i>", grapple.cycle_forward, {})
