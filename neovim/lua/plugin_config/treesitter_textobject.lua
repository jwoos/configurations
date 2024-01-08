require('nvim-treesitter.configs').setup({
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = {query = "@class.outer", desc = "Select around class region"},
        ["ic"] = {query = "@class.inner", desc = "Select inner part of a class region"},
        ["aa"] = {query = "@parameter.outer", desc = "Select around parameter region"},
        ["ia"] = {query = "@parameter.inner", desc = "Select inner part of a parameter region"},
      },
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
    -- TODO set up the below
    -- swap = {
    --   enable = true,
    --   swap_next = {
    --     ["<leader>a"] = "@parameter.inner",
    --   },
    --   swap_previous = {
    --     ["<leader>A"] = "@parameter.inner",
    --   },
    -- }
    -- move = {
    --   enable = true,
    --   set_jumps = true, -- whether to set jumps in the jumplist
    --   goto_next_start = {
    --     ["]m"] = "@function.outer",
    --     ["]]"] = { query = "@class.outer", desc = "Next class start" },
    --   },
    --   goto_next_end = {
    --     ["]M"] = "@function.outer",
    --     ["]["] = "@class.outer",
    --   },
    --   goto_previous_start = {
    --     ["[m"] = "@function.outer",
    --     ["[["] = "@class.outer",
    --   },
    --   goto_previous_end = {
    --     ["[M"] = "@function.outer",
    --     ["[]"] = "@class.outer",
    --   },
    -- },
    -- lsp_interop = {
    --   enable = true,
    --   border = 'none',
    --   peek_definition_code = {
    --     ["<leader>df"] = "@function.outer",
    --     ["<leader>dF"] = "@class.outer",
    --   },
    -- },
    },
})
