return {
  "romus204/tree-sitter-manager.nvim",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSManager" },
  config = function()
    require("tree-sitter-manager").setup({
      auto_install = true,
    })
  end,
}
