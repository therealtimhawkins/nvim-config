vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("Mofiqul/vscode.nvim")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({ "github/copilot.vim" })
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"marilari88/neotest-vitest",
			"haydenmeade/neotest-jest",
		},
	})
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use({
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup()
		end,
	})
	use("karb94/neoscroll.nvim")
	use("mikavilpas/yazi.nvim")
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
	use("stevearc/conform.nvim")
	use("Mofiqul/dracula.nvim")
	use("jose-elias-alvarez/typescript.nvim") -- Enhanced TypeScript support
	use("ludovicchabant/vim-gutentags") -- For better tag management
end)
