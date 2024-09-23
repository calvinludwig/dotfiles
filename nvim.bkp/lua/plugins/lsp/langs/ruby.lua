local common = require("plugins.lsp.common")

require("lspconfig").ruby_lsp.setup({
	on_attach = common.on_attach,
	capabilities = common.capabilities,
	init_options = {
		formatter = "standard",
		linters = { "standard" },
	},
})
