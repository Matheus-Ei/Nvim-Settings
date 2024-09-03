local M = {}


function M.openAll()
   vim.keymap.set('n', '<Leader>do', function() vim.cmd('normal zR') end, {desc = "Open all folds"})
end

function M.closeAll()
    vim.keymap.set('n', '<Leader>dc', function() vim.cmd('normal zM') end, {desc = "Close all folds"})
end

function M.toggleUnder()
    vim.keymap.set('n', '<C-f>', function() vim.cmd('normal! za') end, {desc = "Toggle fold"})
end

function M.createFold()
    vim.keymap.set('v', '<C-f>', function() vim.cmd('normal! zf') end, {desc = "Create fold"})
end

function M.deleteAll()
    vim.keymap.set('n', '<Leader>dd', function() vim.cmd('normal zE') end, {desc = "Delete all folds"})
end



function M.config()
    M.openAll()
    M.closeAll()
    M.toggleUnder()
    M.createFold()
    M.deleteAll()
end


return M
