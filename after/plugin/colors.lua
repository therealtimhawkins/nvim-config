local dracula = require("dracula")
dracula.setup({
	transparent_bg = true,
})
local colors = require("dracula").colors()
vim.cmd([[colorscheme dracula]])

vim.opt.cursorline = true
vim.cmd([[highlight clear CursorLine]]) -- Clear any existing cursorline highlights
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.cyan })

-- Change color for different modes
vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:[vV\x16]*",
	callback = function()
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.purple })
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:t*",
	callback = function()
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.orange })
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:i*",
	callback = function()
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.pink })
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:n*",
	callback = function()
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.cyan })
	end,
})
