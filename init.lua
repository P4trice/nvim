require("config.opts")
require("config.remaps")
require("config.lazy")
require("config.commands")

-- Check if LSP is attached to current buffer
vim.api.nvim_create_user_command('LspStatus', function()
  local clients = vim.lsp.get_active_clients({ bufnr = 0 })

  if #clients == 0 then
    print("No LSP clients attached to this buffer")
    return
  end

  print("LSP clients attached to this buffer:")
  for _, client in ipairs(clients) do
    print(string.format("- %s (id: %d)", client.name, client.id))
  end
end, {})

-- Show detailed LSP info
vim.api.nvim_create_user_command('LspInfo', function()
  local clients = vim.lsp.get_active_clients()

  if #clients == 0 then
    print("No LSP clients running")
    return
  end

  print("Active LSP clients:")
  for _, client in ipairs(clients) do
    local buffers = vim.lsp.get_buffers_by_client_id(client.id)
    local buffer_names = {}

    for _, bufnr in ipairs(buffers) do
      local name = vim.api.nvim_buf_get_name(bufnr)
      if name ~= "" then
        table.insert(buffer_names, vim.fn.fnamemodify(name, ":t"))
      else
        table.insert(buffer_names, "[No Name]")
      end
    end

    print(string.format("- %s (id: %d)", client.name, client.id))
    print("  Attached buffers: " .. table.concat(buffer_names, ", "))
    print("  Root directory: " .. (client.config.root_dir or "Not set"))
    print("  Capabilities: " .. vim.inspect(client.server_capabilities):sub(1, 100) .. "...")
  end
end, {})

-- Check if a specific LSP server is installed
vim.api.nvim_create_user_command('LspCheckServer', function(opts)
  local server_name = opts.args
  if server_name == "" then
    print("Please provide a server name, e.g. :LspCheckServer omnisharp")
    return
  end

  -- Try to find the server in the lspconfig
  local success, lspconfig = pcall(require, "lspconfig")
  if not success then
    print("lspconfig module not found")
    return
  end

  if lspconfig[server_name] then
    print(server_name .. " configuration is available in lspconfig")
  else
    print(server_name .. " configuration not found in lspconfig")
    return
  end

  -- Check if the server executable exists in PATH
  local cmd
  if lspconfig[server_name].document_config and lspconfig[server_name].document_config.default_config then
    cmd = lspconfig[server_name].document_config.default_config.cmd
  end

  if not cmd or not cmd[1] then
    print("Could not determine executable for " .. server_name)
    return
  end

  local executable = cmd[1]
  if vim.fn.executable(executable) == 1 then
    print(executable .. " is found in PATH")
  else
    print(executable .. " is NOT found in PATH")
  end
end, { nargs = "?" })

-- Test the current buffer's LSP functionality
vim.api.nvim_create_user_command('LspTest', function()
  local clients = vim.lsp.get_active_clients({ bufnr = 0 })

  if #clients == 0 then
    print("No LSP clients attached to this buffer. Cannot test.")
    return
  end

  print("Testing LSP functionality for current buffer...")

  -- Test hover
  vim.lsp.buf.hover()
  print("Hover request sent. If working, you should see documentation popup.")

  -- Test completion
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-x><C-o>", true, false, true), "n", true)
  print("Completion request triggered. If working, you should see completion menu.")

  -- Test diagnostics
  local diagnostics = vim.diagnostic.get(0)
  print("Current buffer has " .. #diagnostics .. " diagnostics")

  print("LSP test complete. Check the results above.")
end, {})
