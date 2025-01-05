vim.g.db_ui_save_location = vim.fn.stdpath("config") .. "/db_ui"
vim.g.db_ui_use_nerd_fonts = 1

vim.keymap.set("n", "<leader>du", ":DBUIToggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>df", ":DBUIFindBuffer<CR>", { silent = true })
vim.keymap.set("n", "<leader>dr", ":DBUIRenameBuffer<CR>", { silent = true })
