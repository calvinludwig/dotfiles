return {
	{
		enabled = true,
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			require("catppuccin").setup({})
			vim.cmd.colorscheme("catppuccin-frappe")
		end,
	},
}
