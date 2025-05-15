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

-- ===========================
-- Leader key mappings with desc
-- ===========================

-- Buffer
set("n", "<leader>bD", "<Cmd>%bd|e #<CR>", { desc = "Buffer: Close others" })
set("n", "<leader>bb", "<Cmd>Telescope buffers<CR>", { desc = "Buffer: Choose" })
set("n", "<leader>bd", "<Cmd>bp|bd #<CR>", { desc = "Buffer: Close" })
set("n", "<leader>bn", "<Cmd>enew<CR>", { desc = "Buffer: New" })
set("n", "<leader>bY", "ggVGy", { desc = "Buffer: Yank" })
set("n", "<leader>bP", "ggVGp", { desc = "Buffer: Paste" })

-- File
set("n", "<leader>fs", "<Cmd>w<CR>", { desc = "File: Save" })
set("n", "<leader>ff", "<Cmd>Telescope find_files hidden=true<CR>", { desc = "File: Choose" })
set("n", "<leader>fe", "<Cmd>edit $MYVIMRC<CR>", { desc = "Config: Edit" })
set("n", "<leader>fR", "<Cmd>runtime! plugin/**/* | luafile $MYVIMRC<CR>", { desc = "Config: Reload" })

-- Git
set("n", "<leader>gg", "<Cmd>vertical G<CR>", { desc = "Git: Status" })
set("n", "<leader>gb", "<Cmd>G blame<CR>", { desc = "Git: Blame" })
set("n", "<leader>gd", "<Cmd>Gdiff<CR>", { desc = "Git: Diff" })

-- LSP Interact
set("n", "<leader>ii", "<Cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP: Code Action" })
set("n", "<leader>ir", "<Cmd>lua vim.lsp.buf.rename()<CR>", { desc = "LSP: Rename" })
set("n", "<leader>ih", "<Cmd>lua vim.lsp.buf.hover()<CR>", { desc = "LSP: Hover" })

-- LSP Jump
set("n", "<leader>jj", "<Cmd>lua vim.lsp.buf.definition()<CR>", { desc = "LSP: Definition" })
set("n", "<leader>jr", "<Cmd>lua vim.lsp.buf.references()<CR>", { desc = "LSP: References" })
set("n", "<leader>js", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "LSP: Signature" })
set("n", "<leader>jt", "<Cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "LSP: Type Definition" })
set("n", "<leader>ji", "<Cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "LSP: Implementation" })
set("n", "<leader>jm", "<Cmd>Telescope marks<CR>", { desc = "Jump: Marks" })

-- Search
set("n", "<leader>sa", "<Cmd>Telescope live_grep<CR>", { desc = "Search: Grep" })
set("n", "<leader>sc", "<Cmd>nohlsearch<CR>", { desc = "Search: Clear highlight" })
set("n", "<leader>sh", "<Cmd>Telescope help_tags<CR>", { desc = "Search: Help tags" })

-- Toggles
set("n", "<leader>tl", "<Cmd>Telescope filetypes<CR>", { desc = "Toggle: Language" })
set("n", "<leader>tc", "<Cmd>Telescope colorscheme<CR>", { desc = "Toggle: Color scheme" })
set("n", "<leader>ts", "<Cmd>LspInfo<CR>", { desc = "Toggle: LSP diagnostics" })

-- Window (leave as prefix for user to type next key)
set("n", "<leader>w", "<C-W>", { desc = "Window" })
