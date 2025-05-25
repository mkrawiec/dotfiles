local utils = require("mkrawiec.utils")
local set = vim.keymap.set

-- Visual shifting (does not exit Visual mode)
set("v", "<", "<gv", { noremap = true, silent = true })
set("v", ">", ">gv", { noremap = true, silent = true })

-- More consistent 'Y'
set("n", "Y", "y$", { noremap = true, silent = true })

-- Replace search term under cursor, dot repeats the change
set("n", "c*", "*Ncgn", { noremap = true, silent = true })
set("n", "c#", "#NcgN", { noremap = true, silent = true })

-- Move visual lines when no count
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
set("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Esc to normal mode (only in terminal mode)
set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal: Normal mode" })

-- LSP
set("n", "[d", vim.diagnostic.goto_prev, { desc = "LSP: Previous Diagnostic" })
set("n", "]d", vim.diagnostic.goto_next, { desc = "LSP: Next Diagnostic" })
set("i", "<C-k>", vim.lsp.buf.signature_help, { noremap = true, silent = true })

-- ===========================
-- Leader key mappings with desc
-- ===========================

-- Root
set('n', "<leader>'", ":vsplit | vertical resize 30 | terminal<CR>", { desc = "Open side terminal" })

-- Buffer
set("n", "<leader>bD", "<Cmd>%bd|e #<CR>", { desc = "Buffer: Close others" })
set("n", "<leader>bd", "<Cmd>bp|bd #<CR>", { desc = "Buffer: Close" })
set("n", "<leader>bn", "<Cmd>enew<CR>", { desc = "Buffer: New" })
set("n", "<leader>bY", "ggVGy", { desc = "Buffer: Yank" })
set("n", "<leader>bP", "ggVGp", { desc = "Buffer: Paste" })

-- File
set("n", "<leader>fs", "<Cmd>w<CR>", { desc = "File: Save this buffer" })
set("n", "<leader>fS", "<Cmd>wa<CR>", { desc = "File: Save all buffers" })
set("n", "<leader>fx", ":ExtEdit<space>", { desc = "File: Edit with different extension" })
set("n", "<leader>fed", "<Cmd>edit $MYVIMRC<CR>", { desc = "Config: Edit root" })
set("n", "<leader>fek", function()
  utils.open_config_file("core/mappings.lua")
end, { desc = "Config: Edit mappings" })
set("n", "<leader>fep", function()
  utils.open_config_file("plugins")
end, { desc = "Config: Edit plugins" })
set("n", "<leader>feR", utils.reload_config, { desc = "Config: Reload config" })

-- Search
set("n", "<leader>sc", "<Cmd>nohlsearch<CR>", { desc = "Search: Clear highlight" })

-- Interact
set("n", "<leader>ii", vim.lsp.buf.code_action, { desc = "LSP: Code Action" })
set("n", "<leader>ir", vim.lsp.buf.rename, { desc = "LSP: Rename" })
set("n", "<leader>ih", vim.lsp.buf.hover, { desc = "LSP: Hover" })
set("n", "<leader>id", vim.diagnostic.open_float, { desc = "LSP: Show Diagnostics" })
set("n", "<leader>is", vim.lsp.buf.signature_help, { desc = "LSP: Signature Help" })

-- Jump
set("n", "<leader>jj", vim.lsp.buf.definition, { desc = "LSP: Definition" })
set("n", "<leader>jr", vim.lsp.buf.references, { desc = "LSP: References" })
set("n", "<leader>jt", vim.lsp.buf.type_definition, { desc = "LSP: Type Definition" })
set("n", "<leader>ji", vim.lsp.buf.implementation, { desc = "LSP: Implementation" })

-- Toggles
set("n", "<leader>ts", "<Cmd>LspInfo<CR>", { desc = "LSP: Show Server Info" })

-- Run
set("n", "<leader>rf", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "LSP: Format Buffer" })
set("v", "<leader>rf", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "LSP: Format Selection" })

-- Window
set("n", "<leader>wc", "<Cmd>close<CR>", { desc = "Window: Close" })
set("n", "<leader>we", "<Cmd>wincmd =<CR>", { desc = "Window: Equalize" })
set("n", "<leader>wg", utils.set_golden_ratio, { desc = "Window: Golden ratio size" })
set("n", "<leader>wo", "<Cmd>only<CR>", { desc = "Window: Close other windows" })
set("n", "<leader>wp", "<Cmd>lclose | pclose | cclose<CR>", { desc = "Widnow: Close popups" })
set("n", "<leader>ws", "<Cmd>split<CR>", { desc = "Window: Split below" })
set("n", "<leader>wts", "<Cmd>split | terminal<CR>", { desc = "Terminal: Split down" })
set("n", "<leader>wtv", "<Cmd>vsplit | terminal<CR>", { desc = "Terminal: Split right" })
set("n", "<leader>wv", "<Cmd>vsplit<CR>", { desc = "Window: Split right" })
set("n", "<leader>wz", "<Cmd>tab split<CR>", { desc = "Window: Zoom (maximize current window in tab)" })

-- Window moving
set("n", "<leader>wH", "<C-w>H", { desc = "Window: Move to far left" })
set("n", "<leader>wJ", "<C-w>J", { desc = "Window: Move to very bottom" })
set("n", "<leader>wK", "<C-w>K", { desc = "Window: Move to very top" })
set("n", "<leader>wL", "<C-w>L", { desc = "Window: Move to far right" })
