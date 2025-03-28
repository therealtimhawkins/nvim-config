require("yazi").setup({
	keymaps = {
		show_help = "<f1>",
	},
	open_for_directories = true,
	init = function()
		vim.g.loaded_netrwPlugin = 1
	end,
})

vim.keymap.set("n", "<leader>-", "<cmd>Yazi<cr>", { desc = "Open yazi at the current file" })
vim.keymap.set("n", "<leader>cw", "<cmd>Yazi cwd<cr>", { desc = "Open the file manager in nvim's working directory" })
vim.keymap.set("n", "<c-up>", "<cmd>Yazi toggle<cr>", { desc = "Resume the last yazi session" })
