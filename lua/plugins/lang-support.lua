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
                ensure_installed = { "lua_ls", "pylsp", "bashls", "tsserver", "clangd", "html", "cssls" }, -- What languages need to be installed
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
            lspconfig.tsserver.setup({}) -- :LspInstall tsserver
            lspconfig.clangd.setup({})
            lspconfig.html.setup({})
            lspconfig.cssls.setup({})

            vim.keymap.set({'i', 'n'}, '<M-h>', vim.lsp.buf.hover, {}) -- Show documentation
            vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {}) -- Rename variables
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
}

