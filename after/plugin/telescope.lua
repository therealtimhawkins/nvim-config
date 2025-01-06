local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules", "dist", ".git" },
	},
	pickers = {
		oldfiles = {
			theme = "ivy",
		},
		git_branches = {
			theme = "ivy",
		},
		buffers = {
			theme = "ivy",
		},
		find_files = {
			theme = "ivy",
			find_command = {
				"rg",
				"--files",
				"--hidden",
				"--no-require-git",
			},
		},
	},
})

-- When setting up keymaps, you need to pass the picker options
vim.keymap.set("n", "<leader>pf", function()
	builtin.find_files(require("telescope.themes").get_ivy({}))
end, { desc = "Telescope find files" })

vim.keymap.set("n", "<leader>pg", function()
	builtin.git_files(require("telescope.themes").get_ivy({}))
end, { desc = "Telescope find files" })

vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({
		search = vim.fn.input("Grep > "),
		theme = "ivy",
	})
end)

vim.keymap.set("n", "<leader>pl", function()
	builtin.live_grep(require("telescope.themes").get_ivy({}))
end, { desc = "Telescope live grep" })
