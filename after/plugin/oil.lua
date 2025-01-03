require("oil").setup()

vim.keymap.set("n", "-o", "<CMD>Oil --float %:p:h<CR>", { desc = "Open directory" })
