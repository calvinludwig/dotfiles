local w = require 'wezterm'
local M = {}

local monaspace = { 'Neon', 'Argon', 'Xenon', 'Radon', 'Krypton' }

local font_family = 'Monaspace ' .. monaspace[2]

M.setup = function(c)
	c.line_height = 1
	c.font_size = 20
	c.font = w.font_with_fallback {
		{ family = 'JetBrains Mono', weight = 'Medium' },
		-- { family = font_family, weight = 'Regular' },
		{ family = 'Symbols Nerd Font', scale = 0.8 },
		{ family = 'Noto Color Emoji', scale = 0.8 },
	}
end

return M
