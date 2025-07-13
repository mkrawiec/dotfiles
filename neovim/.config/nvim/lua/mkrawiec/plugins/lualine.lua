return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = {
    options = {
      section_separators = "",
      component_separators = "│",
    },
    sections = {
      lualine_a = {
        { "mode", icon = "" },
      },
      lualine_b = {
        { "branch", icon = "", padding = { left = 2, right = 1 } },
        { "diff", symbols = { added = " ", modified = " ", removed = " " } },
      },
      lualine_c = {
        { "filetype", icon_only = true, colored = false, padding = { left = 1, right = 0 }, separator = "" },
        "filename",
      },
      lualine_x = { "diagnostics" },
      lualine_y = { "lsp_status" },
      lualine_z = { { "location", icon = "" } },
    },
    extensions = {
      "quickfix",
      "fugitive",
    },
  },
}
