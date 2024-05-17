local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = { "typescript", "lua", "vim" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
  },
})
