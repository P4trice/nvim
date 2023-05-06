local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  {
    "rose-pine/neovim", 
    name = "rose-pine"
  },
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  "nvim-treesitter/nvim-treesitter",
  "Pocco81/auto-save.nvim",
  "windwp/nvim-autopairs",
  "windwp/nvim-ts-autotag",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "nvim-lualine/lualine.nvim",
  "nvim-lua/plenary.nvim",
  "ThePrimeagen/harpoon",
  "github/copilot.vim",
  "simrat39/symbols-outline.nvim",
  "sbdchd/neoformat",
  "lewis6991/gitsigns.nvim",
  "kdheepak/lazygit.nvim",
}

require("lazy").setup(plugins)
