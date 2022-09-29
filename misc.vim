" enable auto save
let g:auto_save = 1

lua <<EOF
-- remove trailing whitespace
require("tidy").setup({
	filetype_exclude = { "markdown", "vim" },
})

-- preview line before jumping
require("numb").setup()
EOF

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
