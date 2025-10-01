vim.cmd.packadd("cfilter")

vim.api.nvim_create_user_command("Creplace", function(opts)
  local from, to = opts.args:match("^(.-)/(.-)$")
  if not from or not to then
    print("Usage: Creplace search/replace")
    return
  end
  vim.cmd(string.format("cfdo %%s/%s/%s/g | update", from, to))
end, {
  nargs = 1,
  desc = "Run search & replace across quickfix entries",
})

local set = vim.keymap.set
local group = vim.api.nvim_create_augroup("mkrawiec_qf", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  group = group,
  callback = function()
    set("n", "q", "<Cmd>cclose<CR>", { buffer = true, silent = true })
    set("n", "x", ":Cfilter! <C-r><C-f><CR>", { buffer = true, silent = true })
    set("n", "o", ":Cfilter <C-r><C-f><CR>", { buffer = true, silent = true })
    set("n", "r", ":Creplace<space>", { buffer = true })
  end,
})
