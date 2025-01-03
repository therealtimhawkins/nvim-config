vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen)

vim.keymap.set("n", "<D-s>", ":w<CR>")
vim.keymap.set("i", "<D-s>", "<Esc>:w<CR>")
vim.keymap.set("v", "<D-s>", "<Esc>:w<CR>")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

vim.keymap.set("n", "grn", vim.lsp.buf.rename)
vim.keymap.set("n", "grr", vim.lsp.buf.references)

vim.keymap.set("v", "∆", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "˚", ":m '<-2<CR>gv=gv")
