local w = require 'wezterm'
local M = {}
local function tab_title(tab_info)
	return tab_info.tab_index
end
M.setup = function(c)
	c.tab_bar_at_bottom = true
	c.show_new_tab_button_in_tab_bar = false
	c.use_fancy_tab_bar = false
	c.hide_tab_bar_if_only_one_tab = true

	w.on(
		'format-tab-title',
		function(tab, tabs, panes, config, hover, max_width)
			local title = tab_title(tab)
			return { { Text = '  ' .. title .. '  ' }, }
		end
	)
end

return M
