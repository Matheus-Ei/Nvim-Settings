local M = {}


function M.moveLineDown()
    vim.cmd('normal 0')
    vim.cmd('normal dd')
    vim.cmd('normal p')
end

function M.moveLineUp()
    vim.cmd('normal 0')
    vim.cmd('normal dd')
    vim.cmd('normal k')
    vim.cmd('normal P')
end

function M.setShort()
    vim.keymap.set('n', '<C-j>', M.moveLineDown, {})
    vim.keymap.set('n', '<C-k>', M.moveLineUp, {})
end

return M
