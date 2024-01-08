require('neoclip').setup({
	history = 1000,
	length_limit = 1048576,
	enable_persistent_history = true,
	db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
	preview = true,
})

local fzf_handler = require('neoclip.fzf')
vim.keymap.set('n', '<Leader>y', fzf_handler, {noremap = true})

local register_specific_handler = function()
  vim.ui.input({prompt = "Register to yank into: "}, function(input)
		if input == nil then
			vim.print("Did not get any registers, aborting...")
			return
		end

    fzf_handler({input})
  end)
end

vim.keymap.set('n', '<c-y>', register_specific_handler, {noremap = true})
