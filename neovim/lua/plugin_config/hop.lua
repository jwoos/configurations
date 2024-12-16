local hop = require('hop')
local hop_hint = require('hop.hint')

hop.setup({
	jump_on_sole_occurrence = true,
})

vim.keymap.set({'n', 'x'}, 'S', function()
	hop.hint_char2({ direction = hop_hint.HintDirection.BEFORE_CURSOR})
end)
vim.keymap.set({'n', 'x'}, 's', function()
	hop.hint_char2({ direction = hop_hint.HintDirection.AFTER_CURSOR})
end)

vim.keymap.set({'n', 'x'}, '<Leader>W', function()
	hop.hint_words({
		direction = hop_hint.HintDirection.BEFORE_CURSOR,
	})
end)
vim.keymap.set({'n', 'x'}, '<Leader>w', function()
	hop.hint_words({
		direction = hop_hint.HintDirection.AFTER_CURSOR,
	})
end)

vim.keymap.set({'n', 'x'}, '<Leader>E', function()
	hop.hint_words({
		direction = hop_hint.HintDirection.BEFORE_CURSOR,
		hint_position = hop_hint.HintPosition.END,
	})
end)
vim.keymap.set({'n', 'x'}, '<Leader>e', function()
	hop.hint_words({
		direction = hop_hint.HintDirection.AFTER_CURSOR,
		hint_position = hop_hint.HintPosition.END,
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

