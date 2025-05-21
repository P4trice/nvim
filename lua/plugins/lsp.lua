return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
      'saghen/blink.cmp',
      { "Hoffs/omnisharp-extended-lsp.nvim" }, -- ✅ add this line
    },

    config = function()
      local config = require("lspconfig")
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      -- lsps
      config.lua_ls.setup {
        capabilities = capabilities
      }

      config.sourcekit.setup {
        capabilities = capabilities,
        cmd = { "xcrun", "sourcekit-lsp" },
        filetypes = { "swift", "objective-c", "objective-cpp" },
        root_dir = config.util.root_pattern(".git", "Package.swift")
      }

      config.astro.setup {
        capabilities = capabilities
      }

      config.tinymist.setup {
        capabilities = capabilities,
        settings = {
          formatterMode = "typstyle",
          projectResolution = "lockDatabase"
        }
      }

      config.ts_ls.setup {
        capabilities = capabilities
      }

      local pid = vim.fn.getpid()

      require('lspconfig').omnisharp.setup({
        cmd = {
          "dotnet",
          vim.fn.expand("~/tools/omnisharp-roselyn/OmniSharp.dll"),
          "--languageserver",
          "--hostPID",
          tostring(pid)
        },
        enable_editorconfig_support = true,
        enable_roslyn_analyzers = false,
        organize_imports_on_format = true,
        enable_import_completion = true,
        handlers = {
          ["textDocument/definition"] = require("omnisharp_extended").handler,
        },
      })


      -- keybinds
      vim.keymap.set("n", "rn", vim.lsp.buf.rename)
      vim.keymap.set("n", "ca", vim.lsp.buf.code_action)
    end
  }
}
