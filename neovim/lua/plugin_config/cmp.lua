local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

-- Set up nvim-cmp.
local cmp = require('cmp')
local luasnip = require('luasnip')

local menu_mapping = {
  nvim_lua = '[Nvim Lua]',
  nvim_lsp = '[LSP]',
  luasnip = '[snippet]',
  buffer = '[buffer]',
  path = '[path]',
  cmdline = '[cmdline]',
};

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  view = {
    entries = {name = 'custom', selection_order = 'near_cursor' }
  },
  completion = { completeopt = 'menu,menuone,noinsert,noselect' },
  preselect = cmp.PreselectMode.None,
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.mapping.complete()
      else
        fallback()
      end
    end),
    ['<A-Space>'] = cmp.mapping(function(fallback)
        fallback()
    end),
    ['<C-c>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping(function(fallback)
      if cmp.visible() and cmp.get_active_entry() then
        if luasnip.expandable() then
          luasnip.expand()
        else
          cmp.confirm({
            select = true,
          })
        end
      else
        fallback()
      end
    end),

    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        if #cmp.get_entries() == 1 then
          cmp.confirm({ select = true })
        else
          cmp.select_next_item()
        end
      elseif luasnip.locally_jumpable(1) then
        luasnip.jump(1)
      else
          fallback()
      end
    end, { "i", "s" }),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
  formatting = {
    fields = {"abbr", "kind", "menu"},
    format = function(entry, vim_completion_item)
      vim_completion_item.menu = menu_mapping[entry.source.name]
      return vim_completion_item
    end
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
    { name = 'path' },
  }),
  sorting = {
    comparators = {
      cmp.config.compare.recently_used,
      cmp.config.compare.offset,
      cmp.config.compare.exact,
      cmp.config.compare.locality,
      cmp.config.compare.kind,
      cmp.config.compare.score,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  }
})


-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

cmp.setup.filetype('lua', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'nvim_lua' },
    { name = 'buffer' },
    { name = 'path' },
  })
})

-- TODO completion of lua doesn't work in embedded lua
cmp.setup.filetype('vim', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'nvim_lua' },
    { name = 'buffer' },
    { name = 'path' },
  })
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
