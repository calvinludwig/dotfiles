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
					-- vim
					"lua",
					"vim",
					"vimdoc",

					-- elixir
					"elixir",
					"erlang",

					-- go
					"go",
					"gomod",
					"gowork",
					"gosum",

					-- rust
					"rust",
					"toml",

					-- php
					"php",
					"phpdoc",
					"php_only",

					-- web
					"html",
					"css",
					"scss",

					-- js
					"javascript",
					"typescript",
					"tsx",
					"vue",
					"svelte",
					"json",

					-- c
					"c",
					"cpp",
					"zig",

					-- sh
					"bash",
					"fish",
					-- config files
					"yaml",
					"dockerfile",
					"xml",
					-- git
					"git_config",
					"git_rebase",
					"gitattributes",
					"gitcommit",
					"gitignore",

					-- other
					"sql",
					"markdown",
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

			local parsers = require("nvim-treesitter.parsers").get_parser_configs()

			parsers.blade = {
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
