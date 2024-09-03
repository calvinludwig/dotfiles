local common = require("plugins.lsp.common")
require("lspconfig").elixirls.setup({
	on_attach = common.on_attach,
	capabilities = common.capabilities,
})
