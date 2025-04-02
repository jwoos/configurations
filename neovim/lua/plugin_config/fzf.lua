local fzf = require('fzf-lua')
local defaults = require('fzf-lua.defaults').defaults

local path = require('plenary.path')

fzf.myles = function(opts)
  opts = opts or {}

  opts.prompt = "myles> "
  if opts.cwd then
    opts.prompt = "[".. opts.cwd .. "] myles>"
  end

  opts.git_icons = false
  opts.file_icons = false
  opts.color_icons = true
  -- setup default actions for edit, quickfix, etc
  opts.actions = defaults.actions.files

  -- see preview overview for more info on previewers
  opts.previewer = "builtin"

  opts.fn_transform = function(x)
    if not cwd then
      return fzf.make_entry.file(x, opts)
    end

    local new_path = Path:new(x):normalize(opts.cwd)
    print(new_path)
    return fzf.make_entry.file(str(new_path), opts)
  end

  opts.fn_preprocess = nil

  opts.exec_empty_query = true
  -- initial query below to do it opaquely
  opts.query = nil

  -- debounce by 50ms
  opts.query_delay = 50

  opts.fzf_opts = opts.fzf_opts or {}
  opts.fzf_opts = {
    ['--ansi'] = ''
  }

  return fzf.fzf_live(function(q)
    base = nil

    if opts.cwd then
      base = opts.cwd
    end

    base_command = "myles --client neovim_fzf --list --limit 25 "

    if q then
      if base then
        return  base_command .. base .. vim.fn.shellescape(q)
      else
        return base_command .. vim.fn.shellescape(q)
      end
    else
      return base_command .. base
    end
  end, opts)
end

fzf.setup({
  "default",
  winopts = {},
  fzf_opts = {
    ['--layout'] = 'default',
  },
  blines = {
    previewer = false
  }
})

vim.keymap.set("n", "<c-\\>", function()
  fzf.files({ignore_current_file = true})
end, { silent = true })
vim.keymap.set("n", "<c-\\><c-\\>", function()
  fzf.files({ignore_current_file = true, cwd = vim.fn.expand('%:h')})
end, { silent = true })

vim.keymap.set("n", "<c-\\>", fzf.myles, { silent = true })
vim.keymap.set("n", "<c-\\><c-\\>", function()
  fzf.myles({cwd = vim.fn.expand('%:h')})
end, { silent = true })

vim.keymap.set("n", "<A-\\>", function()
  fzf.buffers({ignore_current_buffer = true})
end, { silent = true })
vim.keymap.set("n", "<A-\\><a-\\>", function()
  fzf.buffers({ignore_current_buffer = true, cwd = vim.fn.expand('%:h')})
end, { silent = true })

vim.keymap.set("n", "<leader>/", fzf.grep, { silent = true })
vim.keymap.set("n", "<c-/>", fzf.blines, { silent = true })
vim.keymap.set("n", "<a-m>", fzf.marks, { silent = true })
-- vim.keymap.set({'n'}, '<leader>q', fzf.registers, {silent = true})
