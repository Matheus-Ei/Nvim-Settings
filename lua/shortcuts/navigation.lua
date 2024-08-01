local M = {}


-- Redefine the basic navigation keymaps
function M.basic()
    local modes = { 'n', 'v', 's', 'o' }
    vim.keymap.set(modes, 'j', 'h', { noremap = true, silent = true })
    vim.keymap.set(modes, 'k', 'j', { noremap = true, silent = true })
    vim.keymap.set(modes, 'l', 'k', { noremap = true, silent = true })
    vim.keymap.set(modes, 'ç', 'l', { noremap = true, silent = true })
end



function M.setShort()
end


return M
