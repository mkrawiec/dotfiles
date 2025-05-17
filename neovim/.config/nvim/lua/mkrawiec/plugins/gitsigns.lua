return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local gitsigns = require("gitsigns")
    local set = vim.keymap.set

    gitsigns.setup()

    set("n", "<leader>gs", gitsigns.stage_hunk)
    set("n", "<leader>gu", gitsigns.reset_hunk)

    set("v", "<leader>gs", function()
      gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
    end)

    set("v", "<leader>gu", function()
      gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
    end)

    set("n", "<leader>gS", gitsigns.stage_buffer)
    set("n", "<leader>gR", gitsigns.reset_buffer)
  end,
}
