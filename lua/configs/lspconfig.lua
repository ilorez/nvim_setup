-- Step 1: Create the server config
vim.lsp.configs.clangd = {
  default_config = {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = vim.loop.cwd,
    on_attach = function(client, bufnr)
      print("Clangd attached!")
      -- Optional: keymaps
    end,
  }
}

-- Step 2: Start the server
vim.lsp.start_client(vim.lsp.configs.clangd.default_config)
