local M = {}
local wezterm = require 'wezterm'

local function scheme_for_appearance(appearance)
	if appearance:find 'Dark' then
		return 'Mocha'
	else
		return 'WHITEppuccin'
	end
end

local function mocha()
	local custom = wezterm.color.get_builtin_schemes()['Catppuccin Mocha']
	custom.tab_bar.background = '#0a0a0a'
	custom.tab_bar.background = '#313244'
	custom.tab_bar.inactive_tab.bg_color = '#313244'
	custom.tab_bar.inactive_tab.fg_color = '#a6adc8'
	custom.tab_bar.active_tab.bg_color = '#1e1e2e'
	custom.tab_bar.active_tab.fg_color = '#74c7ec'
	return custom
end

local function oledppuccin()
	local custom = wezterm.color.get_builtin_schemes()['Catppuccin Mocha']
	custom.background = '#000000'
	custom.tab_bar.background = '#0a0a0a'
	custom.tab_bar.inactive_tab.bg_color = '#141414'
	return custom
end

local function whiteppuccin()
	local custom = wezterm.color.get_builtin_schemes()['Catppuccin Latte']
	custom.background = '#ffffff'
	return custom
end

M.setup = function(c)
	c.window_decorations = 'TITLE|RESIZE'
	c.color_schemes = {
		['Mocha'] = mocha(),
		['OLEDppuccin'] = oledppuccin(),
		['WHITEppuccin'] = whiteppuccin(),
	}
	c.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
	c.window_padding = {
		left = '1cell',
		right = '1cell',
		top = 0,
		bottom = 0,
	}
end

return M
