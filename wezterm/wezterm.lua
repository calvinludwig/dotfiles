local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Macchiato'

config.line_height = 1.2
config.font_size = 15

config.font = wezterm.font_with_fallback {
	{ family = 'JetBrains Mono',    weight = 'Medium' },
	{ family = 'Symbols Nerd Font', scale = 0.8 },
	{ family = 'Noto Color Emoji',  scale = 0.8 },
}
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.keys = require 'lua/keys'
config.window_decorations = "RESIZE"

return config
