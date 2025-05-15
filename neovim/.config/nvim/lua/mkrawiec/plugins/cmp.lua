return {
  "hrsh7th/nvim-cmp",
  config = function()
    require("cmp").setup({
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
    })
  end,
}
