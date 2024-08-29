local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr) end)

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = { "tsserver", "jsonls", "html", "dockerls" },
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup({})
    end,
  },
})
