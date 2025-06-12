return {
  "mason-org/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = {
      "pyright",
      "ruff",
      "debugpy",
      "ts_ls",
      "bashls",
      "terraformls",
      "yamlls",
      "dockerls",
      "jsonls",
      "marksman",
      "lua_ls",
      "html",
      "cssls",
    },
  },
}
