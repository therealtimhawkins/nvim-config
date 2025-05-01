vim.g.user_emmet_install_global = 0
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte", "vue" },
	callback = function()
		vim.cmd("EmmetInstall")
	end,
})

-- Set the trigger key to <C-e>
vim.g.user_emmet_leader_key = '<C-e>'

-- Enable in all modes (optional)
vim.g.user_emmet_mode = 'a'
