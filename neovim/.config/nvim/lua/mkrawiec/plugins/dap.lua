return {
  "mfussenegger/nvim-dap",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<leader>dq", "<Cmd>DapDisconnect<CR>", desc = "Debug: Disconnect" },
    { "<leader>dr", "<Cmd>DapToggleRepl<CR>", desc = "Debug: REPL" },

    { "<leader>dd", "<Cmd>DapToggleBreakpoint<CR>", desc = "Debug: Toggle Breakpoint" },
    { "<leader>dx", "<Cmd>DapClearBreakpoints<CR>", desc = "Debug: Clear Breakpoints" },

    { "<leader>dc", "<Cmd>DapContinue<CR>", desc = "Debug: Continue" },
    { "<leader>ds", "<Cmd>DapStepOver<CR>", desc = "Debug: Step Over" },
    { "<leader>di", "<Cmd>DapStepInto<CR>", desc = "Debug: Step Into" },
    { "<leader>do", "<Cmd>DapStepOut<CR>", desc = "Debug: Step Out" },
  },
  config = function()
    local dap = require("dap")
    vim.fn.sign_define("DapBreakpoint", { text = "󰝥", texthl = "DiagnosticError" })
    vim.fn.sign_define("DapStopped", { text = "", texthl = "DiagnosticInfo" })

    -- see: https://github.com/NormalNvim/NormalNvim/blob/main/lua/plugins/4-dev.lua
    dap.adapters.python = {
      type = "executable",
      command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python",
      args = { "-m", "debugpy.adapter" },
    }

    require("dap.ext.vscode").load_launchjs()
  end,
}
