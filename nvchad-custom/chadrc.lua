-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "radium",
  transparency = true
}

M.plugins = require"custom.plugins"


return M
