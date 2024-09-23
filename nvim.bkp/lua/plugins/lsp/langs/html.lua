local common = require("plugins.lsp.common")
require("lspconfig").html.setup({
	on_attach = common.on_attach,
	capabilities = common.capabilities,
})
