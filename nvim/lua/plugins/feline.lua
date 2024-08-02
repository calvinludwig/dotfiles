return {
	{
		enabled = false,
		"freddiehaddad/feline.nvim",
		event = "VeryLazy",
		opts = {},
		config = function()
			local ctp_feline = require("catppuccin.groups.integrations.feline")

			ctp_feline.setup()

			require("feline").setup({
				components = ctp_feline.get(),
				force_inactive = {
					filetypes = {
						'^neo-tree$',
						'^NvimTree$',
						'^packer$',
						'^startify$',
						'^fugitive$',
						'^fugitiveblame$',
						'^qf$',
						'^help$'
					},
					buftypes = {
						'^terminal$'
					},
					bufnames = {}
				},
			})
		end,
	},
}
