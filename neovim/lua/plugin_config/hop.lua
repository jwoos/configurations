local hop = require('hop')
local hop_hint = require('hop.hint')

hop.setup({
  jump_on_sole_occurrence = false,
})

vim.keymap.set({'n', 'x'}, '<Leader>S', function()
        hop.hint_words({
                direction = hop_hint.HintDirection.BEFORE_CURSOR,
        })
end)
vim.keymap.set({'n', 'x'}, '<Leader>s', function()
        hop.hint_words({
                direction = hop_hint.HintDirection.AFTER_CURSOR,
        })
end)

vim.keymap.set({'n', 'x'}, '<Leader>h', function()
        hop.hint_words({
                direction = hop_hint.HintDirection.BEFORE_CURSOR,
                current_line_only = true,
        })
end)
vim.keymap.set({'n', 'x'}, '<Leader>l', function()
        hop.hint_words({
                direction = hop_hint.HintDirection.AFTER_CURSOR,
                current_line_only = true,
        })
end)

vim.keymap.set({'n', 'x'}, '<Leader>k', function()
        hop.hint_lines({
                direction = hop_hint.HintDirection.BEFORE_CURSOR,
        })
end)
vim.keymap.set({'n', 'x'}, '<Leader>j', function()
        hop.hint_lines({
                direction = hop_hint.HintDirection.AFTER_CURSOR,
        })
end)

