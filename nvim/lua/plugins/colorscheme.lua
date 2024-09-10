return {
	{
		enabled = true,
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			require("catppuccin").setup({
				color_overrides = {
					mocha = {
						surface2 = "#333333",
						surface1 = "#292929",
						surface0 = "#1f1f1f",
						base = "#000000",
						mantle = "#0a0a0a",
						crust = "#141414",
					},
				},
				integrations = {
					fidget = true,
					gitsigns = true,
					telescope = {
						enabled = true,
						style = "nvchad",
					},
					neotree = true,
					mason = true,
				},
			})
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
