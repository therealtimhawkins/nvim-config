-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', { 'nvim-0.5' }) ~= 1 then
	vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
	return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()
	_G._packer = _G._packer or {}
	_G._packer.inside_compile = true

	local time
	local profile_info
	local should_profile = false
	if should_profile then
		local hrtime = vim.loop.hrtime
		profile_info = {}
		time = function(chunk, start)
			if start then
				profile_info[chunk] = hrtime()
			else
				profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
			end
		end
	else
		time = function(chunk, start) end
	end

	local function save_profiles(threshold)
		local sorted_times = {}
		for chunk_name, time_taken in pairs(profile_info) do
			sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
		end
		table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
		local results = {}
		for i, elem in ipairs(sorted_times) do
			if not threshold or threshold and elem[2] > threshold then
				results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
			end
		end
		if threshold then
			table.insert(results,
				'(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
		end

		_G._packer.profile_output = results
	end

	time([[Luarocks path setup]], true)
	local package_path_str =
	"/Users/timhawkins/.cache/nvim/packer_hererocks/2.1.1744318430/share/lua/5.1/?.lua;/Users/timhawkins/.cache/nvim/packer_hererocks/2.1.1744318430/share/lua/5.1/?/init.lua;/Users/timhawkins/.cache/nvim/packer_hererocks/2.1.1744318430/lib/luarocks/rocks-5.1/?.lua;/Users/timhawkins/.cache/nvim/packer_hererocks/2.1.1744318430/lib/luarocks/rocks-5.1/?/init.lua"
	local install_cpath_pattern = "/Users/timhawkins/.cache/nvim/packer_hererocks/2.1.1744318430/lib/lua/5.1/?.so"
	if not string.find(package.path, package_path_str, 1, true) then
		package.path = package.path .. ';' .. package_path_str
	end

	if not string.find(package.cpath, install_cpath_pattern, 1, true) then
		package.cpath = package.cpath .. ';' .. install_cpath_pattern
	end

	time([[Luarocks path setup]], false)
	time([[try_loadstring definition]], true)
	local function try_loadstring(s, component, name)
		local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
		if not success then
			vim.schedule(function()
				vim.api.nvim_notify(
				'packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result,
					vim.log.levels.ERROR, {})
			end)
		end
		return result
	end

	time([[try_loadstring definition]], false)
	time([[Defining packer_plugins]], true)
	_G.packer_plugins = {
		["blink.cmp"] = {
			config = { "\27LJ\2\n�\2\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\14signature\1\0\1\fenabled\2\fsources\fdefault\1\0\1\fdefault\0\1\5\0\0\blsp\tpath\rsnippets\vbuffer\15appearance\1\0\2\22nerd_font_variant\tmono\28use_nvim_cmp_as_default\2\vkeymap\1\0\4\15appearance\0\vkeymap\0\fsources\0\14signature\0\1\0\1\vpreset\fdefault\nsetup\14blink.cmp\frequire\0" },
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/blink.cmp",
			url = "https://github.com/saghen/blink.cmp"
		},
		["conform.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/conform.nvim",
			url = "https://github.com/stevearc/conform.nvim"
		},
		["copilot.vim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/copilot.vim",
			url = "https://github.com/github/copilot.vim"
		},
		["dracula.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/dracula.nvim",
			url = "https://github.com/Mofiqul/dracula.nvim"
		},
		["emmet-vim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/emmet-vim",
			url = "https://github.com/mattn/emmet-vim"
		},
		["friendly-snippets"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/friendly-snippets",
			url = "https://github.com/rafamadriz/friendly-snippets"
		},
		["gitsigns.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
			url = "https://github.com/lewis6991/gitsigns.nvim"
		},
		["indent-blankline.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
			url = "https://github.com/lukas-reineke/indent-blankline.nvim"
		},
		["lazydocker.nvim"] = {
			config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vborder\vsingle\nsetup\15lazydocker\frequire\0" },
			loaded = false,
			needs_bufread = false,
			only_cond = false,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/opt/lazydocker.nvim",
			url = "https://github.com/mgierada/lazydocker.nvim"
		},
		["lazygit.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
			url = "https://github.com/kdheepak/lazygit.nvim"
		},
		["lualine.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/lualine.nvim",
			url = "https://github.com/nvim-lualine/lualine.nvim"
		},
		["mason-lspconfig.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
			url = "https://github.com/williamboman/mason-lspconfig.nvim"
		},
		["mason.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/mason.nvim",
			url = "https://github.com/williamboman/mason.nvim"
		},
		["neoscroll.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
			url = "https://github.com/karb94/neoscroll.nvim"
		},
		["noice.nvim"] = {
			config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\blsp\1\0\1\blsp\0\roverride\1\0\1\roverride\0\1\0\3\"vim.lsp.util.stylize_markdown\1 cmp.entry.get_documentation\0011vim.lsp.util.convert_input_to_markdown_lines\1\nsetup\nnoice\frequire\0" },
			load_after = {},
			loaded = true,
			needs_bufread = false,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/opt/noice.nvim",
			url = "https://github.com/folke/noice.nvim"
		},
		["nui.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/nui.nvim",
			url = "https://github.com/MunifTanjim/nui.nvim"
		},
		["nvim-autopairs"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
			url = "https://github.com/windwp/nvim-autopairs"
		},
		["nvim-lspconfig"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
			url = "https://github.com/neovim/nvim-lspconfig"
		},
		["nvim-treesitter"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
			url = "https://github.com/nvim-treesitter/nvim-treesitter"
		},
		["nvim-ufo"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/nvim-ufo",
			url = "https://github.com/kevinhwang91/nvim-ufo"
		},
		["nvim-web-devicons"] = {
			loaded = false,
			needs_bufread = false,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
			url = "https://github.com/nvim-tree/nvim-web-devicons"
		},
		["oil.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/oil.nvim",
			url = "https://github.com/stevearc/oil.nvim"
		},
		["outline.nvim"] = {
			config = { "\27LJ\2\n�\1\0\0\6\0\r\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\2B\0\2\1K\0\1\0\19outline_window\1\0\1\19outline_window\0\1\0\2\nwidth\3\30\rposition\tleft\nsetup\foutline\frequire\1\0\1\tdesc\19Toggle Outline\21<cmd>Outline<CR>\14<leader>o\6n\bset\vkeymap\bvim\0" },
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/outline.nvim",
			url = "https://github.com/hedyhli/outline.nvim"
		},
		["packer.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/packer.nvim",
			url = "https://github.com/wbthomason/packer.nvim"
		},
		["plenary.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/plenary.nvim",
			url = "https://github.com/nvim-lua/plenary.nvim"
		},
		["promise-async"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/promise-async",
			url = "https://github.com/kevinhwang91/promise-async"
		},
		["telescope-docker.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/telescope-docker.nvim",
			url = "https://github.com/krisajenkins/telescope-docker.nvim"
		},
		["telescope.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/telescope.nvim",
			url = "https://github.com/nvim-telescope/telescope.nvim"
		},
		["todo-comments.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
			url = "https://github.com/folke/todo-comments.nvim"
		},
		["toggleterm.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
			url = "https://github.com/akinsho/toggleterm.nvim"
		},
		["typescript.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/typescript.nvim",
			url = "https://github.com/jose-elias-alvarez/typescript.nvim"
		},
		undotree = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/undotree",
			url = "https://github.com/mbbill/undotree"
		},
		["vim-gutentags"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/vim-gutentags",
			url = "https://github.com/ludovicchabant/vim-gutentags"
		},
		["vim-surround"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/vim-surround",
			url = "https://github.com/tpope/vim-surround"
		},
		["which-key.nvim"] = {
			config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vpreset\nhelix\nsetup\14which-key\frequire\0" },
			loaded = true,
			needs_bufread = false,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
			url = "https://github.com/folke/which-key.nvim"
		},
		["yazi.nvim"] = {
			loaded = true,
			path = "/Users/timhawkins/.local/share/nvim/site/pack/packer/start/yazi.nvim",
			url = "https://github.com/mikavilpas/yazi.nvim"
		}
	}

	time([[Defining packer_plugins]], false)
	-- Setup for: which-key.nvim
	time([[Setup for which-key.nvim]], true)
	try_loadstring(
	"\27LJ\2\nE\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vglobal\1\tshow\14which-key\frequirep\1\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\tdesc%Buffer Local Keymaps (which-key)\0\14<leader>?\6n\bset\vkeymap\bvim\0",
		"setup", "which-key.nvim")
	time([[Setup for which-key.nvim]], false)
	time([[packadd for which-key.nvim]], true)
	vim.cmd [[packadd which-key.nvim]]
	time([[packadd for which-key.nvim]], false)
	-- Config for: blink.cmp
	time([[Config for blink.cmp]], true)
	try_loadstring(
	"\27LJ\2\n�\2\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\14signature\1\0\1\fenabled\2\fsources\fdefault\1\0\1\fdefault\0\1\5\0\0\blsp\tpath\rsnippets\vbuffer\15appearance\1\0\2\22nerd_font_variant\tmono\28use_nvim_cmp_as_default\2\vkeymap\1\0\4\15appearance\0\vkeymap\0\fsources\0\14signature\0\1\0\1\vpreset\fdefault\nsetup\14blink.cmp\frequire\0",
		"config", "blink.cmp")
	time([[Config for blink.cmp]], false)
	-- Config for: outline.nvim
	time([[Config for outline.nvim]], true)
	try_loadstring(
	"\27LJ\2\n�\1\0\0\6\0\r\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\2B\0\2\1K\0\1\0\19outline_window\1\0\1\19outline_window\0\1\0\2\nwidth\3\30\rposition\tleft\nsetup\foutline\frequire\1\0\1\tdesc\19Toggle Outline\21<cmd>Outline<CR>\14<leader>o\6n\bset\vkeymap\bvim\0",
		"config", "outline.nvim")
	time([[Config for outline.nvim]], false)
	-- Config for: which-key.nvim
	time([[Config for which-key.nvim]], true)
	try_loadstring(
	"\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vpreset\nhelix\nsetup\14which-key\frequire\0",
		"config", "which-key.nvim")
	time([[Config for which-key.nvim]], false)
	-- Load plugins in order defined by `after`
	time([[Sequenced loading]], true)
	vim.cmd [[ packadd nui.nvim ]]
	vim.cmd [[ packadd noice.nvim ]]

	-- Config for: noice.nvim
	try_loadstring(
	"\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\blsp\1\0\1\blsp\0\roverride\1\0\1\roverride\0\1\0\3\"vim.lsp.util.stylize_markdown\1 cmp.entry.get_documentation\0011vim.lsp.util.convert_input_to_markdown_lines\1\nsetup\nnoice\frequire\0",
		"config", "noice.nvim")

	time([[Sequenced loading]], false)
	vim.cmd [[augroup packer_load_aucmds]]
	vim.cmd [[au!]]
	-- Event lazy-loads
	time([[Defining lazy-load event autocommands]], true)
	vim.cmd [[au BufRead * ++once lua require("packer.load")({'lazydocker.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
	time([[Defining lazy-load event autocommands]], false)
	vim.cmd("augroup END")

	_G._packer.inside_compile = false
	if _G._packer.needs_bufread == true then
		vim.cmd("doautocmd BufRead")
	end
	_G._packer.needs_bufread = false

	if should_profile then save_profiles() end
end)

if not no_errors then
	error_msg = error_msg:gsub('"', '\\"')
	vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: ' ..
	error_msg .. '" | echom "Please check your config for correctness" | echohl None')
end
