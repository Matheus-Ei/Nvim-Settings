return {
    -- Github theme
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
                    enable = true,
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
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
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
        opts = {
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }
}
