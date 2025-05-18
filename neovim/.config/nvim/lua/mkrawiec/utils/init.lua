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

function M.open_config_file(relative_path)
  local path = vim.fn.stdpath("config") .. "/lua/mkrawiec/" .. relative_path
  vim.cmd.edit(path)
end

function M.set_golden_ratio()
  vim.cmd("wincmd =") -- equalize windows first

  local height = vim.api.nvim_win_get_height(0)
  local width = vim.api.nvim_win_get_width(0)

  vim.cmd("resize " .. math.floor(height * 5 / 4))
  vim.cmd("vertical resize " .. math.floor(width * 5 / 4))
end

return M
