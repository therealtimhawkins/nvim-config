require("therealtimhawkins.remap")
print("realtimhawkins loaded")

vim.opt.path:append("src")
vim.opt.path:append("node_modules")

vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.foldmethod = "indent"

vim.opt.foldmethod = "indent" -- or syntax, manual, marker, expr
vim.opt.foldlevel = 99

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.gutentags_cache_dir = vim.fn.expand("~/.cache/nvim/ctags")

vim.keymap.set("n", "<leader>yl", function()
	local path = vim.fn.expand("%")
	local line_num = vim.fn.line(".")
	local path_with_line = path .. ":" .. line_num
	vim.fn.setreg("+", path_with_line)
	vim.notify("Copied " .. path_with_line, vim.log.levels.INFO)
end)

vim.keymap.set("n", "<leader>yr", function()
	local path = vim.fn.expand("%")
	vim.fn.setreg("+", path)
	vim.notify("Copied " .. path, vim.log.levels.INFO)
end)
