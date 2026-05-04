return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  version = "*",
  dependencies = {
    {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup({})
      end,
    },
  },
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    completion = {
      ghost_text = {
        enabled = true,
      },
    },
    signature = { enabled = true },
  },
}
