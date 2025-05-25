return {
  "aserowy/tmux.nvim",
  opts = {
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
  },
  keys = {
    -- Terminal navigation
    {
      "<C-h>",
      function()
        require("tmux").move_left()
      end,
      mode = "t",
      desc = "Tmux: Move Left",
    },
    {
      "<C-j>",
      function()
        require("tmux").move_bottom()
      end,
      mode = "t",
      desc = "Tmux: Move Down",
    },
    {
      "<C-k>",
      function()
        require("tmux").move_top()
      end,
      mode = "t",
      desc = "Tmux: Move Up",
    },
    {
      "<C-l>",
      function()
        require("tmux").move_right()
      end,
      mode = "t",
      desc = "Tmux: Move Right",
    },

    -- Needed for lazy loading
    { "<C-h>" },
    { "<C-j>" },
    { "<C-k>" },
    { "<C-l>" },
    { "<A-h>" },
    { "<A-j>" },
    { "<A-k>" },
    { "<A-l>" },
  },
}
