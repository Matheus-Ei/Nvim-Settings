local M = {}


function M.prettier()
    vim.keymap.set('n', '<Leader>p', function() vim.cmd('Prettier') end, {desc = "Prettier"})
end


function M.formatter()
    vim.keymap.set('n', '<Leader>i', function() vim.cmd('normal gg0=G') end, {desc = "Identer"})
    vim.keymap.set('v', '<Leader>i', function() vim.cmd('normal! =') end, {desc = "Identer"})
    vim.keymap.set('n', '<C-i>', function() vim.cmd('normal ==') end, {desc = "Identer"})
end


-- Set shortcuts
function M.config()
    M.prettier()
    M.formatter()
end


return M
