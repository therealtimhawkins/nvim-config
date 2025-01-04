require("gitsigns").setup({
	current_line_blame = true,
	signcolumn = true,
})

vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#50fa7b" }) -- Green for additions
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffb86c" }) -- Yellow for changes
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff5555" })
