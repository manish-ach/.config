return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		view_options = {
			show_hidden = "true",
		},
		float = {
			border = "rounded", -- choose border style
			win_options = {
				winhighlight = "Normal:OilNormal,NormalFloat:OilFloat,CursorLine:OilCursorLine",
			},
		},
	},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
}
