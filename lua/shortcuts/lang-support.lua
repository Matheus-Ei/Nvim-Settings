local M = {}


function M.config()
  vim.keymap.set({'i', 'n'}, '<M-h>', vim.lsp.buf.hover, {}) -- Show documentation
  vim.keymap.set('n', '<M-r>', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<M-g>', vim.lsp.buf.definition, {})
  vim.keymap.set('n', '<M-f>', vim.lsp.buf.references, {})
end


return M
