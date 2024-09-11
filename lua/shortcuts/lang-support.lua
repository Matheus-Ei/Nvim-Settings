local M = {}


function M.config()
    vim.keymap.set({'i', 'n'}, '<M-h>', vim.lsp.buf.hover, {}) -- Show documentation
    vim.keymap.set('n', '<M-r>', vim.lsp.buf.rename, {}) -- Rename variables
    vim.keymap.set('n', '<M-g>', vim.lsp.buf.definition, {}) -- Go to the definition
end


return M
