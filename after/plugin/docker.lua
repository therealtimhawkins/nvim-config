require("telescope").load_extension("telescope_docker")
require("telescope_docker").setup({})

-- Key mappings
vim.keymap.set("n", "<Leader>dv", ":Telescope telescope_docker docker_volumes<CR>", { desc = "[D]ocker [V]olumes" })
vim.keymap.set("n", "<Leader>di", ":Telescope telescope_docker docker_images<CR>", { desc = "[D]ocker [I]mages" })
vim.keymap.set("n", "<Leader>dp", ":Telescope telescope_docker docker_ps<CR>", { desc = "[D]ocker [P]rocesses" })
