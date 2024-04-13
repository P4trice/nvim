vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.ts", "*.tsx", "*.js", "*.jsx", "*.css"},
  command = "Prettier",
})
