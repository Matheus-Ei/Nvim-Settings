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
                ensure_installed = { "lua_ls", "pylsp", "bashls", "tsserver", "clangd" }, -- What languages need to be installed
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

            vim.keymap.set({'i', 'n'}, '<M-h>', vim.lsp.buf.hover, {}) -- Show documentation
            vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {}) -- Rename variables
        end
    }
}

