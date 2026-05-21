return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      filters = {
        git_ignored = false, -- This stops nvim-tree from hiding ignored files
      },
      git = {
        enable = true, -- Ensures git status is active so it knows what to color
      }
    }

    -- Optional: Forces ignored files to be grey if your current theme doesn't do it automatically
    vim.api.nvim_set_hl(0, "NvimTreeGitIgnored", { fg = "#808080" })
  end,
}
