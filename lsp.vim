" completion
set completeopt=menu,menuone,noselect

lua <<EOF
	local lspkind = require"lspkind"
	local cmp = require"cmp"

	cmp.setup({
		snippet = {
			expand = function(args)
				require"luasnip".lsp_expand(args.body)
			end,
		},

		sources = {
			{ name = "nvim_lsp" },
			{ name = "path" },
			{ name = "luasnip" },
			{ name = "buffer" , keyword_length = 3 },
		},

		mapping = {
			["<cr>"] = cmp.mapping.confirm({ select = false }),
			["<s-cr>"] = cmp.mapping.confirm({ select = true }),
			["<tab>"] = cmp.mapping.select_next_item(),
			["<s-tab>"] = cmp.mapping.select_prev_item(),
		},

		formatting = {
			format = lspkind.cmp_format{
				mode = "text",
			},
		},

		experimental = {
			ghost_text = true,
		},
	})

	local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

	-- LSP setup
	require'lspconfig'.pyright.setup {
		capabilities = capabiltites
	}
	require'lspconfig'.rust_analyzer.setup{
		capabilities = capabiltites
	}
EOF
