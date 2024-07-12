local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'

config.font_size = 17
config.font = wezterm.font_with_fallback {
	{ family = 'Ibm Plex Mono', weight = 'Regular' },
	{ family = 'JetBrains Mono', weight = 'Regular' },
	{ family = 'Symbols Nerd Font', scale = 0.8 },
	{ family = 'Noto Color Emoji', scale = 0.8 },
}
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.keys = require 'lua/keys'
return config
