local dracula = require("dracula")
dracula.setup({
	transparent_bg = true,
})
vim.cmd([[colorscheme dracula]])

vim.opt.cursorline = true
vim.cmd([[highlight clear CursorLine]]) -- Clear any existing cursorline highlights
vim.cmd([[highlight CursorLineNr guifg=#8be9fd	]])

-- Set default color for normal mode
vim.cmd([[highlight CursorLineNr guifg=#ff79c6	]])

-- Change color for different modes
vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:[vV\x16]*",
	callback = function()
		vim.cmd([[highlight CursorLineNr guifg=#bd93f9	]])
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:t*",
	callback = function()
		vim.cmd([[highlight CursorLineNr guifg=#ffb86c	]])
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:i*",
	callback = function()
		vim.cmd([[highlight CursorLineNr guifg=#8be9fd	]])
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "[vV\x16ti]*:*",
	callback = function()
		vim.cmd([[highlight CursorLineNr guifg=#ff79c6	]])
	end,
})
