local w = require 'wezterm'
local M = {}

local font_family = 'Maple Mono'

M.setup = function(c)
	c.line_height = 1
	c.font_size = 20
	c.font = w.font_with_fallback {
		{ family = font_family, weight = 'Regular' },
		{ family = 'JetBrains Mono', weight = 'Regular' },
		{ family = 'Symbols Nerd Font', scale = 0.8 },
		{ family = 'Noto Color Emoji', scale = 0.8 },
	}
end

return M
