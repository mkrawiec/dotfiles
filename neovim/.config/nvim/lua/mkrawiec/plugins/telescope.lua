return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  event = "VeryLazy",
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local set = vim.keymap.set

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          ".git",
          "package%-lock%.json", -- escape '-' in Lua patterns
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        grep_string = {
          additional_args = { "--hidden" },
        },
        live_grep = {
          additional_args = { "--hidden" },
        },
      },
    })
    telescope.load_extension("fzf")

    set("n", "<leader><leader>", builtin.commands, { desc = "Search: Commands" })

    -- Git
    set("n", "<leader>gc", builtin.git_branches, { desc = "Git: Checkout" })

    -- Buffer
    set("n", "<leader>bb", builtin.buffers, { desc = "Buffer: Choose" })

    -- File
    set("n", "<leader>ff", builtin.find_files, { desc = "File: Choose" })
    set("n", "<leader>fr", builtin.oldfiles, { desc = "File: Recent Files" })

    -- Search
    set("n", "<leader>ss", builtin.lsp_workspace_symbols, { desc = "Search: Symbols" })
    set("n", "<leader>sa", builtin.live_grep, { desc = "Search: Grep" })
    set("n", "<leader>sw", builtin.grep_string, { desc = "Search: Word Under Cursor" })
    set("n", "<leader>sh", builtin.help_tags, { desc = "Search: Help tags" })

    -- Toggles
    set("n", "<leader>tl", builtin.filetypes, { desc = "Toggle: Language" })
    set("n", "<leader>tc", builtin.colorscheme, { desc = "Toggle: Color scheme" })
  end,
}
