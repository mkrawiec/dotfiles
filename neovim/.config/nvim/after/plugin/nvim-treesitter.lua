local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = { "typescript", "lua", "vim", "vimdoc" },
  highlight = {
    enable = true,
    disable = { "help" },
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
  },
})
