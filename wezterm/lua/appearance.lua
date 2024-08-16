local M = {}

local colors = require('lua/themes/github').COLORS
M.setup = function(c)
	c.window_decorations = 'NONE'
	c.colors = colors("dark_default")
	c.window_padding = {
		left = '1cell',
		right = '1cell',
		top = 0,
		bottom = 0,
	}
end
return M
