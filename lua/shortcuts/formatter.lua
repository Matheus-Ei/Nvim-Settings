local M = {}


function M.ident()
    vim.cmd('normal _d0d$')
    vim.cmd('normal lo')
    vim.cmd('normal i e')
    vim.cmd('normal p_dç')
    vim.cmd('normal kdd')
end

function M.rmSpacesOnBlankLines()
    vim.cmd('normal 0')
    vim.cmd('normal d$')
end

function M.rmWhiteSpaces()
    vim.cmd('normal g_ç')
    vim.cmd('normal d$')
end

function M.setShort()
    vim.keymap.set('n', '<M-i>', M.ident, {})
    vim.keymap.set('n', '<M-w>', M.rmWhiteSpaces, {})
    vim.keymap.set('n', '<M-b>', M.rmSpacesOnBlankLines, {})
end


return M
