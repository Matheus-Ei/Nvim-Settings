local M = {}

local opts = { noremap = true, silent = true }

function M.config()
  vim.keymap.set('n', '<C-j>', ':MoveLine 1<CR>', opts)
  vim.keymap.set('n', '<C-k>', ':MoveLine -1<CR>', opts)

  vim.keymap.set('v', '<C-j>', ':MoveBlock 1<CR>', opts)
  vim.keymap.set('v', '<C-k>', ':MoveBlock -1<CR>', opts)

  vim.keymap.set('v', '<C-l>', ':MoveHBlock 1<CR>', opts)
  vim.keymap.set('v', '<C-h>', ':MoveHBlock -1<CR>', opts)
end

return M
