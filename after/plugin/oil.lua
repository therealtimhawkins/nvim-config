require("oil").setup({
	default_file_explorer = false,
})

vim.keymap.set("n", "go", "<CMD>Oil --float %:p:h<CR>", { desc = "Open directory" })
