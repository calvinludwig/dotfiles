return {
	{
		enabled = true,
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			require("catppuccin").setup({
				flavour = "auto",
				background = {
					light = "latte",
					dark = "mocha",
				},
				color_overrides = {
					mocha = {
						-- surface2 = "#333333",
						-- surface1 = "#292929",
						-- surface0 = "#1f1f1f",
						-- base = "#000000",
						-- mantle = "#0a0a0a",
						-- crust = "#141414",
					},
					latte = {
						base = "#ffffff",
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
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
