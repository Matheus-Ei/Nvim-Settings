return {
    -- Tags autoclose
    -- https://github.com/m4xshen/autoclose.nvim
    {
        "m4xshen/autoclose.nvim",

        config = function()
            require("autoclose").setup()
        end
    },

    -- Hardtime
    -- https://github.com/m4xshen/hardtime.nvim
    {
        "m4xshen/hardtime.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
        opts = {}
    },

    -- Autosave
    -- https://github.com/okuuva/auto-save.nvim
    {
        "okuuva/auto-save.nvim",
        opts = {
            enabled = true,
            execution_message = {
                enabled = true,

                message = function()
                    return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
                end,

                dim = 0.18,
                cleaning_interval = 1250,
            },
            trigger_events = {
                immediate_save = { "BufLeave", "FocusLost", "TextChanged" }, -- vim events that trigger an immediate save
                defer_save = { "InsertLeave" }, -- vim events that trigger a deferred save
                cancel_defered_save = { "InsertEnter" }, -- vim events that cancel a pending deferred save
            },
            condition = nil,
            write_all_buffers = true,
            noautocmd = false,
            lockmarks = false,
            debounce_delay = 100,
            debug = false,
        },
    },

    -- Autocomplete
    -- https://github.com/hrsh7th/nvim-cmp?tab=readme-ov-file
    {
        "hrsh7th/nvim-cmp",

        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
        },

        config = function()
            require("cmp").setup({
                sources = {
                    { name = 'nvim_lsp' }
                }
            })

            vim.keymap.set('i', '<C-e>', '<C-x><C-o>', { silent = true }) -- Accept completion
        end
    },

    -- Comments functionalities
    -- https://github.com/numToStr/Comment.nvim?tab=readme-ov-file#setup
    {
        'numToStr/Comment.nvim',
        config = function()
            require("Comment").setup({
                {
                    toggler = {
                        ---Line-comment toggle keymap
                        line = 'gc',
                        ---Block-comment toggle keymap
                        block = 'gc',
                    },
                }
            })
        end
    }
}
