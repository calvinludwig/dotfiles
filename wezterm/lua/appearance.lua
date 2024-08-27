local M = {}

M.setup = function(c)
	c.window_decorations = 'NONE'
	c.color_scheme = 'Catppuccin Frappe'
	c.window_padding = {
		left = '1cell',
		right = '1cell',
		top = 0,
		bottom = 0,
	}
end
return M
