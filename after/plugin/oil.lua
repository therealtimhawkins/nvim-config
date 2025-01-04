require("oil").setup()

vim.keymap.set("n", "go", "<CMD>Oil --float %:p:h<CR>", { desc = "Open directory" })
