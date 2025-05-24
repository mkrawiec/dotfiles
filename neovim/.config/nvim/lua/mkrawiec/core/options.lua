-- Leader Keys
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- General
vim.opt.clipboard = "unnamedplus"
vim.opt.shortmess:append("c")

-- User Interface
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.virtualedit = "onemore"
vim.opt.breakindent = true

-- Editing
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.completeopt = { "menuone", "preinsert", "fuzzy", "popup", "noinsert", "nosort" }

-- Performance
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Windows & Splits
vim.opt.winborder = "rounded"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.diffopt:append("vertical")

-- Search & Grep
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true
vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"

-- Files & Persistence
vim.opt.backup = false
vim.opt.swapfile = false

-- Set up persistent undo
local backup_dir = vim.fn.expand("~/.local/share/nvim/backups")
if vim.fn.isdirectory(backup_dir) == 0 then
  vim.fn.system({ "mkdir", "-p", backup_dir })
end
vim.opt.undodir = backup_dir
vim.opt.undofile = true

-- Highlighting & Diagnostics
-- Highlight trailing whitespace
vim.api.nvim_set_hl(0, "ExtraWhitespace", { bg = "red" })
vim.fn.matchadd("ExtraWhitespace", [[\s\+\%#\@<!$]])

-- Diagnostic virtual text on current line only
vim.diagnostic.config({ virtual_text = { current_line = true } })
