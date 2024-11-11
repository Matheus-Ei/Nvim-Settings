return {
    -- Mason
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()

        end
    },

    -- Lsp with mason integration
    {
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pylsp", "bashls", "ts_ls", "clangd", "html", "cssls", "ast_grep", "tailwindcss" },
            })
        end
    },

    -- Lsp config
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")

            -- Setup for each language
            lspconfig.lua_ls.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.bashls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.html.setup({})
            lspconfig.cssls.setup({})
            lspconfig.ast_grep.setup({})
            lspconfig.tailwindcss.setup({})
        end
    },

    -- Prettier
    -- https://github.com/prettier/vim-prettier?tab=readme-ov-file
    {
        "prettier/vim-prettier", -- sudo npm install -g prettier
        build = "yarn install --frozen-lockfile --production",

        config = function()
            vim.g['prettier#autoformat'] = 0
        end
    },

    -- Snippets
    -- https://github.com/L3MON4D3/LuaSnip
    -- https://github.com/rafamadriz/friendly-snippets
    {
        "L3MON4D3/LuaSnip",

        dependencies = { "rafamadriz/friendly-snippets" },

        build = "make install_jsregexp",

        config = function()
            local ls = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },

    -- To Auto-close tags html and jsx
    -- https://github.com/windwp/nvim-ts-autotag
    {
        "windwp/nvim-ts-autotag",

        config = function()
            require("nvim-ts-autotag").setup()
        end,

        event = "InsertEnter",
    },

    -- Pretrier message errors
    -- https://github.com/folke/trouble.nvim
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        keys = {
            {
                "<leader>xd",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics",
            },
            {
                "<leader>xD",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer diagnostics",
            },
            {
                "<leader>xs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols",
            },
            {
                "<leader>xl",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location list",
            },
            {
                "<leader>xq",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix list",
            },
        },
    },

    -- Copilot
    -- https://github.com/github/copilot.vim
    {
        "github/copilot.vim",
    }
}

