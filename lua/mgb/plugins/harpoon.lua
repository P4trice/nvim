vim.keymap.set("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>")
vim.keymap.set("n", "<leader>s", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
vim.keymap.set("n", "<c-tab>", "<cmd>lua require('harpoon.ui').nav_prev()<cr>")
vim.keymap.set("n", "<c-s-tab>", "<cmd>lua require('harpoon.ui').nav_next()<cr>")
