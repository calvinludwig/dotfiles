local M = {}
local rose_pine = require('lua/themes/rose-pine')
local variant = 'moon' -- 'main' | 'moon' | 'dawn'
M.setup = function(c)
	c.colors = rose_pine[variant].colors()
	c.window_padding = {
		left = '1cell',
		right = 0,
		top = 0,
		bottom = 0
	}
end
return M
