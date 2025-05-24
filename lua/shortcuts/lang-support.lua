local M = {}


function M.config()
  local telescope_builtin = require('telescope.builtin')

  vim.keymap.set({'i', 'n'}, '<M-h>', vim.lsp.buf.hover, {}) -- Show documentation
  vim.keymap.set('n', '<M-r>', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<M-g>', function() telescope_builtin.lsp_definitions({}) end, {})
  vim.keymap.set('n', '<M-f>', function() telescope_builtin.lsp_references({}) end, {})
end


return M
