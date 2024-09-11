local M = {}
local wezterm = require 'wezterm'
local custom = wezterm.color.get_builtin_schemes()['Catppuccin Mocha']
custom.background = '#000000'
custom.tab_bar.background = '#0a0a0a'
custom.tab_bar.inactive_tab.bg_color = '#141414'

M.setup = function(c)
	c.window_decorations = 'NONE'
	c.color_schemes = {
		['OLEDppuccin'] = custom,
	}
	c.color_scheme = 'OLEDppuccin'
	c.window_padding = {
		left = '1cell',
		right = '1cell',
		top = 0,
		bottom = 0,
	}
end
return M
