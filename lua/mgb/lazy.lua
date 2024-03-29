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
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
  },
  "nvim-treesitter/nvim-treesitter",
  "windwp/nvim-autopairs",
  "windwp/nvim-ts-autotag",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "rafamadriz/friendly-snippets",
  "nvim-lualine/lualine.nvim", -- customization of bottom line
  "nvim-lua/plenary.nvim", --
  "ThePrimeagen/harpoon",
  "lewis6991/gitsigns.nvim",
  "kdheepak/lazygit.nvim",
  "ggandor/leap.nvim",
  "nvim-lua/popup.nvim",
  "jvgrootveld/telescope-zoxide",
  "AckslD/nvim-neoclip.lua",
  "mcauley-penney/tidy.nvim", -- deletes trailing spaces and empty lines at end of the file
  "rhysd/vim-clang-format", -- formatter for c-family of languages
  "prettier/vim-prettier",
  "smithbm2316/centerpad.nvim", --:Centerpad allows to center the code
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "gelguy/wilder.nvim", -- commandline completion
  "ellisonleao/gruvbox.nvim", -- colorscheme
  "mbbill/undotree",
  {
    "ms-jpq/coq_nvim",
    branch = "coq",
  },
  {
    "ms-jpq/coq.artifacts",
    branch = "artifacts",
  },
  {
    "ms-jpq/coq.thirdparty",
    branch = "3p",
  },
  "romgrk/barbar.nvim",
  "rebelot/kanagawa.nvim",
  "EdenEast/nightfox.nvim",
  "numToStr/Comment.nvim",
}

require("lazy").setup(plugins)
