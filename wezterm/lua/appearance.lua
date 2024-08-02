local w = require 'wezterm'
local M = {}
local rose_pine = w.plugin.require('https://github.com/neapsix/wezterm')
local variant = 'main' -- 'main' | 'moon' | 'dawn'
M.setup = function(c)
	c.colors = rose_pine[variant].colors()
	c.window_padding = {
		left = 0, right = 0, top = 0, bottom = 0 }
end
return M
