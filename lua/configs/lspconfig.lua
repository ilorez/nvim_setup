vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_markers = { "compile_commands.json", "Makefile", ".git" },
  on_attach = function(client, bufnr)
    print("Clangd attached!")
  end,
})

vim.lsp.enable("clangd")
