local M = {}



function M.goNextParagraph()
  vim.keymap.set( { 'n', 'v' } , '<S-k>', '{', {} )
end


function M.goPrevParagraph()
  vim.keymap.set( { 'n', 'v' }, '<S-j>', '}', {} )
end

function M.navigation()
  vim.keymap.set('n', '<Leader>t', function() vim.cmd('Neotree') end, { noremap = true, silent = true, desc = "Open tree" })

  vim.keymap.set('n', '<Leader>s', function() vim.cmd('Telescope find_files') end, { noremap = true, silent = true, desc = "Search files"}) -- Open file finder

  vim.keymap.set('n', '<Leader>g', function() vim.cmd('Telescope live_grep') end, { noremap = true, silent = true, desc = "Grep keywords"}) -- sudo apt install ripgrep

  vim.keymap.set('n', '<Leader>r', function() vim.cmd('Telescope lsp_references') end, { noremap = true, silent = true, desc = "Find references"})
end


function M.harpoon()
  local harpoon = require("harpoon")
  harpoon:setup()

  vim.keymap.set("n", "<Leader>f", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc="Favorite files" }) -- Toggle harpoon menu
  vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end, { desc="Add to harpoon"}) -- Add a file to harpoon

  -- Toggle between options
  vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
  vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
end


function M.history()
  vim.keymap.set("n", "<Leader>h", function() require("memento").toggle() end, { desc="Show history" })
  vim.keymap.set("n", "<C-h>", function() require("memento").clear_history() end, { desc="Clear history" })
end

function M.buffers()
  vim.keymap.set("n", "<Leader>b", function() vim.cmd('lua require("buffer_manager.ui").toggle_quick_menu()') end, { desc = "Buffer manager" })

  vim.keymap.set("n", "<M-p>", function() vim.cmd('lua require("buffer_manager.ui").nav_prev()') end, {})
  vim.keymap.set("n", "<M-n>", function() vim.cmd('lua require("buffer_manager.ui").nav_next()') end, {})

  vim.keymap.set( { 'n', 'v' } , '<M-k>', function() vim.cmd('bdelete') end, {} )
end


function M.workspaces()
  vim.keymap.set("n", "<Leader>w", function() vim.cmd("Telescope projections") end, { desc = "Workspaces manager" })
end



function M.config()
  M.goPrevParagraph()
  M.goNextParagraph()

  M.navigation()
  M.harpoon()
  M.history()
  M.buffers()
  M.workspaces()
end


return M
