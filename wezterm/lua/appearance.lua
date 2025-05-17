local M = {}
local wezterm = require 'wezterm'

local function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Catppuccin Frappe'
  else
    return 'Catppuccin Latte'
  end
end

M.setup = function(c)
  c.window_decorations = 'TITLE|RESIZE'
  c.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
  c.enable_wayland = true
  c.window_padding = {
    left = '1cell',
    right = '1cell',
    top = 0,
    bottom = 0,
  }
end

return M
