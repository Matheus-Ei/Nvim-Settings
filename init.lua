-- Set the tabs correctly
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number") -- Activates the line counter

-- Set the leader
vim.g.mapleader = "<Space>"

-- Set colors to the notifications
vim.opt.termguicolors = true


-- Load lazy vim package manager
require("config.lazy")


vim.cmd("set timeoutlen=5000")

vim.keymap.set('n', '<Leader>s', ':wall<CR>', { desc = "Save all" }) -- Save all files open
vim.keymap.set({ 'n' }, '<Leader>l', ':Lazy<CR>', { desc = "Open lazy" })


local modes = { 'n', 'v', 's', 'o' }
vim.keymap.set(modes, 'j', 'h', { noremap = true, silent = true })
vim.keymap.set(modes, 'k', 'j', { noremap = true, silent = true })
vim.keymap.set(modes, 'l', 'k', { noremap = true, silent = true })
vim.keymap.set(modes, 'ç', 'l', { noremap = true, silent = true })

