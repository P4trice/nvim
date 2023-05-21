require("mgb.plugins.tree")
require("mgb.plugins.telescope")
require("mgb.plugins.treesitter")
--require("mgb.plugins.autosave")
require("mgb.plugins.lsp")
--require("mgb.plugins.completion")
require("mgb.plugins.harpoon")
require("mgb.plugins.barbar")
require("mgb.plugins.lualine")

-- without additional config
require("nvim-autopairs").setup()
require("nvim-ts-autotag").setup()
require("gitsigns").setup()
require("leap").add_default_mappings()
require("Comment").setup()

-- telescope neoclip
require("neoclip").setup()
require("telescope").load_extension("neoclip")
vim.keymap.set("n", "<leader>fy", "<cmd>Telescope neoclip<cr>")

-- telescope zoxide
require("telescope").load_extension("zoxide")
vim.keymap.set("n", "<leader>fz", require("telescope").extensions.zoxide.list)

-- lazygit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>")

-- tidy
require("tidy").setup({
  filetype_exclude = { "markdown", "diff" },
})

-- todo
--require("todo-comments").setup()
--vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>")

-- start screen
--require'alpha'.setup(require'alpha.themes.startify'.config)

-- wilder
require('wilder').setup({modes = {':', '/', '?'}})

require("mgb.plugins.copilot")
