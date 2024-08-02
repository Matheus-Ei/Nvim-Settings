local M = {}


function M.rmWhiteSpaces()
    vim.cmd('normal g_l')  
    vim.cmd('normal d$')
end

function M.setShort()
    vim.keymap.set('n', '<M-w>', M.rmWhiteSpaces, {})
end


return M
