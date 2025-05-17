--
-- User commands
--

vim.api.nvim_create_user_command(
  "ExtEdit",
  "e %<.<args>",
  { nargs = 1, desc = "Edit this file with different extension" }
)

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

vim.api.nvim_create_autocmd("LspAttach", {
  group = group,
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
    vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, { buffer = ev.buf })
  end,
  desc = "Add manual signature help triggers",
})

vim.api.nvim_create_autocmd("InsertCharPre", {
  group = group,
  pattern = "*",
  callback = function()
    local char = vim.v.char
    if char == "(" or char == "," then
      vim.defer_fn(function()
        vim.lsp.buf.signature_help()
      end, 0)
    end
  end,
  desc = "Automatically open signature help after completion",
})
