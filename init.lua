vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then 
  local repo = "https://github.com/folke/lazy.nvim.git" 
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },
  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

--- -------------------------------------------------------------------------
--- NEW LSP CONFIGURATION (Fixes E5113)
--- -------------------------------------------------------------------------

-- Step 1: Define and configure clangd using the new API
vim.lsp.config("clangd", {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  -- Use vim.uv.cwd() for Neovim 0.10+ compatibility
  root_dir = (vim.uv or vim.loop).cwd(),
  on_attach = function(client, bufnr)
    print("Clangd attached!")
  end,
})

-- Step 2: Start the client for the current buffer
-- Note: In a production NvChad setup, this is usually handled 
-- automatically via FileType autocmds, but this fixes your manual logic.
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "objc", "objcpp" },
  callback = function()
    vim.lsp.start("clangd")
  end,
})
