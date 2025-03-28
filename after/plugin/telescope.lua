local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules", "dist", ".git" },
	},
})

vim.keymap.set("n", "<leader>pf", function()
	builtin.find_files(require("telescope.themes"))
end, { desc = "Telescope find files" })

vim.keymap.set("n", "<leader>pg", function()
	builtin.git_files(require("telescope.themes"))
end, { desc = "Telescope find files" })

vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({
		search = vim.fn.input("Grep > "),
	})
end, { desc = "Telescope grep string" })

vim.keymap.set("n", "<leader>pl", function()
	builtin.live_grep(require("telescope.themes"))
end, { desc = "Telescope live grep" })

vim.keymap.set("n", "<leader>po", "<CMD>Telescope oldfiles<CR>", { desc = "Find recently opened files" })
