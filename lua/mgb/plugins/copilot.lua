vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<c-tab>", "copilot#Accept('CR')", { expr = true, silent = true })

vim.g.copilot_enabled = false

vim.keymap.set("n", "<leader>cs", "<cmd>Copilot status<cr>")
vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<cr>")
vim.keymap.set("n", "<leader>cx", "<cmd>Copilot disable<cr>")
