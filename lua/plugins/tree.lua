return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    -- Disable netrw at the very start
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  enabled = false,
  config = function()
    require("nvim-tree").setup({
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })

    -- Keymap to toggle tree
    vim.keymap.set("n", "<leader>0", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Tree" })
  end,
}
