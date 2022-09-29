call plug#begin()
    " themes
    Plug 'gruvbox-community/gruvbox'
    Plug 'haystackandroid/rusticated'
    Plug 'jaredgorski/fogbell.vim'
    Plug 'jdkanani/vim-material-theme'
    Plug 'jpo/vim-railscasts-theme'
    Plug 'junegunn/seoul256.vim'
    Plug 'mcchrish/zenbones.nvim'
    Plug 'mswift42/vim-themes'
    Plug 'overcache/NeoSolarized'
    Plug 'rktjmp/lush.nvim'
    Plug 'romainl/Apprentice'
    Plug 'sainnhe/gruvbox-material'
    Plug 'savq/melange'
    Plug 'sonjapeterson/1989.vim'
    Plug 'sts10/vim-pink-moon'
    Plug 'xiyaowong/nvim-transparent'

    " appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    Plug 'johann2357/nvim-smartbufs'

    " lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'ray-x/lsp_signature.nvim'

    " airline
    Plug 'vim-airline/vim-airline-themes'

    " md
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

    " marks
    Plug 'chentau/marks.nvim'

    Plug 'jiangmiao/auto-pairs'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'preservim/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'mhinz/vim-startify'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'ThePrimeagen/harpoon'
    Plug 'nacro90/numb.nvim'
    Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
    Plug 'sheerun/vim-polyglot'
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
    Plug 'phaazon/hop.nvim'
    Plug 'preservim/tagbar'
    Plug 'Pocco81/AutoSave.nvim'

    " formatters
    Plug 'google/vim-maktaba'
    Plug 'google/vim-codefmt'
    Plug 'google/vim-glaive'
    Plug 'mcauley-penney/tidy.nvim'

    " git
    Plug 'TimUntersberger/neogit'
call plug#end()
