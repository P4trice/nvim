call plug#begin()
	" NERDTree
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" barbar
	Plug 'romgrk/barbar.nvim'
	Plug 'kyazdani42/nvim-web-devicons'

	" lsp
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'

	" snippets
	Plug 'L3MON4D3/LuaSnip'

	" completion
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'onsails/lspkind.nvim'

	" auto save
	Plug '907th/vim-auto-save'

	" comments
	Plug 'preservim/nerdcommenter'

	" remove trailing whitespace
	Plug 'mcauley-penney/tidy.nvim'

	" preview when jumping to line number
	Plug 'nacro90/numb.nvim'

	" starting screen
	Plug 'mhinz/vim-startify'

	" telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

    " autopair
    Plug 'jiangmiao/auto-pairs'

    " harpoon
    Plug 'ThePrimeagen/harpoon'

    " registers
    Plug 'tversteeg/registers.nvim', { 'branch': 'main' }

    " tagbar
    Plug 'preservim/tagbar'

    " markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

    " google code formatter
    Plug 'google/vim-maktaba'
    Plug 'google/vim-codefmt'
    Plug 'google/vim-glaive'

    " own plugin
    Plug '/Users/mgb/code/nvim_plugin'

	" Themes
	Plug 'mcchrish/zenbones.nvim'
	Plug 'rktjmp/lush.nvim' "dependency of zenbones
    Plug 'morhetz/gruvbox'
    Plug 'xiyaowong/nvim-transparent'

    " vim wiki
    Plug 'vimwiki/vimwiki'

    " center text
    Plug 'junegunn/goyo.vim'
call plug#end()
