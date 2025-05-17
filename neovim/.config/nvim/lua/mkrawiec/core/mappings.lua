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

set("n", "[d", vim.diagnostic.goto_prev, { desc = "LSP: Previous Diagnostic" })
set("n", "]d", vim.diagnostic.goto_next, { desc = "LSP: Next Diagnostic" })

-- Ctrl-h/j/k/l to move between splits from terminal mode
set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Terminal: Go left" })
set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Terminal: Go down" })
set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Terminal: Go up" })
set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Terminal: Go right" })

-- ===========================
-- Leader key mappings with desc
-- ===========================

-- Buffer
set("n", "<leader>bD", "<Cmd>%bd|e #<CR>", { desc = "Buffer: Close others" })
set("n", "<leader>bd", "<Cmd>bp|bd #<CR>", { desc = "Buffer: Close" })
set("n", "<leader>bn", "<Cmd>enew<CR>", { desc = "Buffer: New" })
set("n", "<leader>bY", "ggVGy", { desc = "Buffer: Yank" })
set("n", "<leader>bP", "ggVGp", { desc = "Buffer: Paste" })

-- File
set("n", "<leader>fs", "<Cmd>w<CR>", { desc = "File: Save this buffer" })
set("n", "<leader>fS", "<Cmd>wa<CR>", { desc = "File: Save all buffers" })
set("n", "<leader>fed", "<Cmd>edit $MYVIMRC<CR>", { desc = "Config: Edit root" })
set("n", "<leader>fek", function()
  vim.cmd("edit " .. vim.fn.stdpath("config") .. "/lua/mkrawiec/core/mappings.lua")
end, { desc = "Config: Edit mappings" })
set("n", "<leader>feR", utils.reload_config, { desc = "Config: Reload config" })

-- Git
set("n", "<leader>gg", "<Cmd>vertical G<CR>", { desc = "Git: Status" })
set("n", "<leader>gb", "<Cmd>G blame<CR>", { desc = "Git: Blame" })
set("n", "<leader>gd", "<Cmd>Gdiff<CR>", { desc = "Git: Diff" })

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
set("n", "<leader>js", vim.lsp.buf.signature_help, { desc = "LSP: Signature" })
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
set("n", "<leader>w", "<C-W>", { desc = "Window" })
set("n", "<leader>wt", "<Cmd>vsplit | terminal<CR>", { desc = "Terminal: Split vertically" })
set("n", "<leader>wp", "<Cmd>lclose | pclose | cclose<CR>", { desc = "Widnow: Close popups" })
set("n", "<leader>w+", "<Cmd>resize +5<CR>", { desc = "Window: Increase height" })
set("n", "<leader>w-", "<Cmd>resize -5<CR>", { desc = "Window: Decrease height" })
set("n", "<leader>w>", "<Cmd>vertical resize +10<CR>", { desc = "Window: Increase width" })
set("n", "<leader>w<", "<Cmd>vertical resize -10<CR>", { desc = "Window: Decrease width" })
set("n", "<leader>we", "<Cmd>wincmd =<CR>", { desc = "Window: Equalize" })
