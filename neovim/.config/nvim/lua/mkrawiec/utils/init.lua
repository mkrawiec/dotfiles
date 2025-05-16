local M = {}

function M.reload_config()
  for name, _ in pairs(package.loaded) do
    if name:match("^mkrawiec") then
      package.loaded[name] = nil
    end
  end
  dofile(vim.fn.stdpath("config") .. "/init.lua")
  vim.notify("Neovim config reloaded!", vim.log.levels.INFO)
end

return M
