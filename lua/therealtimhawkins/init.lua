require("therealtimhawkins.remap")
print("realtimhawkins loaded")

vim.opt.path:append("src")
vim.opt.path:append("node_modules")

vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.foldmethod = "indent" -- or syntax, manual, marker, expr
vim.opt.foldlevel = 99

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.gutentags_cache_dir = vim.fn.expand("~/.cache/nvim/ctags")
