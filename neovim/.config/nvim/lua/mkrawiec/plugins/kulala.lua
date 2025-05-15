return {
  "mistweaverco/kulala.nvim",
  keys = {
    { "<leader>hh", desc = "Send request" },
    { "<leader>ha", desc = "Send all requests" },
    { "<leader>hs", desc = "Open scratchpad" },
  },
  ft = { "http", "rest" },
  opts = {
    -- your configuration comes here
    global_keymaps = false,
  },
}
