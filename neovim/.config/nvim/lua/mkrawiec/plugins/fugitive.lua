return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G", "Gdiff", "Gstatus" },
  keys = {
    { "<leader>gb", "<Cmd>G blame<CR>", desc = "Git: Blame" },
    { "<leader>gd", "<Cmd>Gdiff<CR>", desc = "Git: Diff" },
    { "<leader>gg", "<Cmd>vertical G<CR>", desc = "Git: Status" },
    { "<leader>gl", "<Cmd>G pp<CR>", desc = "Git: Pull" },
    { "<leader>gp", ":G push<space>", desc = "Git: Push" },
  },
}
