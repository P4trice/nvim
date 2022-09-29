" center on insert
autocmd InsertEnter * norm zz

" fix indenting
vmap < <gv
vmap > >gv

let mapleader = " "

inoremap jj <Esc>
nnoremap <leader>s :w<CR>
nnoremap U <C-r>
nnoremap ü o<Esc>
nnoremap è O<Esc>
nnoremap <leader>9 :!make<cr>
nnoremap <leader>8 :!make run<cr>

" NERDTree
nnoremap <leader>0 :NERDTreeToggle<CR>

" split binds
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>wd :close<CR>
nnoremap <leader>wm :only<CR>
nnoremap <leader>k <C-w>k<CR>
nnoremap <leader>j <C-w>j<CR>
nnoremap <leader>h <C-w>h<CR>
nnoremap <leader>l <C-w>l<CR>
nnoremap <leader>K <C-w>K<CR>
nnoremap <leader>J <C-w>J<CR>
nnoremap <leader>H <C-w>H<CR>
nnoremap <leader>L <C-w>L<CR>
nnoremap <C-j> 4<C-w>-<CR>
nnoremap <C-k> 4<C-w>+<CR>
nnoremap <C-l> :vertical resize +4<CR>
nnoremap <C-h> :vertical resize -4<CR>
nnoremap <leader>= <C-w>=<CR>

" buffers
nnoremap <C-m> :bnext<CR>
nnoremap <C-n> :bprevious<CR>
nnoremap <C-d> :bd<cr>

nnoremap <Leader>1 :lua require("nvim-smartbufs").goto_buffer(1)<CR>
nnoremap <Leader>2 :lua require("nvim-smartbufs").goto_buffer(2)<CR>
nnoremap <Leader>3 :lua require("nvim-smartbufs").goto_buffer(3)<CR>
nnoremap <Leader>4 :lua require("nvim-smartbufs").goto_buffer(4)<CR>
nnoremap <Leader>5 :lua require("nvim-smartbufs").goto_buffer(5)<CR>
nnoremap <Leader>6 :lua require("nvim-smartbufs").goto_buffer(6)<CR>
nnoremap <Leader>7 :lua require("nvim-smartbufs").goto_buffer(7)<CR>
"nnoremap <Leader>8 :lua require("nvim-smartbufs").goto_buffer(8)<CR>
"nnoremap <Leader>9 :lua require("nvim-smartbufs").goto_buffer(9)<CR>

" lsp
nnoremap <leader>gd <cmd> lua vim.lsp.buf.definition()<cr>
nnoremap <leader>gD <cmd>lua vim.lsp.buf.declaration()<cr>
nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<cr>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>

" nerdcommenter
map <leader>;; <plug>NERDCommenterInvert

" harpoon
nnoremap <leader>< :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>a :lua require("harpoon.ui").toggle_quick_menu()<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap<leader>fg <cmd>Telescope live_grep<cr>
nnoremap<leader>fb <cmd>Telescope buffers<cr>
nnoremap<leader>fh <cmd>Telescope help_tags<cr>

" hop
nnoremap § :HopWord<cr>
nnoremap é :HopLine<cr>

" tagbar
nnoremap <leader>tt :TagbarToggle<cr>

" sessions
nnoremap <leader>ss :SSave!<cr>
nnoremap <leader>sl :SLoad<cr>
nnoremap <leader>sd :SDelete<cr>
nnoremap <leader>sc :SClose<cr>

" md preview
nnoremap <leader>mp :MarkdownPreview<cr>
nnoremap <leader>ms :MarkdownPreviewStop<cr>

inoremap <cr> <cr>
