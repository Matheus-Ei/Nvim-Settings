return {
    -- Neotree
    -- https://dotfyle.com/plugins/nvim-neo-tree/neo-tree.nvim
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
        },

        config = function()           
            vim.keymap.set('n', '<Leader>b', ':Neotree<CR>', { noremap = true, silent = true, desc = "Open tree" }) -- Open the side tree
        end
    },

    -- Telescope
    -- https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },

        config = function()
            vim.keymap.set('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true, desc = "Open file finder"}) -- Open file finder
        end
    },

    -- Telescope UI select
    {
        "nvim-telescope/telescope-ui-select.nvim",

        config = function()
            require("telescope").setup {
              extensions = { ["ui-select"] = { require("telescope.themes").get_dropdown {} } }
            }
            require("telescope").load_extension("ui-select")
        end
    },

    -- Harpoon
    -- https://github.com/ThePrimeagen/harpoon/tree/harpoon2
    {
        "ThePrimeagen/harpoon",

        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },

        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<Leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc="Open harpoon" }) -- Toggle harpoon menu

            -- Toggle between options
            vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
            vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)

            vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end) -- Add a file to harpoon
        end
    }
}

