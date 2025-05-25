return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  keys = {
    { "<leader>gs", "<Cmd>Gitsigns stage_hunk<CR>", desc = "Git: Stage Hunk", mode = "n" },
    { "<leader>gu", "<Cmd>Gitsigns reset_hunk<CR>", desc = "Git: Reset Hunk", mode = "n" },
    { "<leader>gS", "<Cmd>Gitsigns stage_buffer<CR>", desc = "Git: Stage Buffer", mode = "n" },
    { "<leader>gR", "<Cmd>Gitsigns reset_buffer<CR>", desc = "Git: Reset Buffer", mode = "n" },
    {
      "<leader>gs",
      function()
        require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end,
      desc = "Git: Stage Hunk (visual)",
      mode = "v",
    },
    {
      "<leader>gu",
      function()
        require("gitsigns").reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end,
      desc = "Git: Reset Hunk (visual)",
      mode = "v",
    },
  },
}
