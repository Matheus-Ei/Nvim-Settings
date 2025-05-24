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


function M.config()
  -- For the normal mode 
  vim.keymap.set('n', '<M-x>', M.systemRegisterCut, {})
  vim.keymap.set('n', '<M-c>', M.systemRegisterCopy, {})
  vim.keymap.set({ 'n', 'v' }, '<M-v>', M.systemRegisterPaste, {})

  -- For the visual mode 
  vim.keymap.set('v', '<M-x>', M.systemRegisterCutVisual, {})
  vim.keymap.set('v', '<M-c>', M.systemRegisterCopyVisual, {})

  -- Duplicate
  vim.keymap.set({ "n" }, "<M-d>", "<CMD>LineDuplicate +1<CR>", {})
  vim.keymap.set({ "v" }, "<M-d>" ,"<CMD>VisualDuplicate +1<CR>", {})
end


return M
