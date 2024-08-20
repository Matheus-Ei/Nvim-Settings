local M = {}

function M.runner()
    vim.keymap.set('n', '<Leader>r', ':RunCode <CR>', {desc = "Run code"}) -- Sets the keymap to run code
end

function M.basic()
    vim.keymap.set('n', '<Leader>s', ':wall<CR>', { desc = "Save all" }) -- Save all files open
    vim.keymap.set({ 'n' }, '<Leader>l', ':Lazy<CR>', { desc = "Open lazy" }) -- Open lazy menu
end

function M.navigation()
    vim.keymap.set('n', '<Leader>t', ':Neotree<CR>', { noremap = true, silent = true, desc = "Open tree" })

    vim.keymap.set('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true, desc = "Open file finder"}) -- Open file finder
end

function M.harpoon()
    local harpoon = require("harpoon")
    harpoon:setup()

    vim.keymap.set("n", "<Leader>ha", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc="Show harpoon" }) -- Toggle harpoon menu
    vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end, { desc="Add to harpoon"}) -- Add a file to harpoon

    -- Toggle between options
    vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
end

function M.history()
    vim.keymap.set("n", "<Leader>hi", function() require("memento").toggle() end, { desc="Show history" })
    vim.keymap.set("n", "<M-d>", function() require("memento").clear_history() end, { desc="Clear history" })
end


function M.setShort()
    M.basic()
    M.navigation()
    M.harpoon()
    M.runner()
    M.history()
end


return M
