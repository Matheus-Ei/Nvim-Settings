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
                default_component_configs = {
                    indent = {
                        indent_size = 4,
                        padding = 1,
                        with_markers = true,
                        indent_marker = "│",
                        last_indent_marker = "└",
                        highlight = "NeoTreeIndentMarker",
                        with_expanders = nil,
                        expander_collapsed = "",
                        expander_expanded = "",
                        expander_highlight = "NeoTreeExpander",
                    },
                },
                window = {
                    position = "float",
                    width = 30,
                    mapping_options = {
                        noremap = true,
                        nowait = true,
                    },
                    mappings = {
                        ["<2-LeftMouse>"] = "open",
                        ["<cr>"] = "open",
                        ["<esc>"] = "cancel",
                        ["S"] = "open_split",
                        ["s"] = "open_vsplit",
                        ["t"] = "open_tabnew",
                        ["a"] = {
                            "add",
                            config = {
                                show_path = "none" -- "none", "relative", "absolute"
                            }
                        },
                        ["d"] = "delete",
                        ["r"] = "rename",
                        ["y"] = "copy_to_clipboard",
                        ["x"] = "cut_to_clipboard",
                        ["p"] = "paste_from_clipboard",
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
                    hijack_netrw_behavior = "open_default",
                    use_libuv_file_watcher = false,
                    window = {
                        mappings = {
                            ["<bs>"] = "navigate_up",
                            ["."] = "set_root",
                            ["H"] = "toggle_hidden",
                            ["/"] = "fuzzy_finder",
                            ["D"] = "fuzzy_finder_directory",
                            ["#"] = "fuzzy_sorter",
                            ["f"] = "filter_on_submit",
                            ["<c-x>"] = "clear_filter",
                            ["[g"] = "prev_git_modified",
                            ["]g"] = "next_git_modified",
                            ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
                            ["oc"] = { "order_by_created", nowait = false },
                            ["od"] = { "order_by_diagnostics", nowait = false },
                            ["og"] = { "order_by_git_status", nowait = false },
                            ["om"] = { "order_by_modified", nowait = false },
                            ["on"] = { "order_by_name", nowait = false },
                            ["os"] = { "order_by_size", nowait = false },
                            ["ot"] = { "order_by_type", nowait = false },
                        },
                    },
                },
                buffers = {
                    follow_current_file = {
                        enabled = true,
                        leave_dirs_open = false,
                    },
                    group_empty_dirs = true,
                    show_unloaded = true,
                    window = {
                        mappings = {
                            ["bd"] = "buffer_delete",
                            ["<bs>"] = "navigate_up",
                            ["."] = "set_root",
                            ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
                            ["oc"] = { "order_by_created", nowait = false },
                            ["od"] = { "order_by_diagnostics", nowait = false },
                            ["om"] = { "order_by_modified", nowait = false },
                            ["on"] = { "order_by_name", nowait = false },
                            ["os"] = { "order_by_size", nowait = false },
                            ["ot"] = { "order_by_type", nowait = false },
                        }
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
        "gaborvecsei/memento.nvim"
    }
}

