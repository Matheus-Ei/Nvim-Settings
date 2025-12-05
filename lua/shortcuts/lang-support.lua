local M = {}


function M.config()
  local telescope_builtin = require('telescope.builtin')

  vim.keymap.set({'i', 'n'}, '<M-h>', vim.lsp.buf.hover, {}) -- Show documentation
  vim.keymap.set('n', '<M-r>', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<M-g>', function() telescope_builtin.lsp_definitions({}) end, {})
  vim.keymap.set('n', '<M-f>', function() telescope_builtin.lsp_references({}) end, {})

  -- Git to resolve conflicts
  vim.keymap.set('n', '<leader>ao', '<cmd>GitConflictChooseOurs<CR>')
  vim.keymap.set('n', '<leader>at', '<cmd>GitConflictChooseTheirs<CR>')
  vim.keymap.set('n', '<leader>ab', '<cmd>GitConflictChooseBoth<CR>')
  vim.keymap.set('n', '<leader>an', '<cmd>GitConflictChooseNone<CR>')
  vim.keymap.set('n', '<leader>ak', '<cmd>GitConflictPrevConflict<CR>')
  vim.keymap.set('n', '<leader>aj', '<cmd>GitConflictNextConflict<CR>')

  -- Required to use the RemoteSSHFS Commands
  local api = require('remote-sshfs.api')
  local builtin = require("telescope.builtin")
  local connections = require("remote-sshfs.connections")

  -- Local usefull shortcuts
  vim.keymap.set('n', '<leader>esf', '<cmd>RemoteSSHFSConnect root@192.168.29.120:/var/www -p 22<CR>', {desc='Connect to IXC Franquias'})
end


return M
