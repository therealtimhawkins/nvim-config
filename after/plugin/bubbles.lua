-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = require("dracula").colors()

local bubbles_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.cyan },
		b = { fg = colors.white, bg = colors.bg },
		c = { fg = colors.white },
	},

	insert = { a = { fg = colors.black, bg = colors.pink } },
	visual = { a = { fg = colors.black, bg = colors.purple } },
	replace = { a = { fg = colors.black, bg = colors.red } },

	inactive = {
		a = { fg = colors.white, bg = colors.bg },
		b = { fg = colors.white, bg = colors.bg },
		c = { fg = colors.white },
	},
}

require("lualine").setup({
	options = {
		theme = bubbles_theme,
		component_separators = "",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
		lualine_b = { { "filename", path = 1 }, "branch" },
		lualine_c = {
			"%=", --[[ add your center compoentnts here in place of this comment ]]
		},
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = {
			{ "location", separator = { right = "" }, left_padding = 2 },
		},
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = {},
})
