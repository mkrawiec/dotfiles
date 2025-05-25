return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional for icons
  },
  cmd = { "FzfLua" },
  opts = {
    keymap = {
      fzf = {
        -- use ctrl-q to select all items and convert to quickfix list
        ["ctrl-q"] = "select-all+accept",
      },
    },
    grep = {
      hidden = true,
    },
    oldfiles = {
      cwd_only = true,
      include_current_session = true,
    },
  },
  keys = {
    { "<leader>/", "<Cmd>FzfLua resume<CR>", desc = "Resume: Last Picker" },
    { "<leader><leader>", "<Cmd>FzfLua commands<CR>", desc = "Search: Commands" },

    -- Git
    { "<leader>gc", "<Cmd>FzfLua git_branches<CR>", desc = "Git: Checkout Branch" },

    -- Buffer
    { "<leader>bb", "<Cmd>FzfLua buffers<CR>", desc = "Buffer: Choose Buffer" },

    -- Jump
    { "<leader>js", "<Cmd>FzfLua lsp_document_symbols<CR>", desc = "Jump: Document Symbols" },
    { "<leader>jdd", "<Cmd>FzfLua lsp_document_diagnostics<CR>", desc = "Jump: Document Diagnostics" },
    { "<leader>jdw", "<Cmd>FzfLua lsp_workspace_diagnostics<CR>", desc = "Jump: Workspace Diagnostics" },
    { "<leader>jm", "<Cmd>FzfLua marks<CR>", desc = "Jump: Marks" },

    -- File
    { "<leader>ff", "<Cmd>FzfLua files<CR>", desc = "File: Find Files" },
    { "<leader>fr", "<Cmd>FzfLua oldfiles<CR>", desc = "File: Recent Files" },
    { "<leader>fg", "<Cmd>FzfLua git_files<CR>", desc = "File: Find Git Files" },

    -- Search
    { "<leader>ss", "<Cmd>FzfLua lsp_workspace_symbols<CR>", desc = "Search: Workspace Symbols" },
    { "<leader>sa", "<Cmd>FzfLua live_grep<CR>", desc = "Search: Grep (Live)" },
    { "<leader>sw", "<Cmd>FzfLua grep_cword<CR>", desc = "Search: Word Under Cursor" },
    { "<leader>sv", "<Cmd>FzfLua grep_visual<CR>", desc = "Search: Visual Selection" },
    { "<leader>sh", "<Cmd>FzfLua help_tags<CR>", desc = "Search: Help Tags" },

    -- Toggles
    { "<leader>to", "<Cmd>FzfLua nvim_options<CR>", desc = "Toggle: Neovim Options" },
    { "<leader>tl", "<Cmd>FzfLua filetypes<CR>", desc = "Toggle: Filetypes" },
    { "<leader>tc", "<Cmd>FzfLua colorschemes<CR>", desc = "Toggle: Color Schemes" },
  },
  config = function(_, opts)
    local fzf = require("fzf-lua")
    fzf.setup(opts)
    fzf.register_ui_select()
  end,
}
