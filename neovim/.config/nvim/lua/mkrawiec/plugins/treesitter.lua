return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "typescript", "python", "lua", "vim", "vimdoc", "terraform" },
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
  end,
}
