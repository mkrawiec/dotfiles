-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Buffer
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.virtualedit = "onemore"
vim.opt.clipboard = "unnamedplus"
vim.opt.shortmess:append("c")
vim.opt.breakindent = true
vim.opt.completeopt = { "menuone", "preinsert", "fuzzy", "popup", "noinsert", "nosort" }

-- Waits
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Windows
vim.opt.winborder = "rounded"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.diffopt:append("vertical")

-- Indentation
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Swap/Backup
vim.opt.backup = false
vim.opt.swapfile = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true

-- Grep
vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"

-- Set up persistant undo
local backup_dir = vim.fn.expand("~/.local/share/nvim/backups")
if vim.fn.isdirectory(backup_dir) == 0 then
  vim.fn.system({ "mkdir", "-p", backup_dir })
end

vim.opt.undodir = backup_dir
vim.opt.undofile = true

-- Highlight trailing whitespace
vim.api.nvim_set_hl(0, "ExtraWhitespace", { bg = "red" })
vim.fn.matchadd("ExtraWhitespace", [[\s\+\%#\@<!$]])

vim.diagnostic.config({ virtual_text = { current_line = true } })
