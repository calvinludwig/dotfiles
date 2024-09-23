return {
	"j-hui/fidget.nvim",
	tag = "v1.4.5",
	event = "UIEnter",
	config = function()
		require("fidget").setup({ notification = { window = { winblend = 0 } } })
	end,
}
