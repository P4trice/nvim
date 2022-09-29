source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/themes.vim
source $HOME/.config/nvim/remaps.vim
source $HOME/.config/nvim/defaults.vim
"source $HOME/.config/nvim/coc.vim

" airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='wombat'
"let g:airline_theme='minimalist'
let g:airline_theme='base16'
let g:airline_section_b = '%{strftime("%H:%M")}'
let g:airline#extensions#tabline#enabled = 1

" nerdtree
let NERDTreeShowHidden=1

" COQ
"let g:coq_settings = { 'auto_start': 'shut-up'}
lua local lsp = require "lspconfig"
"lua local coq = require "coq"

" language servers
lua require'lspconfig'.pyright.setup{}
lua require'lspconfig'.clangd.setup{}
lua require'lspconfig'.rust_analyzer.setup{}

" setup
lua require'colorizer'.setup()
lua require'numb'.setup()
lua require'mini.trailspace'.setup()
lua require'hop'.setup()
lua require'autosave'.setup()
lua require'lsp_signature'.setup()
lua require'marks'.setup{}
lua require'neogit'.setup{}

" barbar settings
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false
let bufferline.closable = v:false
let bufferline.add_in_buffer_number_order = v:true
let bufferline.icons = 'numbers'
