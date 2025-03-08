local M = {}



function M.openLazy()
  vim.keymap.set({ 'n' }, '<Leader>l', function() vim.cmd('Lazy') end, { desc = "Open lazy" }) -- Open lazy menu
end



-- Set shortcuts
function M.config()
  M.openLazy()
end


return M
