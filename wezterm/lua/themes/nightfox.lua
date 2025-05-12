local M = {}

M.DAYFOX = {
	foreground = '#3d2b5a',
	background = '#f6f2ee',
	cursor_bg = '#3d2b5a',
	cursor_border = '#3d2b5a',
	cursor_fg = '#f6f2ee',
	compose_cursor = '#955f61',
	selection_bg = '#e7d2be',
	selection_fg = '#3d2b5a',
	scrollbar_thumb = '#824d5b',
	split = '#e4dcd4',
	visual_bell = '#3d2b5a',
	ansi = { '#352c24', '#a5222f', '#396847', '#ac5402', '#2848a9', '#6e33ce', '#287980', '#f2e9e1' },
	brights = { '#534c45', '#b3434e', '#577f63', '#b86e28', '#4863b6', '#8452d5', '#488d93', '#f4ece6' },
	tab_bar = {
		background = '#e4dcd4',
		active_tab = {
			bg_color = '#f6f2ee',
			fg_color = '#3d2b5a',
		},
		inactive_tab = {
			bg_color = '#e4dcd4',
			fg_color = '#955f61',
		},
		inactive_tab_hover = {
			bg_color = '#f6f2ee',
			fg_color = '#3d2b5a',
		},
	},
}
M.CARBONFOX = {
	foreground = '#f2f4f8',
	background = '#161616',
	cursor_bg = '#f2f4f8',
	cursor_border = '#f2f4f8',
	cursor_fg = '#161616',
	compose_cursor = '#3ddbd9',
	selection_bg = '#2a2a2a',
	selection_fg = '#f2f4f8',
	scrollbar_thumb = '#7b7c7e',
	split = '#0c0c0c',
	visual_bell = '#f2f4f8',
	ansi = { '#282828', '#ee5396', '#25be6a', '#08bdba', '#78a9ff', '#be95ff', '#33b1ff', '#dfdfe0' },
	brights = { '#484848', '#f16da6', '#46c880', '#2dc7c4', '#8cb6ff', '#c8a5ff', '#52bdff', '#e4e4e5' },
	tab_bar = {
		background = '#0C0C0C',
		active_tab = {
			bg_color = '#161616',
			fg_color = '#f2f4f8',
		},
		inactive_tab = {
			bg_color = '#0C0C0C',
			fg_color = '#484848',
		},
		inactive_tab_hover = {
			bg_color = '#161616',
			fg_color = '#f2f4f8',
		},
	},
}

return M
