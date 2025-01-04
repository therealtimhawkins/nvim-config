local highlight = {
	"RainbowBlue",
}
local hooks = require("ibl.hooks")
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#8be9fd" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup({ scope = { highlight = highlight } })
