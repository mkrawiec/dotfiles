-- User commands

vim.api.nvim_create_user_command(
  "ExtEdit",
  "e %<.<args>",
  { nargs = 1, desc = "Edit this file with different extension" }
)

vim.api.nvim_create_user_command("StripWhitespace", "%s/\\s\\+$//", { desc = "Strip trailing whitespace" })

-- Auto commands

vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
  desc = "Auto read file if changed outside of neovim",
})
