local function isInTurboRepo()
    -- Check if current directory contains turbo.json
    local current_dir = vim.fn.getcwd()
    local turbo_config = vim.fn.findfile('turbo.json', current_dir .. ';')
    return turbo_config ~= ''
end


require("neotest").setup({
	adapters = {
		require("neotest-vitest")({
			vitestCommand = "npx vitest",
			env = { CI = true },
			cwd = function(path)
				print("Vitest adapter path:", path)
				print("Current working directory:", vim.fn.getcwd())

				return vim.fn.getcwd()
			end,
		}),
	}
})

vim.keymap.set('n', '<leader>tt', function()
  require("neotest").run.run()
end, { desc = 'Run nearest test' })

vim.keymap.set('n', '<leader>tf', function()
  require("neotest").run.run(vim.fn.expand("%"))
end, { desc = 'Run file tests' })

vim.keymap.set('n', '<leader>ts', function()
  require("neotest").summary.toggle()
end, { desc = 'Toggle test summary' })

vim.keymap.set('n', '<leader>to', function()
  local neotest = require("neotest")
  neotest.output_panel.toggle()
end, { desc = 'Toggle test output' })

vim.keymap.set('n', '<leader>tw', function()
  require("neotest").watch.toggle(vim.fn.expand("%"))
end, { desc = 'Toggle watch mode on file' })

vim.keymap.set('n', '<leader>tW', function()
  require("neotest").watch.toggle()
end, { desc = 'Toggle watch mode on nearest test' })
