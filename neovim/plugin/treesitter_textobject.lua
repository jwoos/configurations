require('nvim-treesitter-textobjects').setup({
	select = {
		-- Automatically jump forward to textobj, similar to targets.vim
		lookahead = true,

		-- You can choose the select mode (default is charwise 'v')
		--
		-- Can also be a function which gets passed a table with the keys
		-- * query_string: eg '@function.inner'
		-- * method: eg 'v' or 'o'
		-- and should return the mode ('v', 'V', or '<c-v>') or a table
		-- mapping query_strings to modes.
		selection_modes = {
			['@parameter.outer'] = 'v', -- charwise
			['@function.outer'] = 'V', -- linewise
			['@class.outer'] = '<c-v>', -- blockwise
		},
		-- If you set this to `true` (default is `false`) then any textobject is
		-- extended to include preceding or succeeding whitespace. Succeeding
		-- whitespace has priority in order to act similarly to eg the built-in
		-- `ap`.
		--
		-- Can also be a function which gets passed a table with the keys
		-- * query_string: eg '@function.inner'
		-- * selection_mode: eg 'v'
		-- and should return true of false
		include_surrounding_whitespace = true,
	},
	move = {
    -- whether to set jumps in the jumplist
    set_jumps = true,
  },
})

-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects/blob/main/BUILTIN_TEXTOBJECTS.md

-- select
local select = require('nvim-treesitter-textobjects.select')
local select_keymaps = {
	-- function
	["af"] = {query = "@function.outer", group = "textobjects"},
	["if"] = {query = "@function.inner", group = "textobjects"},
	-- class
	["ak"] = {query = "@class.outer", group = "textobjects"},
	["ik"] = {query = "@class.inner", group = "textobjects"},
	-- parameter
	["aa"] = {query = "@parameter.outer", group = "textobjects"},
	["ia"] = {query = "@parameter.inner", group = "textobjects"},
	-- loop
	["al"] = {query = "@loop.outer", group = "textobjects"},
	["il"] = {query = "@loop.inner", group = "textobjects"},
	-- conditional
	["ai"] = {query = "@conditional.outer", group = "textobjects"},
	["ii"] = {query = "@conditional.inner", group = "textobjects"},
	-- scope
	["as"] = {query = "@local.scope", group = "locals"},
}

for mapping, settings in pairs(select_keymaps) do
	vim.keymap.set({ "x", "o" }, mapping, function()
		select.select_textobject(settings.query, settings.group)
	end)
end

-- swap
local swap = require('nvim-treesitter-textobjects.swap')
vim.keymap.set("n", "bx", function()
  swap.swap_next("@parameter.inner")
end)
vim.keymap.set("n", "bX", function()
  swap.swap_previous("@parameter.outer")
end)

-- move
local move = require("nvim-treesitter-textobjects.move")
local move_keymaps = {
	-- function
	["]f"] = {query = "@function.outer", group = "textobjects", fn = move.goto_next_start},
	["[f"] = {query = "@function.outer", group = "textobjects", fn = move.goto_previous_start},
	["]F"] = {query = "@function.outer", group = "textobjects", fn = move.goto_next_end},
	["[F"] = {query = "@function.outer", group = "textobjects", fn = move.goto_previous_end},
	-- class
	["]k"] = {query = "@class.outer", group = "textobjects", fn = move.goto_next_start},
	["[k"] = {query = "@class.outer", group = "textobjects", fn = move.goto_previous_start},
	["]K"] = {query = "@class.outer", group = "textobjects", fn = move.goto_next_end},
	["[K"] = {query = "@class.outer", group = "textobjects", fn = move.goto_previous_end},
	-- loop
	["]l"] = {query = "@loop.outer", group = "textobjects", fn = move.goto_next_start},
	["[l"] = {query = "@loop.outer", group = "textobjects", fn = move.goto_previous_start},
	["]L"] = {query = "@loop.outer", group = "textobjects", fn = move.goto_next_end},
	["[L"] = {query = "@loop.outer", group = "textobjects", fn = move.goto_previous_end},
	-- conditional
	["]i"] = {query = "@conditional.outer", group = "textobjects", fn = move.goto_next_start},
	["[i"] = {query = "@conditional.outer", group = "textobjects", fn = move.goto_previous_start},
	["]I"] = {query = "@conditional.outer", group = "textobjects", fn = move.goto_next_end},
	["[I"] = {query = "@conditional.outer", group = "textobjects", fn = move.goto_previous_end},
	-- folds
	["]z"] = {query = "@fold", group = "folds", fn = move.goto_next_start},
	["[z"] = {query = "@fold", group = "folds", fn = move.goto_previous_start},
	["]Z"] = {query = "@fold", group = "folds", fn = move.goto_next_end},
	["[Z"] = {query = "@fold", group = "folds", fn = move.goto_previous_end},
	-- scopes
	["]s"] = {query = "@local.scope", group = "locals", fn = move.goto_next_start},
	["[s"] = {query = "@local.scope", group = "locals", fn = move.goto_previous_start},
	["]S"] = {query = "@local.scope", group = "locals", fn = move.goto_next_end},
	["[S"] = {query = "@local.scope", group = "locals", fn = move.goto_previous_end},
}

for mapping, settings in pairs(move_keymaps) do
	vim.keymap.set({ "n", "x", "o" }, mapping, function()
		settings.fn(settings.query, settings.group)
	end)
end

-- local ts_repeat_move = require "nvim-treesitter-textobjects.repeatable_move"
-- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
-- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)
