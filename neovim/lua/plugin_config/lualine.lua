local lualine = require('lualine')

lualine.setup({
	options = {
		theme = 'auto',
		component_separators = '',
    section_separators = { left = '', right = '' },
		globalstatus = true,
		icons_enabled = false,
		disabled_filetypes = {},
	},
	extensions = {
		'fzf',
		'quickfix',
		'nvim-tree',
		'toggleterm'
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {
			{
				'filename',
				newfile_status = true,
				path = 1,
			}
		},
		lualine_c = {'diff', 'diagnostics'},
		lualine_x = {},
		lualine_y = {'searchcount', 'location'},
		lualine_z = {
			'encoding',
			{
			'fileformat',
			},
			'filetype'
		}
	},
	winbar = {},
	inactive_winbar = {},
	tabline = {
		lualine_a = {
			{
				'tabs',
				mode = 2,
				use_mode_colors = true,
			}
		},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {
			{
				'windows',
				show_filename_only = true,   -- Shows shortened relative path when set to false.
				show_modified_status = true, -- Shows indicator when the window is modified.
				mode = 0, -- 0: Shows window name
									-- 1: Shows window index
									-- 2: Shows window name + window index
				max_length = vim.o.columns * 2 / 3, -- Maximum width of windows component,
																						-- it can also be a function that returns
																						-- the value of `max_length` dynamically.
				filetype_names = {}, -- Shows specific window name for that filetype ( { `filetype` = `window_name`, ... } )
				disabled_buftypes = { 'quickfix', 'prompt'}, -- Hide a window if its buffer's type is disabled
				use_mode_colors = true,
			}
		}
	}
})
