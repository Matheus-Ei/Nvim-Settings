local M = {}

-- For the normal mode
function M.systemRegisterCopy()
  vim.cmd('normal _')
  vim.cmd('normal "+y$')
end

function M.systemRegisterCut()
  vim.cmd('normal _')
  vim.cmd('normal "+d$')
end

function M.systemRegisterPaste()
  vim.cmd('normal "+p')
end


-- For the visual mode 
function M.systemRegisterCopyVisual()
  vim.cmd('normal "+y')
end

function M.systemRegisterCutVisual()
  vim.cmd('normal "+d')
end


-- Duplicate the current line
function M.duplicateLine()
  vim.cmd('normal yyp')
end


function M.config()
  -- For the normal mode 
  vim.keymap.set('n', '<M-x>', M.systemRegisterCut, {})
  vim.keymap.set('n', '<M-c>', M.systemRegisterCopy, {})
  vim.keymap.set({ 'n', 'v' }, '<M-v>', M.systemRegisterPaste, {})

  -- For the visual mode 
  vim.keymap.set('v', '<M-x>', M.systemRegisterCutVisual, {})
  vim.keymap.set('v', '<M-c>', M.systemRegisterCopyVisual, {})

  -- Duplicate the current line
  vim.keymap.set('n', '<M-d>', M.duplicateLine, {})
end


return M
