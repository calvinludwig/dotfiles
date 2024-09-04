local common = require("plugins.lsp.common")
require("lspconfig").elixirls.setup({
	on_attach = common.on_attach,
	capabilities = common.capabilities,
	cmd = { "/home/ludwig/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
})
