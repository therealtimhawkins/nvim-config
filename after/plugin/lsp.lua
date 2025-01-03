require("lspconfig").ts_ls.setup({
	init_options = {
		preferences = {
			importModuleSpecifierPreference = "relative",
			importModuleSpecifierEnding = "minimal",
		},
	},
	-- Add your project root pattern
	root_dir = require("lspconfig").util.root_pattern("tsconfig.json", "package.json"),
	-- Configure path mappings to match your tsconfig
	settings = {
		typescript = {
			inlayHints = { includeInlayParameterNameHints = "all" },
			preferences = { importModuleSpecifierPreference = "relative" },
			suggest = {
				completeFunctionCalls = true,
			},
		},
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "typescript", "typescriptreact" },
	callback = function()
		-- Get the current working directory
		local cwd = vim.fn.getcwd()
		-- Add src directory to path
		vim.opt_local.path:prepend(cwd .. "/src")
		-- Handle the ~ alias and make paths absolute
		vim.opt_local.includeexpr = string.format(
			"substitute(substitute(v:fname, '^\\~/', '%s/src/', ''), '^\\./src/', '%s/src/', '')",
			cwd,
			cwd
		)
		-- Add common TypeScript extensions
		vim.opt_local.suffixesadd:append(".ts,.tsx,.d.ts")
	end,
})
