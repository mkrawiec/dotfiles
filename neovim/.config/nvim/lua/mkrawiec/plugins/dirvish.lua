return {
  "justinmk/vim-dirvish",
  event = "VeryLazy",
  init = function()
    -- Put directories on top of the listing
    vim.g.dirvish_mode = ":sort | sort ,^.*[\\/],"
  end,
}
