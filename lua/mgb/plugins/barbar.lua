vim.keymap.set("n", "<leader>1", "<cmd>BufferGoto 1<cr>")
vim.keymap.set("n", "<leader>2", "<cmd>BufferGoto 2<cr>")
vim.keymap.set("n", "<leader>3", "<cmd>BufferGoto 3<cr>")
vim.keymap.set("n", "<leader>4", "<cmd>BufferGoto 4<cr>")
vim.keymap.set("n", "<leader>5", "<cmd>BufferGoto 5<cr>")
vim.keymap.set("n", "<leader>6", "<cmd>BufferGoto 6<cr>")
vim.keymap.set("n", "<leader>7", "<cmd>BufferGoto 7<cr>")
vim.keymap.set("n", "<leader>8", "<cmd>BufferGoto 8<cr>")
vim.keymap.set("n", "<leader>9", "<cmd>BufferGoto 9<cr>")
vim.keymap.set("n", "<leader>c", "<cmd>BufferClose<cr>")
vim.keymap.set("n", "<leader>i", "<cmd>BufferPick<cr>")
vim.keymap.set("n", "<c-tab>", "<cmd>BufferNext<cr>")
vim.keymap.set("n", "<c-s-tab>", "<cmd>BufferPrevious<cr>")

vim.g.barbar_auto_setup = false

require("barbar").setup({
  animation = false,
  icons = {
    buffer_index = true,
    button = "",
    filetype = {
      enabled = false,
    },
  }
})
