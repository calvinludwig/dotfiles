local wezterm = require 'wezterm'
local M = {}

local font_family = 'Monaspace Neon'

M.setup = function(c)
  c.line_height = 1
  c.font_size = 17
  c.font = wezterm.font_with_fallback {
    { family = font_family, weight = 'Regular' },
    { family = 'JetBrains Mono' },
    { family = 'Symbols Nerd Font' },
    { family = 'FontAwesome' },
    { family = 'Noto Color Emoji' },
  }
end

return M
