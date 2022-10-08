" define leader key
let mapleader = " "

" save file
nnoremap <leader>s :w<cr>

" personal
nnoremap U <c-r>
nnoremap ü o<esc>
nnoremap è O<esc>
nnoremap <leader>8 :!make run<cr>
nnoremap <leader>9 :!make<cr>

" splits
nnoremap <silent> <leader>ws :split<cr>
nnoremap <silent> <leader>wv :vsplit<cr>
nnoremap <silent> <leader>wd :close<cr>
nnoremap <silent> <leader>wm :only<cr>
nnoremap <silent> <leader>h <c-w>h<cr>
nnoremap <silent> <leader>j <c-w>j<cr>
nnoremap <silent> <leader>k <c-w>k<cr>
nnoremap <silent> <leader>l <c-w>l<cr>

" fix indenting
vmap < <gv
vmap > >gv

" center cursor on insert
" autocmd InsertEnter * norm zz

" NERDTree
nnoremap <silent> <leader>0 :NERDTreeToggle<cr>

" barbar
nnoremap <leader>1 <cmd>BufferGoto 1<cr>
nnoremap <leader>2 <cmd>BufferGoto 2<cr>
nnoremap <leader>3 <cmd>BufferGoto 3<cr>
nnoremap <leader>4 <cmd>BufferGoto 4<cr>
nnoremap <leader>5 <cmd>BufferGoto 5<cr>
nnoremap <leader>6 <cmd>BufferGoto 6<cr>

" lsp
nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <leader>gD <cmd>lua vim.lsp.buf.declaration()<cr>
nnoremap <leader>gi <cmd>lua vim.lsp.buf.declaration()<cr>
nnoremap <leader>gr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>

" NERDcommenter
nnoremap <leader>;; V<plug>NERDCommenterToggle<cr>
vnoremap <leader>;; <plug>NERDCommenterToggle<cr>

" sessions
nnoremap <leader>ss <cmd>SSave<cr>
nnoremap <leader>sc <cmd>SClose<cr>
nnoremap <leader>sd <cmd>SDelete<cr>
nnoremap <leader>sl <cmd>SLoad<cr>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" harpoon
nnoremap <leader>d <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>< <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <c-j> <cmd>lua require("harpoon.ui").nav_next()<cr>zz
nnoremap <c-k> <cmd>lua require("harpoon.ui").nav_prev()<cr>zz

" registers
nnoremap <leader>p <cmd>Registers<cr>

" tagbar
nnoremap <c-t> <cmd>TagbarToggle<cr>

" markdown preview
nnoremap <c-p> <Plug>MarkdownPreviewToggle

" goyo
nnoremap <leader>qq :Goyo<cr>
