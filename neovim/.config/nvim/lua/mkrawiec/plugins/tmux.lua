return {
  "aserowy/tmux.nvim",
  event = { "TermEnter" },
  keys = {
    { "<C-h>" },
    { "<C-j>" },
    { "<C-k>" },
    { "<C-l>" },
    { "<A-h>" },
    { "<A-j>" },
    { "<A-k>" },
    { "<A-l>" },
  },
  config = function()
    local tmux = require("tmux")
    local set = vim.keymap.set

    tmux.setup({
      copy_sync = {
        enable = false,
      },
      navigation = {
        cycle_navigation = true,
        enable_default_keybindings = true,
        persist_zoom = true,
      },
      swap = {
        enable_default_keybindings = false,
      },
    })

    set("t", "<C-h>", tmux.move_left)
    set("t", "<C-j>", tmux.move_bottom)
    set("t", "<C-k>", tmux.move_top)
    set("t", "<C-l>", tmux.move_right)
  end,
}
