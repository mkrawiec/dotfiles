return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional, for file icons
  event = "VeryLazy",
  config = function()
    require("lualine").setup({})
  end,
}
