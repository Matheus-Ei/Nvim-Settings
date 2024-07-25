local M = {}

function M.moveLineDown()
    vim.cmd('normal 0')
    vim.cmd('normal dd')
    vim.cmd("normal k")
    vim.cmd('normal! o')
    vim.cmd('normal! <Esc>')
    vim.cmd('normal p')
    vim.cmd('normal _')
    vim.cmd('normal d0')
    vim.cmd('normal! <Del>')
    vim.cmd('normal! <CR>')
    vim.cmd('normal _')
end

function M.moveLineUp()
    vim.cmd('normal dd')
    vim.cmd('normal ')
end


function M.setShort()
    vim.keymap.set('n', '<M-k>', M.moveLineDown, {})
    vim.keymap.set('n', '<M-l>', M.moveLineUp, {})
end

return M
