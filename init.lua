-- Set the tabs correctly
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number") -- Activates the line counter
vim.wo.relativenumber = true -- Activates the relative line counter

vim.g.mapleader = "<Space>" -- Set the leader
vim.opt.termguicolors = true -- Set colors to the notifications

-- Load lazy vim package manager
require("config.lazy")

vim.cmd("set timeoutlen=5000") -- set timeout for the leader keymap

-- Setup shortcuts
local shortcuts = require("config.shortcuts")
shortcuts.setup()
