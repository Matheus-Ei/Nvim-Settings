local M = {}


function M.aRegisterCopy()
    vim.cmd('normal _')
    vim.cmd('normal "ay$')
end

function M.aRegisterCut()
    vim.cmd('normal 0')
    vim.cmd('normal "ad$')
end

function M.aRegisterPaste()
    vim.cmd('normal _')
    vim.cmd('normal "ap')
end


function M.setShort()
    vim.keymap.set('n', '<M-x>', M.aRegisterCut, {})
    vim.keymap.set('n', '<M-c>', M.aRegisterCopy, {})
    vim.keymap.set('n', '<M-v>', M.aRegisterPaste, {})
end


return M
