local colors = require("dracula").colors()

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldcolumn = "1"

vim.keymap.set('n', '<leader>z', 'za', { desc = 'Toggle fold' })

vim.api.nvim_set_hl(0, "Folded", {
	bg = colors.visual,
	fg = colors.white
})
