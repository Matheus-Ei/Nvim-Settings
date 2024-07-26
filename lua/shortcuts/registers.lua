local M = {}

-- For the normal mode
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

function M.systemRegisterCopy()
    vim.cmd('normal _')
    vim.cmd('normal "+y$')
end

function M.systemRegisterCut()
    vim.cmd('normal 0')
    vim.cmd('normal "+d$')
end

function M.systemRegisterPaste()
    vim.cmd('normal _')
    vim.cmd('normal "+p')
end

-- For the visual mode 
function M.aRegisterCopyVisual()
    vim.cmd('normal $')
    vim.cmd('normal "ay')
end

function M.aRegisterCutVisual()
    vim.cmd('normal $')
    vim.cmd('normal "ad')
end

function M.aRegisterPasteVisual()
    vim.cmd('normal $')
    vim.cmd('normal "ap')
end

function M.systemRegisterCopyVisual()
    vim.cmd('normal $')
    vim.cmd('normal "+y')
end

function M.systemRegisterCutVisual()
    vim.cmd('normal $')
    vim.cmd('normal "+d')
end

function M.systemRegisterPasteVisual()
    vim.cmd('normal $')
    vim.cmd('normal "+p')
end



function M.setShort()
    -- For the normal mode 
    vim.keymap.set('n', '<M-S-x>', M.aRegisterCut, {})
    vim.keymap.set('n', '<M-S-c>', M.aRegisterCopy, {})
    vim.keymap.set('n', '<M-S-v>', M.aRegisterPaste, {})

    vim.keymap.set('n', '<M-x>', M.systemRegisterCut, {})
    vim.keymap.set('n', '<M-c>', M.systemRegisterCopy, {})
    vim.keymap.set('n', '<M-v>', M.systemRegisterPaste, {})

    -- For the visual mode 
    vim.keymap.set('v', '<M-S-x>', M.aRegisterCutVisual, {})
    vim.keymap.set('v', '<M-S-c>', M.aRegisterCopyVisual, {})
    vim.keymap.set('v', '<M-S-v>', M.aRegisterPasteVisual, {})

    vim.keymap.set('v', '<M-x>', M.systemRegisterCutVisual, {})
    vim.keymap.set('v', '<M-c>', M.systemRegisterCopyVisual, {})
    vim.keymap.set('v', '<M-v>', M.systemRegisterPasteVisual, {})

end


return M
