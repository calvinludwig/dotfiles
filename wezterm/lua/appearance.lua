local M = {}

M.setup = function(c)
  local wezterm = require 'wezterm'
  local theme = wezterm.plugin.require('https://github.com/neapsix/wezterm').dawn
  c.colors = theme.colors()
  c.window_decorations = 'TITLE|RESIZE'
  c.enable_wayland = true
  c.window_padding = {
    left = '1cell',
    right = '1cell',
    top = 0,
    bottom = 0,
  }
end

return M
