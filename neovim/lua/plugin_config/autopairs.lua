local ap = require('nvim-autopairs')
local rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')
local ts_conds = require('nvim-autopairs.ts-conds')
local utils = require('nvim-autopairs.utils')

ap.setup({
  disable_filetype = { "TelescopePrompt" },
  disable_in_macro = false,  -- disable when recording or executing a macro
  disable_in_visualblock = false, -- disable when insert after visual block mode
  disable_in_replace_mode = true,
  ignored_next_char = [=[[%w%%%'%[%"%.]]=],
  enable_moveright = true,
  enable_afterquote = true,  -- add bracket pairs after quote
  enable_check_bracket_line = true,  --- check bracket in same line
  enable_bracket_in_quote = true, --
  enable_abbr = false, -- trigger abbreviation
  break_undo = true, -- switch for basic rule break undo sequence
  check_ts = true,
  map_cr = true,
  map_bs = true,  -- map the <BS> key
  map_c_h = false,  -- Map the <C-h> key to delete a pair
  map_c_w = false, -- map <c-w> to delete a pair if possible
})

local function move_for_angle_bracket(opts)
  -- this is adapted from the bracket logic in the plugin
  if opts.next_char == opts.char then
    if opts.char == '>' then
        return true
    end
    -- move right when have quote on end line or in quote
    -- situtaion  |"  => "|
    if utils.is_quote(opts.char) then
      if opts.col == string.len(opts.line) then
          return true
      end
      -- ("|")  => (""|)
      --  ""       |"      "  => ""       "|      "
      if utils.is_in_quotes(opts.line, opts.col - 1, opts.char) then
          return true
      end
    end
  end
  return false
end

ap.add_rules({
  rule('<', '>', {'cpp'}):with_pair(function(opts)
    local fn1 = cond.before_regex('template%s+', -1)
    local fn2 = cond.before_regex('%w', 1)
    local fn3 = cond.before_regex('#include%s+', -1)
    return fn1(opts) or fn2(opts) or fn3(opts)
  end):with_move(move_for_angle_bracket),
  rule('<', '>', {'rust'}):with_pair(function(opts)
    local fn1 = cond.before_regex('template%s+', -1)
    local fn2 = cond.before_regex('%w', 1)
    local fn3 = cond.before_regex('::', 2)
    return fn1(opts) or fn2(opts) or fn3(opts)
  end):with_move(move_for_angle_bracket),
})

-- integrate nvim-cmp with autopairs
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- local cmp = require('cmp')
-- cmp.event:on(
--   'confirm_done',
--   cmp_autopairs.on_confirm_done()
-- )
