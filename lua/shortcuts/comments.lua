local M = {}



function M.comments()
    vim.keymap.set('n', '<Leader>c', function() vim.cmd('normal gcc') end, {desc = "Comment"})
    vim.keymap.set('v', '<Leader>c', function() vim.cmd('normal gb') end, {desc = "Comment"})
end



-- Set shortcuts
function M.config()
    M.comments()
end


return M
