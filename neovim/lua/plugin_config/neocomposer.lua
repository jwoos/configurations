require("NeoComposer").setup({
  notify = true,
  delay_timer = 150,
  keymaps = {
    play_macro = "Q",
    yank_macro = "yq",
    stop_macro = "<c-q>",
    toggle_record = "q",
    cycle_next = "<a-q>",
    cycle_prev = "<a-Q>",
    toggle_macro_menu = "<leader>q",
  },
})
