return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>F",
			function()
				require("conform").format({
					timeout_ms = 100,
					lsp_fallback = true,
				})
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- Everything in opts will be passed to setup()
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			blade = { "blade-formatter" },
		},
		-- Set up format-on-save
		-- format_on_save = { timeout_ms = 500, lsp_fallback = true },
		-- Customize formatters
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2" },
			},
		},
	},
	init = function()
		vim.api.nvim_create_user_command("Format", function()
			print("Formatting...")
			require("conform").format({
				timeout_ms = 100,
				lsp_fallback = true,
			})
		end, {})
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
