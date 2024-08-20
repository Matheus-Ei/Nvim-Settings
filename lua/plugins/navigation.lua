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
            local api = require("neo-tree").setup({
                close_if_last_window = true,
                popup_border_style = "rounded",
                enable_git_status = true,
                enable_diagnostics = true,
                window = {
                    position = "float",
                    width = 30,
                    mapping_options = {
                        noremap = true,
                        nowait = true,
                    },
                    mappings = {
                        ["<cr>"] = "open",
                        ["<esc>"] = "cancel",
                        ["d"] = "delete",
                        ["r"] = "rename",
                        ["c"] = "copy",
                        ["m"] = "move",
                        ["q"] = "close_window",
                        ["R"] = "refresh",
                        ["?"] = "show_help",
                        ["<"] = "prev_source",
                        [">"] = "next_source",
                        ["i"] = "show_file_details",
                    }
                },
                filesystem = {
                    filtered_items = {
                        visible = false,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                        hide_hidden = false,
                    },
                    follow_current_file = {
                        enabled = true,
                        leave_dirs_open = false,
                    },
                    group_empty_dirs = false,
                    window = {
                        mappings = {
                            ["<bs>"] = "navigate_up",
                            ["."] = "set_root",
                        },
                    },
                },
                buffers = {
                    follow_current_file = {
                        enabled = true,
                        leave_dirs_open = false,
                    },
                },
            })
        end
    },

    -- Telescope
    -- https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
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
    },

    -- History
    -- https://github.com/gaborvecsei/memento.nvim
    {
        "gaborvecsei/memento.nvim",

        config = function()
            vim.g.memento_history = 60
            vim.g.memento_shorten_path = false
            vim.g.memento_window_width = 100
            vim.g.memento_window_height = 35
        end
    },

    -- Buffers
    -- https://github.com/j-morano/buffer_manager.nvim
    {
        "j-morano/buffer_manager.nvim",

        config = function()
            require("buffer_manager").setup({
                focus_alternate_buffer = false,
                short_file_names = true,
                short_term_names = true,
                loop_nav = false,
                highlight = 'Normal:BufferManagerBorder',
                win_extra_options = {
                    winhighlight = 'Normal:BufferManagerNormal',
                },
            })

            vim.keymap.set("n", "<Leader>b", ':lua require("buffer_manager.ui").toggle_quick_menu() <CR>', { desc = "Buffer manager" })
        end
    },
}

