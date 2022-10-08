" enable auto save
let g:auto_save = 1


" startify
let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ ]

" autopairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<c-b>'

" vim wiki
let g:vimwiki_list = [{"path": "~/Documents/vim_wiki/"}]

" goyo
let g:goyo_width=90
let g:goyo_height=100
let g:goyo_linenr=1

lua <<EOF
-- remove trailing whitespace
require("tidy").setup({
	filetype_exclude = { "markdown", "vim", "vimwiki" },
})

-- preview line before jumping
require("numb").setup()
EOF
