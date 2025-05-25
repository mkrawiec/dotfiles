--
-- User commands
--

vim.api.nvim_create_user_command(
  "ExtEdit",
  "e %<.<args>",
  { nargs = 1, desc = "Edit this file with different extension" }
)

vim.api.nvim_create_user_command("Qsub", function(opts)
  local from, to = opts.args:match("^(.-)/(.-)$")
  if not from or not to then
    print("Usage: Qsub search/replace")
    return
  end
  vim.cmd(string.format("cfdo %%s/%s/%s/g | update", from, to))
end, {
  nargs = 1,
  desc = "Run search & replace across quickfix entries",
})

vim.api.nvim_create_user_command("StripWhitespace", "%s/\\s\\+$//", { desc = "Strip trailing whitespace" })

--
-- Auto commands
--

local group = vim.api.nvim_create_augroup("mkrawiec", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  group = group,
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
  desc = "Auto read file if changed outside of neovim",
})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Yank highlight",
})

vim.api.nvim_create_autocmd("TermOpen", {
  group = group,
  pattern = "*",
  command = "setlocal nonumber norelativenumber",
  desc = "Disable line numbers in terminal",
})

vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
  group = group,
  pattern = "*",
  callback = function()
    if vim.bo.buftype == "terminal" then
      vim.cmd("startinsert")
    end
  end,
  desc = "Automatically enter terminal mode",
})
