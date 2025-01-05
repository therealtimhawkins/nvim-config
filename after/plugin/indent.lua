local highlight = {
	"RainbowCyan",
}
local hooks = require("ibl.hooks")
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#8be9fd" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup({ scope = { highlight = highlight } })

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
