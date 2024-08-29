local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "rose-pine/neovim", name = "rose-pine" },
  { "justinmk/vim-dirvish" },
  { "christoomey/vim-tmux-navigator" },
  { "editorconfig/editorconfig-vim" },
  { "github/copilot.vim" },
  { "tpope/vim-fugitive" },
  { "kylechui/nvim-surround" },
  { "lewis6991/gitsigns.nvim", config = function()
    require("gitsigns").setup()
  end },
  { "nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-treesitter/nvim-treesitter", commit = "3607d9c", build = ":TSUpdate" },

  require("mkrawiec.plugins.which-key"),
  require("mkrawiec.plugins.autopairs"),
  -- Lsp
  { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
})

vim.cmd("colorscheme rose-pine-moon")
