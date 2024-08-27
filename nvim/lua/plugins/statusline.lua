return {
	{
		enabled = true,
		"nvim-lualine/lualine.nvim",
		event = "ColorScheme",
		config = function()
			require("lualine").setup({
				options = {

					theme = "catppuccin",
				},
			})
		end,
	},
}
