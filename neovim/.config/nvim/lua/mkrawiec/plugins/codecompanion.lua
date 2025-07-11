local defaultStrategy = {
  adapter = "openai",
}

return {
  "olimorris/codecompanion.nvim",
  cmd = { "CodeCompanion", "CodeCompanionCmd", "CodeCompanionActions", "CodeCompanionChat" },
  keys = {
    { "<leader>aa", "<Cmd>CodeCompanionActions<CR>", desc = "AI: Open Action Menu" },
    { "<leader>ac", "<Cmd>CodeCompanionChat Toggle<CR>", desc = "AI: Toggle Chat Panel" },
    { "<leader>af", "<Cmd>CodeCompanionChat Add<CR>", desc = "AI: Add Current File to Chat" },
    { "<leader>ai", ":CodeCompanion #buffer<space>", desc = "AI: Run Inline Assistant (Buffer)" },
    { "<leader>ai", ":CodeCompanion<space>", desc = "AI: Run Inline Assistant (Selection)", mode = "v" },
  },
  opts = {
    strategies = {
      chat = defaultStrategy,
      inline = defaultStrategy,
      cmd = defaultStrategy,
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
