local wk = require("which-key")

local cmd = function(command)
  return "<Esc><Cmd>" .. command .. "<CR>"
end

local luacmd = function(command)
  return "<Esc><Cmd>lua " .. command .. "<CR>"
end

wk.register({
  b = {
    name = "Buffer",
    D = { cmd([[%bd|e #]]), "Close others" },
    b = { cmd([[Telescope buffers]]), "Choose" },
    d = { cmd([[bp|bd #]]), "Close" },
    n = { cmd([[enew]]), "New" },
    Y = { "ggVGy", "Yank" },
    P = { "ggVGp", "Paste" },
  },
  f = {
    name = "File",
    s = { cmd([[:w]]), "Save" },
    f = { cmd([[Telescope find_files]]), "Choose" },
    e = {
      name = "Configs",
      d = { cmd([[edit $MYVIMRC]]), "Edit config" },
      R = { cmd([[runtime! plugin/**/* | luafile $MYVIMRC]]), "Reload" },
    },
  },
  g = {
    name = "Git",
    g = { cmd([[vertical G]]), "Status" },
    b = { cmd([[G blame]]), "Blame" },
  },
  i = {
    name = "Interact",
    i = { luacmd([[vim.lsp.buf.code_action()]]), "Code Action" },
    r = { luacmd([[vim.lsp.buf.rename()]]), "Rename" },
    h = { luacmd([[vim.lsp.buf.hover()]]), "Hover" },
  },
  j = {
    name = "Jump",
    j = { luacmd([[vim.lsp.buf.definition()]]), "Definition" },
    r = { luacmd([[vim.lsp.buf.references()]]), "References" },
    s = { luacmd([[vim.lsp.buf.signature_help()]]), "Signature" },
    t = { luacmd([[vim.lsp.buf.type_definition()]]), "Type Definition" },
    i = { luacmd([[vim.lsp.buf.implementation()]]), "Implementation" },
    m = { cmd([[Telescope marks]]), "Marks" },
  },
  s = {
    name = "Search",
    a = { cmd([[Telescope live_grep]]), "Grep" },
    c = { cmd([[:nohlsearch]]), "Clear highlight" },
    h = { cmd([[Telescope help_tags]]), "Help tags" },
  },
  t = {
    name = "Toggles",
    l = { cmd([[Telescope filetypes]]), "Language" },
    c = { cmd([[Telescope colorscheme]]), "Color scheme" },
    s = { cmd([[LspInfo]]), "Lsp diagnostics" },
  },
}, { prefix = "<leader>" })
