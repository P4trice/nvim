return {
  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          swift = { "swiftformat" },
          javascript = { "prettier" },
          html = { "prettier" },
          typescript = { "prettier" },
          astro = { "prettier" },
          cs = { "csharpier" },
        },
        formatters = {
          csharpier = {
            inherit = false,
            command = vim.fn.expand("~/.dotnet/tools/csharpier"),
            args = { "format", "$FILENAME" },
            stdin = false,
            cwd = require("conform.util").root_file({ "sln", "csproj" }),
          },
        },
        format_on_save = {
          timeout_ms = 1000,
          lsp_fallback = true,
          lsp_format = "fallback",
        },
      })
    end
  }
}
