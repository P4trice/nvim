require("mgb.plugins.tree")
require("mgb.plugins.telescope")
require("mgb.plugins.treesitter")
require("mgb.plugins.autosave")
require("mgb.plugins.lsp")
require("mgb.plugins.completion")
require("mgb.plugins.harpoon")
require("mgb.plugins.copilot")

-- without additional config
require("nvim-autopairs").setup()
require("nvim-ts-autotag").setup()
require("lualine").setup()
require("gitsigns").setup()

require("symbols-outline").setup()
vim.keymap.set("n", "<leader>o", "<cmd>SymbolsOutline<cr>")

-- prettier
vim.g.neoformat_try_node_exe = 1
vim.keymap.set("n", "<leader>p", "<cmd>Neoformat prettier<cr>")

-- lazygit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>")
