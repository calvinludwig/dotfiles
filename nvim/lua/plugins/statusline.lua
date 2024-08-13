return {
	{
		enabled = false,
		"nvim-lualine/lualine.nvim",
		event = "ColorScheme",
		config = function()
			require("lualine").setup({})
		end,
	},
}
