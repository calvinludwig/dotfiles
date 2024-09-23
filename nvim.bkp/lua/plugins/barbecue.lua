return {
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		event = "BufReadPre",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			theme = "catppuccin",
		},
	},
}
