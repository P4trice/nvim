local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, {})
  vim.keymap.set("n", "gi", require("telescope.builtin").lsp_implementations, {})
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
  vim.keymap.set("n", "<leader>fb", vim.lsp.buf.format, {})

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
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>8", "<cmd>Lspsaga outline<cr>")

  -- lsp signature
  --require("lsp_signature").on_attach(signature_setup, bufnr)

  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("i", "<C-g>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "tsserver", "rust_analyzer", "pyright" },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})

vim.g.coq_settings = {
  ["display.icons.mode"] = "none",
  ["display.pum.source_context"] = { "[", "]" },
  --["clients.snippets.enabled"] = false,
}

vim.cmd("COQnow -s")
