return {
  "justinmk/vim-dirvish",
  event = { "BufReadPost", "BufNewFile" },
  init = function()
    -- Put directories on top of the listing
    vim.g.dirvish_mode = ":sort | sort ,^.*[\\/],"
  end,
}
