vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({ "github/copilot.vim" })
	use("mbbill/undotree")
	use({
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use("MunifTanjim/nui.nvim")
	-- use("rcarriga/nvim-notify")
	use("ludovicchabant/vim-gutentags")
	use({
		"folke/noice.nvim",
		after = "nui.nvim",
		config = function()
			require("noice").setup({})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			-- "rcarriga/nvim-notify",
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
	use("jose-elias-alvarez/typescript.nvim")
	use("lewis6991/gitsigns.nvim")
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
			"tpope/vim-dotenv",
		},
	})
	use({ "windwp/nvim-autopairs" })
	use({
		"mattn/emmet-vim",
		ft = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" },
	})
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
end)
