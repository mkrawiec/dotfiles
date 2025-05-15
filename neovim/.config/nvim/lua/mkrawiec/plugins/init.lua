return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "christoomey/vim-tmux-navigator" },
  { "editorconfig/editorconfig-vim" },
  { "tpope/vim-fugitive" },
  { "nvim-tree/nvim-web-devicons" },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
}
