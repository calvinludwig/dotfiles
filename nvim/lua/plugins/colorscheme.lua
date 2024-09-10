return {
	{
		enabled = true,
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			require("catppuccin").setup({
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
