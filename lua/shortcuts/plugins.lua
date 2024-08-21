local M = {}


-- Diverse plugins
function M.runner()
    vim.keymap.set('n', '<Leader>r', ':RunCode <CR>', {desc = "Run code"}) -- Sets the keymap to run code
end

function M.basic()
    vim.keymap.set({ 'n' }, '<Leader>l', ':Lazy<CR>', { desc = "Open lazy" }) -- Open lazy menu
end


-- Navigation options
function M.navigation()
    vim.keymap.set('n', '<Leader>t', ':Neotree<CR>', { noremap = true, silent = true, desc = "Open tree" })

    vim.keymap.set('n', '<Leader>s', ':Telescope find_files<CR>', { noremap = true, silent = true, desc = "Search files"}) -- Open file finder
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
    vim.keymap.set("n", "<M-h>", function() require("memento").clear_history() end, { desc="Clear history" })
end

function M.buffers()
    vim.keymap.set("n", "<Leader>b", ':lua require("buffer_manager.ui").toggle_quick_menu() <CR>', { desc = "Buffer manager" })
end

function M.workspaces()
    vim.keymap.set("n", "<Leader>w", function() vim.cmd("Telescope projections") end, { desc = "Workspaces manager" })
end


-- Set shortcuts
function M.setShort()
    -- Diverse plugins
    M.runner()
    M.basic()

    -- Navigation options
    M.navigation()
    M.harpoon()
    M.history()
    M.buffers()
    M.workspaces()
end


return M
