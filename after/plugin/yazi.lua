require('yazi').setup({
	-- if you want to open yazi instead of netrw, see below for more info
	open_for_directories = false,
	keymaps = {
		show_help = '<f1>',
	},
})

-- Key mappings
vim.keymap.set('n', '<leader>-y', '<cmd>Yazi<cr>', 
{ desc = 'Open yazi at the current file' })

vim.keymap.set('n', '<leader>cw', '<cmd>Yazi cwd<cr>', 
{ desc = "Open the file manager in nvim's working directory" })

-- NOTE: this requires a version of yazi that includes
-- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
vim.keymap.set('n', '<c-up>', '<cmd>Yazi toggle<cr>', 
{ desc = 'Resume the last yazi session' })
