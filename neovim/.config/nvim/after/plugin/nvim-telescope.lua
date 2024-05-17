local telescope = require("telescope")

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "package-lock.json",
    },
  },
})
