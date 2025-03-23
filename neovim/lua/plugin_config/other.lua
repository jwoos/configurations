local other = require('other-nvim')

other.setup({
	mappings = {
		{
			pattern = "(.*)/(.*).cpp$",
			target = {
				{
					target = "%1/%2.h",
				},
				{
					target = "%1/%2.hpp"
				}
			},
		},
		{
			pattern = "(.*)/(.*).h$",
			target = "%1/%2.cpp",
		},
		{
			pattern = "(.*)/(.*).hpp$",
			target = "%1/%2.cpp",
		},
	},
	transformers = {
		-- defining a custom transformer
		lowercase = function (inputString)
			return inputString:lower()
		end
	},
        hooks = {
		-- disable showing any files which don't exist
                filePickerBeforeShow = function(files)
                        for k, v in pairs(files) do
                                if not v.exists then
                                        table.remove(files, k)
                                end
                        end

                        return files
                end
        },
	style = {
		-- How the plugin paints its window borders
		-- Allowed values are none, single, double, rounded, solid and shadow
		border = "solid",

		-- Column seperator for the window
		seperator = "|",

		-- width of the window in percent. e.g. 0.5 is 50%, 1.0 is 100%
		width = 0.7,

		-- min height in rows.
		-- when more columns are needed this value is extended automatically
		minHeight = 5
	},
})

vim.keymap.set('n', '|', '<cmd>Other<CR>')
