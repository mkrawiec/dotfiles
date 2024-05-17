local set = vim.api.nvim_set_keymap

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
