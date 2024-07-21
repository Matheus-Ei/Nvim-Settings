-- Set the tabs correctly
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Set the leader
vim.g.mapleader = "<Space>"
vim.cmd("set timeoutlen=5000")

-- Set alt+s = Esc
-- vim.keymap.set({'n', 'i', 'v', 'x', 's', 'c', 't', 'o'}, '<C-s>', '<Esc>', { noremap = true, silent = true })

-- Set colors to the notifications
vim.opt.termguicolors = true

-- Load lazy vim package manager
require("config.lazy")
