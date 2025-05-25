return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  opts = {
    pickers = {
      find_files = {
        hidden = true,
      },
      grep_string = {
        additional_args = { "--hidden", "--glob", "!.git/*" },
      },
      live_grep = {
        additional_args = { "--hidden", "--glob", "!.git/*" },
      },
    },
  },
  keys = {
    { "<leader><leader>", "<Cmd>Telescope commands<CR>", desc = "Search: Commands" },

    -- Git
    { "<leader>gc", "<Cmd>Telescope git_branches<CR>", desc = "Git: Checkout" },

    -- Buffer
    { "<leader>bb", "<Cmd>Telescope buffers<CR>", desc = "Buffer: Choose" },

    -- File
    { "<leader>ff", "<Cmd>Telescope find_files<CR>", desc = "File: Choose" },
    { "<leader>fr", "<Cmd>Telescope oldfiles<CR>", desc = "File: Recent Files" },

    -- Search
    -- { "<leader>ss", "<Cmd>Telescope lsp_workspace_symbols<CR>", desc = "Search: Symbols" },
    { "<leader>sa", "<Cmd>Telescope live_grep<CR>", desc = "Search: Grep" },
    { "<leader>sw", "<Cmd>Telescope grep_string<CR>", desc = "Search: Word Under Cursor" },
    { "<leader>sh", "<Cmd>Telescope help_tags<CR>", desc = "Search: Help tags" },

    -- Toggles
    { "<leader>tl", "<Cmd>Telescope filetypes<CR>", desc = "Toggle: Language" },
    { "<leader>tc", "<Cmd>Telescope colorscheme<CR>", desc = "Toggle: Color scheme" },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("fzf")
  end,
}
