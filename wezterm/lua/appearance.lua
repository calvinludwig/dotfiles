local M = {}

M.setup = function(c)
  c.window_decorations = 'TITLE|RESIZE'
  c.color_schemes = {
    ['Latte'] = M.latte(),
  }
  c.color_scheme = 'Latte'
  c.enable_wayland = true
  c.window_padding = {
    left = '1cell',
    right = '1cell',
    top = 0,
    bottom = 0,
  }
end

M.latte = function()
  local wezterm = require 'wezterm'
  local latte = wezterm.color.get_builtin_schemes()['Catppuccin Latte']
  latte.tab_bar.active_tab.bg_color = '#179299'
  return latte
end

return M
