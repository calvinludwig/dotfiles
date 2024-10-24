local w = require 'wezterm'
local M = {}

local font_family = 'IBM Plex Mono'

M.setup = function(c)
	c.line_height = 1.1
	c.font_size = 18
	c.font = w.font_with_fallback {
		{ family = font_family, weight = 'Regular' },
		{ family = 'JetBrains Mono' },
		{ family = 'Symbols Nerd Font', scale = 0.85 },
		{ family = 'Noto Color Emoji', scale = 0.85 },
	}
end

return M
