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

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end



local luasnip = require("luasnip")
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping({
      i = function(fallback)
        if cmp.visible() and cmp.get_active_entry() then
          cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
        else
          fallback()
        end
      end,
      s = cmp.mapping.confirm({ select = true }),
      c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
    }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        if #cmp.get_entries() == 1 then
          cmp.confirm({ select = true })
        else
          cmp.select_next_item()
        end
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      end
    end, { "i", "s" }),
    ["<C-b>"] = cmp_action.luasnip_jump_forward(),
    ["<C-f>"] = cmp_action.luasnip_jump_backward(),
  }),
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered()
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
    { name = "nvim_lua" },
  }
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
cmp.event:on(
  "confirm_done",
  cmp_autopairs.on_confirm_done()
)
