return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		version = false,
		cmd = { "Telescope" },
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "MunifTanjim/nui.nvim" },
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-telescope/telescope-file-browser.nvim" },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},
		event = "VimEnter",
		lazy = false,
		keys = {
			-- Files
			{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
			{ "<leader>fg", "<cmd>Telescope git_files<cr>" },
			{ "<leader>fs", "<cmd>Telescope live_grep<cr>" },
			{ "<leader>fo", "<cmd>Telescope oldfiles<cr>" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>" },
			--
			-- File Browser
			{ "<leader>e", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>" },
			{ "<leader>E", "<cmd>Telescope file_browser<cr>" },

			-- LSP
			{ "<leader>lr", "<cmd>Telescope lsp_references<cr>" },
			{ "<leader>lci", "<cmd>Telescope lsp_incoming_calls<cr>" },
			{ "<leader>lco", "<cmd>Telescope lsp_outgoing_calls<cr>" },
			{ "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>" },
			{ "<leader>lS", "<cmd>Telescope lsp_workspace_symbols<cr>" },
			{ "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>" },
			{ "<leader>lD", "<cmd>Telescope diagnostics<cr>" },
			{ "<leader>lgi", "<cmd>Telescope lsp_implementations<cr>" },
			{ "<leader>lgd", "<cmd>Telescope lsp_definitions<cr>" },
			{ "<leader>lgt", "<cmd>Telescope lsp_type_definitions<cr>" },

			-- Other
			{ "<leader>:", "<cmd>Telescope command_history<cr>" },
			{ "<leader>hh", "<cmd>Telescope help_tags<cr>" },
			{ "<leader>ts", "<cmd>Telescope treesitter<cr>" },
		},
		config = function()
			local actions = require("telescope.actions")
			require("telescope").setup({
				defaults = {
					color_devicons = true,
					sorting_strategy = "descending",
					layout_strategy = "flex",
					layout_config = {
						horizontal = {
							prompt_position = "top",
							preview_width = 0.65,
						},
						vertical = {
							prompt_position = "top",
							mirror = true,
							preview_cutoff = 10,
							preview_height = 0.65,
						},
					},
					mappings = {
						i = {
							["<esc>"] = actions.close,
						},
					},
				},
				pickers = {
					buffers = {
						mappings = {
							i = {
								["<c-d>"] = actions.delete_buffer + actions.move_to_top,
							},
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					file_browser = {
						theme = "ivy",
						-- disables netrw and use telescope-file-browser in its place
						hijack_netrw = true,
						mappings = {
							["i"] = {
								-- your custom insert mode mappings
							},
							["n"] = {
								-- your custom normal mode mappings
							},
						},
					},
				},
			})

			require("telescope").load_extension("fzf")
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("file_browser")
		end,
	},
}
