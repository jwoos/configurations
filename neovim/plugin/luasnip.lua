vim.pack.add('https://github.com/L3MON4D3/LuaSnip')
vim.pack.add('https://github.com/rafamadriz/friendly-snippets')

require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load()
