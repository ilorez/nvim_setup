require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map('i', '<C-l>', function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })


-- gd: go to definition

map('n', 'gd', function ()
  vim.lsp.buf.definition()
end, { desc = 'Go to definition' })


-- gD: go to declaration

map('n', 'gD', function ()
  vim.lsp.buf.declaration()
end, { desc = 'Go to declaration' })

