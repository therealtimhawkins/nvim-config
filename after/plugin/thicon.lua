-- Create highlight group for the icon
vim.api.nvim_command("highlight default StatusIcon guifg=#98c379 ctermfg=114")

-- Function to create the floating window with the icon
local function create_status_icon()
	-- Create buffer for the icon
	local buf = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_buf_set_lines(buf, 0, -1, true, { "NEO" }) -- You can change the icon here

	-- Window configuration
	local opts = {
		relative = "editor",
		row = 0,
		col = vim.o.columns - 3, -- Position from the right
		width = 3,
		height = 1,
		style = "minimal",
		focusable = false,
	}

	-- Create window
	local win = vim.api.nvim_open_win(buf, false, opts)

	-- Apply highlight
	vim.api.nvim_win_set_option(win, "winhighlight", "Normal:StatusIcon")

	-- Store window and buffer IDs in a global table
	_G.status_icon_state = {
		win = win,
		buf = buf,
	}
end

-- Function to update window position when terminal is resized
local function update_icon_position()
	local state = _G.status_icon_state
	if state and state.win and vim.api.nvim_win_is_valid(state.win) then
		vim.api.nvim_win_set_config(state.win, {
			relative = "editor",
			row = 0,
			col = vim.o.columns - 2,
		})
	end
end

-- Create autocommands for the icon
local icon_group = vim.api.nvim_create_augroup("StatusIcon", { clear = true })

-- Create icon when Neovim starts
vim.api.nvim_create_autocmd("VimEnter", {
	group = icon_group,
	callback = create_status_icon,
})

-- Update position when window is resized
vim.api.nvim_create_autocmd("VimResized", {
	group = icon_group,
	callback = update_icon_position,
})
