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
	use("ludovicchabant/vim-gutentags")
	use({
		"folke/noice.nvim",
		after = "nui.nvim",
		config = function()
			require("noice").setup({
				lsp = {
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = false,
						["vim.lsp.util.stylize_markdown"] = false,
						["cmp.entry.get_documentation"] = false,
					},
				},
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
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
	use({ "windwp/nvim-autopairs" })
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({
				preset = "helix",
			})
		end,
		setup = function()
			vim.keymap.set("n", "<leader>?", function()
				require("which-key").show({ global = false })
			end, { desc = "Buffer Local Keymaps (which-key)" })
		end,
	})
	use({
		"hedyhli/outline.nvim",
		config = function()
			vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
			require("outline").setup({
				outline_window = {
					position = "left",
					width = 30,
				},
			})
		end,
	})
	use({ "tpope/vim-surround" })
	use({ 'mattn/emmet-vim' })
	use {
		'nvim-pack/nvim-spectre',
		requires = { 'nvim-lua/plenary.nvim' }
	}
end)
