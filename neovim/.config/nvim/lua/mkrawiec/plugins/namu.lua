return {
  "bassamsdata/namu.nvim",
  opts = {
    namu_symbols = {
      enable = true,
      options = {}, -- customize if needed
    },
    ui_select = { enable = false },
  },
  cmd = { "Namu" },
  keys = {
    -- Jump
    { "<leader>js", ":Namu symbols<CR>", desc = "Jump to LSP symbol" },
    { "<leader>jd", ":Namu diagnostics<CR>", desc = "LSP Diagnostics" },

    -- Search
    { "<leader>ss", ":Namu workspace<CR>", desc = "Search: symbols" },
  },
}
