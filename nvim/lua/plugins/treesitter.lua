return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			vim.filetype.add({
				pattern = {
					[".*%.blade%.php"] = "blade",
				},
			})

			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"lua",
					"go",
					"gomod",
					"gowork",
					"gosum",
					"rust",
					"sql",
					"php",
					"phpdoc",
					"html",
					"css",
					"javascript",
					"typescript",
					"tsx",
					"c",
					"cpp",
					"zig",
					"gleam",
					-- sh
					"bash",
					"fish",
					-- config files
					"json",
					"yaml",
					"toml",
					"dockerfile",
					"xml",
					-- git
					"git_config",
					"git_rebase",
					"gitattributes",
					"gitcommit",
					"gitignore",
					-- other
					"markdown",
					"vim",
					"vimdoc",
					"query",
					"comment",
					"regex",
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				auto_install = true,
				modules = {},
				ignore_install = {},
			})

			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

			parser_config.blade = {
				install_info = {
					url = "https://github.com/EmranMR/tree-sitter-blade",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "blade",
			}
		end,
	},
}
