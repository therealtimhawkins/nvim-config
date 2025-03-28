require("therealtimhawkins.remap")
print("realtimhawkins loaded")

-- Function to open README file if it exists when opening a directory
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		if vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
			local readme_patterns = {
				"README.md",
				"README.txt",
				"README",
				"Readme.md",
				"readme.md",
			}

			for _, pattern in ipairs(readme_patterns) do
				local readme_path = vim.fn.argv(0) .. "/" .. pattern
				if vim.fn.filereadable(readme_path) == 1 then
					-- Open the README file
					vim.cmd("edit " .. vim.fn.fnameescape(readme_path))
					break
				end
			end
		end
	end,
	pattern = "*",
})

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
end, { desc = "Copy path with line number" })

vim.keymap.set("n", "<leader>yr", function()
	local path = vim.fn.expand("%")
	vim.fn.setreg("+", path)
	vim.notify("Copied " .. path, vim.log.levels.INFO)
end, { desc = "Copy path" })
