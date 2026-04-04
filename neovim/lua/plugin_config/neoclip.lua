require('neoclip').setup({
	history = 1000,
	length_limit = 1048576,
	enable_persistent_history = true,
	db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
	preview = true,
	on_select = {
		move_to_front = true,
		close_telescope = true,
	},
	on_paste = {
		set_reg = false,
		move_to_front = true,
		close_telescope = true,
	},
})

local fzf_handler = require('neoclip.fzf')

vim.keymap.set('n', '<c-y>', fzf_handler, {noremap = true})
vim.keymap.set('n', '<a-y>', function()
  vim.ui.input({prompt = "Register to yank into: "}, function(input)
		if input == nil then
			fzf_handler()
			return
		end

    fzf_handler({input})
  end)
end, {noremap = true})

local put_from_reg = function(reg)
	local str = vim.fn.getreg(reg)
	vim.api.nvim_paste(str, false, -1)
end

-- vim.keymap.set('n', '<c-p>', function()
-- 	fzf_handler()
-- 	-- vim.cmd('normal! p')
-- end, {noremap = true})
-- vim.keymap.set('n', '<a-p>', function()
--   vim.ui.input({prompt = "Register to yank into: "}, function(input)
-- 		if input == nil then
-- 			fzf_handler()
-- 		else
-- 			fzf_handler({input})
-- 		end
-- 		vim.cmd('normal! "'..input..'p')
--   end)
-- end, {noremap = true})
