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
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({ "github/copilot.vim" })
	use("mbbill/undotree")
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use("MunifTanjim/nui.nvim")
	use("rcarriga/nvim-notify")
	use({
		"folke/noice.nvim",
		after = "nui.nvim", -- Ensures it loads after the dependency
		config = function()
			require("noice").setup({
				-- add any options here
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify", -- Optional dependency
		},
	})
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use({
		"saghen/blink.cmp",
		requires = "rafamadriz/friendly-snippets",
		tag = "*",
		run = "cargo build --release",
		config = function()
			require("blink.cmp").setup({
				keymap = { preset = "default" },
				appearance = {
					use_nvim_cmp_as_default = true,
					nerd_font_variant = "mono",
				},
				sources = {
					default = { "lsp", "path", "snippets", "buffer" },
				},
				signature = {
					enabled = true,
				},
			})
		end,
	})
	use({
		"stevearc/oil.nvim",
	})
	use("karb94/neoscroll.nvim")
	use("mikavilpas/yazi.nvim")
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
	use("stevearc/conform.nvim")
	use("Mofiqul/dracula.nvim")
	use("jose-elias-alvarez/typescript.nvim") -- Enhanced TypeScript support
	use("ludovicchabant/vim-gutentags") -- For better tag management
	use("lewis6991/gitsigns.nvim") -- Git signs
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use({
		"krisajenkins/telescope-docker.nvim",
		requires = { "nvim-telescope/telescope.nvim" },
	})
	use({
		"tpope/vim-dadbod",
		requires = {
			"kristijanhusak/vim-dadbod-ui",
			"tpope/vim-dotenv", -- optional, for loading .env files
		},
	})
	use({ "windwp/nvim-autopairs" })
end)
