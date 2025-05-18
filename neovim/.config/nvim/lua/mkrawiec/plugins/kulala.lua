return {
  "mistweaverco/kulala.nvim",
  ft = { "http", "rest" },
  opts = {
    global_keymaps = {
      ["Send request"] = { -- sets global mapping
        "<leader>hh",
        function()
          require("kulala").run()
        end,
        mode = { "n", "v" }, -- optional mode, default is n
        desc = "Send request", -- optional description, otherwise inferred from the key
      },
    },
    global_keymaps_prefix = "<leader>h",
  },
}
