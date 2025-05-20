local w = require 'wezterm'
local M = {}

local font_family = 'Monaspace Argon'

M.setup = function(c)
  c.line_height = 1.2
  c.font_size = 16
  c.font = w.font_with_fallback {
    { family = font_family, weight = 'Regular' },
    { family = 'JetBrains Mono' },
    { family = 'Symbols Nerd Font' },
    { family = 'FontAwesome' },
    { family = 'Noto Color Emoji' },
  }
end

return M
