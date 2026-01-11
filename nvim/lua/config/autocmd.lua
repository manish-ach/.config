-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end,
})

-- disable automatic comment on newline
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
	end,
})

-- oil habamax
-- Example HabaMax-like palette (replace with real HabaMax colors)
-- vim.api.nvim_set_hl(0, "OilNormal", { fg = "#dcd7ba", bg = "#1f1f28" })
-- vim.api.nvim_set_hl(0, "OilFloat", { fg = "#dcd7ba", bg = "#1f1f28" })
-- vim.api.nvim_set_hl(0, "OilCursorLine", { bg = "#2a2a37" })
-- vim.api.nvim_set_hl(0, "OilDir", { fg = "#7fb4ca" })
-- vim.api.nvim_set_hl(0, "OilFile", { fg = "#c8a0d3" })
-- vim.api.nvim_set_hl(0, "OilBorder", { fg = "#7aa2f7", bg = "#1f1f28" })
