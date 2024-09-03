local M = {}


function M.langSupport()
    vim.keymap.set('n', '<Leader>p', function() vim.cmd('Prettier') end, {desc = "Prettier"}) -- Prettier
end


-- Set shortcuts
function M.config()
    M.langSupport()
end


return M
