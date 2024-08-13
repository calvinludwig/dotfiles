local M = {}

local carbonfox = require("lua/themes/nightfox").CARBONFOX
M.setup = function(c)
	c.colors = carbonfox
	c.window_padding = {
		left = "1cell",
		right = "1cell",
		top = 0,
		bottom = 0,
	}
end
return M
