local M = {}


function M.moveLineDown()
    vim.cmd('normal 0')
    vim.cmd('normal dd')
    vim.cmd('normal p')
end

function M.moveLineUp()
    vim.cmd('normal 0')
    vim.cmd('normal dd')
    vim.cmd('normal l')
    vim.cmd('normal P')
end

function M.moveBlockDown()
    vim.cmd('normal $')
    vim.cmd('normal "ay')
    vim.cmd('normal gv')
    vim.cmd('normal ddd')
    vim.cmd('normal $o')
    vim.cmd('normal "ap')
end

function M.moveBlockUp()
    vim.cmd('normal $')
    vim.cmd('normal "ay')
    vim.cmd('normal gv')
    vim.cmd('normal ddd')
    vim.cmd('normal lO')
    vim.cmd('normal 0"aP')
end


function M.setShort()
    vim.keymap.set('n', '<M-k>', M.moveLineDown, {})
    vim.keymap.set('n', '<M-l>', M.moveLineUp, {})

    vim.keymap.set('v', '<M-k>', M.moveBlockDown, {})
    vim.keymap.set('v', '<M-l>', M.moveBlockUp, {})
end

return M
