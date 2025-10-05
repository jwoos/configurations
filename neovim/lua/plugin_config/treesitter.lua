require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
	ignore_install = {'ipkg'},
  highlight = {
    enable = true,
  },
}
