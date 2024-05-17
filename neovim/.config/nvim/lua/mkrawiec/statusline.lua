function _G.lsp_status()
  local clients_count = #vim.lsp.buf_get_clients()
  if clients_count == 0 then
    return "🖥️0"
  end

  local progress = vim.lsp.util.get_progress_messages()[1]
  return (progress and "⟳ " or "🖥️") .. clients_count
end

vim.opt.statusline = table.concat({
  "%f", -- Display file path
  " %m", -- Modified flag (empty if not modified)
  "%=", -- right align
  "%y", -- file type
  " ", -- space
  "[%{&fileformat}", -- file format (unix, dos, etc.)
  ", ", -- space
  "%{&fileencoding?&fileencoding:&encoding}]", -- file encoding
  " ", -- space
  "[%{&shiftwidth?&shiftwidth:&tabstop}]", -- shiftwidth (or tabstop for no `shiftwidth` set)
  " ", -- space
  "%l:%c", -- line and column numbers
  " ", -- space
  "[%p%%]", -- percentage through the file
  " ", -- space
  "%{v:lua.lsp_status()}",
  " ", -- space
})
