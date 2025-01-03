vim.keymap.set({ "n", "t" }, "<leader>lg", function()
	-- Check all windows for a terminal running lazygit
	local found_window = false
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		local buf_name = vim.api.nvim_buf_get_name(buf)
		if buf_name:match("lazygit") then
			vim.api.nvim_win_close(win, true)
			found_window = true
			break
		end
	end

	-- If no lazygit window was found and closed, open a new one
	if not found_window then
		vim.cmd("LazyGit")
	end
end, { desc = "Toggle LazyGit" })
