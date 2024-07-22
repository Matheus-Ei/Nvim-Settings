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


-- Load lazy vim package manager
require("config.lazy")

vim.keymap.set('n', '<Leader>s', ':wall<CR>', { desc = "Save all" }) -- Save all files open
vim.keymap.set({ 'n' }, '<Leader>l', ':Lazy<CR>', { desc = "Open lazy" })
