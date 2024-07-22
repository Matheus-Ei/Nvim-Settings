-- Set the tabs correctly
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Set the leader
vim.g.mapleader = "<Space>"
vim.cmd("set timeoutlen=5000")

-- Set colors to the notifications
vim.opt.termguicolors = true


-- Sets the save function
local function auto_save()
  if vim.bo.modified then
    vim.cmd('w')
  end
end

-- Sets the autosave periodically function
local function auto_save()
  local interval = 10000
  vim.defer_fn(function()
    auto_save()
    setup_auto_save()
  end, interval)
end

auto_save()


-- Load lazy vim package manager
require("config.lazy")
