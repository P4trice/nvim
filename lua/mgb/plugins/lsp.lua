require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "clangd", "tsserver", "pyright" },
})

local on_attach = function(_, _)
  --vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  --vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

  vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, {})
  vim.keymap.set("n", "gi", require("telescope.builtin").lsp_implementations, {})
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
  --vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, {})

  -- lsp saga
  vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>")
  vim.keymap.set("n", "rn", "<cmd>Lspsaga rename<cr>")
  vim.keymap.set("n", "rp", "<cmd>Lspsaga rename ++project<cr>")
  vim.keymap.set("n", "ca", "<cmd>Lspsaga code_action<cr>")
  vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<cr>")
  vim.keymap.set("n", "gt", "<cmd>Lspsaga peek_type_definition<cr>")
  vim.keymap.set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<cr>")
  vim.keymap.set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<cr>")
  vim.keymap.set("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<cr>")
  vim.keymap.set("n", "<leader>8", "<cmd>Lspsaga outline<cr>")
end

-- nvim cmp
--local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.g.coq_settings = {["display.icons.mode"] = "none",
                      ["display.pum.source_context"] = {"[", "]"}}

local coq = require("coq")
local capabilities = coq.lsp_ensure_capabilities{}

require("coq_3p") {
  { src = "nvimlua", short_name = "nvim" },
  { src = "bc", short_name = "math", precision = 6 },
  { src = "figlet", short_name = "fig" },
}


require("lspconfig").lua_ls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").clangd.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").pyright.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

vim.cmd("COQnow -s")
