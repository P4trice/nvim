-- advised by plugin
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  git = {
    enable = true,
    ignore = false,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})


vim.keymap.set("n", "<leader>0", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>9", "<cmd>NvimTreeFocus<cr>")
