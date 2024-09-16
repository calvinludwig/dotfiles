local common = require("plugins.lsp.common")
require("lspconfig").lua_ls.setup({
	on_attach = common.on_attach,
	capabilities = common.capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			completion = {
				callSnippet = "Replace",
			},
			runtime = {
				version = "LuaJIT",
				special = { reload = "require" },
			},
			workspace = {
				library = {
					vim.fn.expand("$VIMRUNTIME/lua"),
					vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
					vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
				},
				checkThirdParty = false,
			},
		},
	},
})
