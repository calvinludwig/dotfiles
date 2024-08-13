return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	keys = {
		{ "<C-e>", "<cmd>Neotree toggle<cr>", desc = "Neotree Explorer" },
		{ "<C-S-e>", "<cmd>Neotree buffers toggle<cr>", desc = "Neotree Buffers" },
	},
	opts = function()
		local highlights = require("neo-tree.ui.highlights")
		return {
			close_if_last_window = true,
			enable_git_status = true,
			enable_diagnostics = true,
			window = {
				width = 30,
				position = "left",
				mappings = {
					["o"] = "open",
				},
			},
			filesystem = {
				filtered_items = {
					visible = true, -- when true, they will just be displayed differently than normal items
					hide_dotfiles = false,
					hide_gitignored = true,
					hide_by_name = {
						"node_modules",
					},
					hide_by_pattern = { -- uses glob style patterns
						--"*.meta",
						--"*/src/*/tsconfig.json",
					},
					always_show = { -- remains visible even if other settings would normally hide it
						--".gitignored",
					},
					never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
						--".DS_Store",
						--"thumbs.db"
					},
					never_show_by_pattern = { -- uses glob style patterns
						--".null-ls_*",
					},
				},
				follow_current_file = {
					enabled = true,
				},
			},
		}
	end,
}
