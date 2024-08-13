local MAIN = {}

MAIN.palette = {
	base = "#191724",
	overlay = "#26233a",
	muted = "#6e6a86",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ebbcba",
	pine = "#31748f",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	highlight_high = "#524f67",
}

local main_active_tab = {
	bg_color = MAIN.palette.base,
	fg_color = MAIN.palette.gold,
}

local main_inactive_tab = {
	bg_color = MAIN.palette.overlay,
	fg_color = MAIN.palette.pine,
}

function MAIN.colors()
	return {
		foreground = MAIN.palette.text,
		background = MAIN.palette.base,
		cursor_bg = MAIN.palette.highlight_high,
		cursor_border = MAIN.palette.highlight_high,
		cursor_fg = MAIN.palette.text,
		selection_bg = "#2a283e",
		selection_fg = MAIN.palette.text,

		ansi = {
			MAIN.palette.overlay,
			MAIN.palette.love,
			MAIN.palette.pine,
			MAIN.palette.gold,
			MAIN.palette.foam,
			MAIN.palette.iris,
			MAIN.palette.rose,
			MAIN.palette.text,
		},

		brights = {
			MAIN.palette.muted,
			MAIN.palette.love,
			MAIN.palette.pine,
			MAIN.palette.gold,
			MAIN.palette.foam,
			MAIN.palette.iris,
			MAIN.palette.rose,
			MAIN.palette.text,
		},

		tab_bar = {
			background = MAIN.palette.overlay,
			active_tab = main_active_tab,
			inactive_tab = main_inactive_tab,
			inactive_tab_hover = main_active_tab,
			new_tab = main_inactive_tab,
			new_tab_hover = main_active_tab,
			inactive_tab_edge = MAIN.palette.muted, -- (Fancy tab bar only)
		},
	}
end

local MOON = {}

MOON.palette = {
	base = "#232136",
	overlay = "#393552",
	muted = "#6e6a86",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	-- rose = '#ea9a97',
	pine = "#3e8fb0",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	-- highlight_high = '#56526e',
}

local moon_active_tab = {
	bg_color = MOON.palette.overlay,
	fg_color = MOON.palette.text,
}

local moon_inactive_tab = {
	bg_color = MOON.palette.base,
	fg_color = MOON.palette.muted,
}

function MOON.colors()
	return {
		foreground = MOON.palette.text,
		background = MOON.palette.base,
		cursor_bg = "#59546d",
		cursor_border = "#59546d",
		cursor_fg = MOON.palette.text,
		selection_bg = MOON.palette.overlay,
		selection_fg = MOON.palette.text,

		ansi = {
			MOON.palette.overlay,
			MOON.palette.love,
			MOON.palette.pine,
			MOON.palette.gold,
			MOON.palette.foam,
			MOON.palette.iris,
			"#ebbcba", -- replacement for rose,
			MOON.palette.text,
		},

		brights = {
			"#817c9c", -- replacement for muted,
			MOON.palette.love,
			MOON.palette.pine,
			MOON.palette.gold,
			MOON.palette.foam,
			MOON.palette.iris,
			"#ebbcba", -- replacement for rose,
			MOON.palette.text,
		},

		tab_bar = {
			background = MOON.palette.base,
			active_tab = moon_active_tab,
			inactive_tab = moon_inactive_tab,
			inactive_tab_hover = moon_active_tab,
			new_tab = moon_inactive_tab,
			new_tab_hover = moon_active_tab,
			inactive_tab_edge = MOON.palette.muted, -- (Fancy tab bar only)
		},
	}
end

local DAWN = {}

DAWN.palette = {
	base = "#faf4ed",
	overlay = "#f2e9e1",
	muted = "#9893a5",
	text = "#575279",
	love = "#b4637a",
	gold = "#ea9d34",
	rose = "#d7827e",
	pine = "#286983",
	foam = "#56949f",
	iris = "#907aa9",
	-- highlight_high = '#cecacd',
}

local dawn_active_tab = {
	bg_color = DAWN.palette.overlay,
	fg_color = DAWN.palette.text,
}

local dawn_inactive_tab = {
	bg_color = DAWN.palette.base,
	fg_color = DAWN.palette.muted,
}

function DAWN.colors()
	return {
		foreground = DAWN.palette.text,
		background = DAWN.palette.base,
		cursor_bg = DAWN.palette.muted,
		cursor_border = DAWN.palette.muted,
		cursor_fg = DAWN.palette.text,
		selection_bg = DAWN.palette.overlay,
		selection_fg = DAWN.palette.text,

		ansi = {
			"#f2e9de",
			DAWN.palette.love,
			DAWN.palette.pine,
			DAWN.palette.gold,
			DAWN.palette.foam,
			DAWN.palette.iris,
			DAWN.palette.rose,
			DAWN.palette.text,
		},

		brights = {
			"#6e6a86", -- muted from rose-pine palette
			DAWN.palette.love,
			DAWN.palette.pine,
			DAWN.palette.gold,
			DAWN.palette.foam,
			DAWN.palette.iris,
			DAWN.palette.rose,
			DAWN.palette.text,
		},

		tab_bar = {
			background = DAWN.palette.base,
			active_tab = dawn_active_tab,
			inactive_tab = dawn_inactive_tab,
			inactive_tab_hover = dawn_active_tab,
			new_tab = dawn_inactive_tab,
			new_tab_hover = dawn_active_tab,
			inactive_tab_edge = DAWN.palette.muted, -- (Fancy tab bar only)
		},
	}
end

return {
	main = MAIN,
	moon = MOON,
	dawn = DAWN,
}
