local highlight = {
	"RainbowBlue",
}
local hooks = require("ibl.hooks")
local colors = require("dracula").colors()

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "RainbowBlue", { fg = colors.blue })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup({ scope = { highlight = highlight } })
