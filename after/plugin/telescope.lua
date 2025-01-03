local builtin = require('telescope.builtin')
require('telescope').setup({
    defaults = {
        file_ignore_patterns = {"node_modules", "dist", ".git"}
    }
})

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pl', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set("n", "<leader>po", "<CMD>Telescope oldfiles<CR>", { desc = "Find recently opened files" })
