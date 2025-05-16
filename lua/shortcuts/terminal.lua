local M = {}



function M.terminal()
  vim.keymap.set({ 'n' }, '<C-t>', function() vim.cmd('FloatermToggle') end, {})

  vim.keymap.set({ 't' }, "<C-e>", [[<C-\><C-n>]], {})
  vim.keymap.set({ 't' }, '<C-t>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermToggle") end, {})

  vim.keymap.set({ 't' }, '<C-p>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermPrev") vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("i", true, true, true), 'n', true) end, {})
  vim.keymap.set({ 't' }, '<C-n>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermNext") vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("i", true, true, true), 'n', true) end, {})

  vim.keymap.set({ 't' }, '<C-k>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermKill") end, {})
  vim.keymap.set({ 't' }, '<C-a>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermNew") vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("i", true, true, true), 'n', true) end, {})
end

-- Set shortcuts
function M.config()
  M.terminal()
end


return M
