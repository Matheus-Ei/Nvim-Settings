return {
    --[[     -- Github theme
    -- https://dotfyle.com/plugins/projekt0n/github-nvim-theme
    {
        'projekt0n/github-nvim-theme',
        lazy = false,
        priority = 1000,
        config = function()
            require('github-theme').setup({})

            vim.cmd('colorscheme github_dark_default')
        end,
    },
 ]]

    -- Catppuccin theme
    -- https://github.com/catppuccin/nvim
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false,
                show_end_of_buffer = false,
                term_colors = false,
                dim_inactive = {
                    enabled = false,
                    shade = "dark",
                    percentage = 0.15,
                },
                no_italic = false,
                no_bold = false,
                no_underline = false,
                styles = {
                    comments = { "italic" },
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                },
            })

            -- Set the colorscheme
            vim.cmd.colorscheme("catppuccin")
        end,
    },

    -- Identation helper plugin
    -- https://github.com/shellRaining/hlchunk.nvim?tab=readme-ov-file
    {
        "shellRaining/hlchunk.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("hlchunk").setup({
                chunk = {
                    enable = true,
                },
                indent = {
                    enable = false,
                }
            })
        end
    },

    -- Dashboard
    -- https://github.com/nvimdev/dashboard-nvim
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {}
        end,
        dependencies = { {'nvim-tree/nvim-web-devicons'} }
    },

    -- Lualine
    -- https://dotfyle.com/plugins/nvim-lualine/lualine.nvim
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },

        config = function()
            require('lualine').setup {
                options = {
                    icons_enabled = true,
                    theme = 'auto',
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                    disabled_filetypes = {
                        statusline = {},
                        winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 1000,
                        tabline = 1000,
                        winbar = 1000,
                    }
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {'filename'},
                    lualine_x = {'encoding', 'fileformat', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {}
            }
        end
    },

    -- Nvim Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = "all",
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    "bash", "c", "cpp", "html", "javascript", "json", "lua",
                    "python", "typescript", "css", "go", "rust", "java"
                },

                auto_install = true,

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

                indent = {
                    enable = true
                },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        node_decremental = "grm",
                        scope_incremental = "grc",
                    },
                },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                        },
                    },
                },
            }
        end
    },

    -- Whitch key
    -- https://dotfyle.com/plugins/folke/which-key.nvim
    {
        "folke/which-key.nvim",
        event = "VeryLazy",

        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 1000
        end,

        opts = {
            icons = { mappings=false },
            triggers = {
                { "<leader>", mode = { "n", "v" } }
            },
        }
    },

    -- Cursor line
    -- https://github.com/yamatsum/nvim-cursorline
    {
        "yamatsum/nvim-cursorline",

        config = function()
            require('nvim-cursorline').setup {
                cursorline = {
                    enable = false,
                    timeout = 1000,
                    number = false,
                },
                cursorword = {
                    enable = true,
                    min_length = 3,
                    hl = { underline = true },
                }
            }
        end
    },

    -- Noice - To cmdline and notify
    -- https://github.com/folke/noice.nvim
    {
        "folke/noice.nvim",
        event = "VeryLazy",

        opts = {},

        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }
}
