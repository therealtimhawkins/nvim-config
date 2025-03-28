vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen, { desc = "Open NvimTree" })

vim.keymap.set("n", "<D-s>", ":w<CR>", { desc = "Save" })
vim.keymap.set("i", "<D-s>", "<Esc>:w<CR>", { desc = "Save" })
vim.keymap.set("v", "<D-s>", "<Esc>:w<CR>", { desc = "Save" })

vim.keymap.set("n", "<D-_>", "gcc", { desc = "Toggle comment" })
vim.keymap.set("x", "<D-_>", "gc", { desc = "Toggle comment" })
vim.keymap.set("v", "<D-_>", "gc", { desc = "Toggle comment" })

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open diagnostics" })

vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "grr", vim.lsp.buf.references, { desc = "References" })

vim.keymap.set("v", "∆", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "˚", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, desc = "Move right" })
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, desc = "Move left" })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, desc = "Move up" })

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { silent = true, desc = "Clear highlights" })
