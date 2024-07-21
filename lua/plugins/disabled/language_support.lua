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
                ensure_installed = { "lua_ls", "pylsp", "marksman" },
            })

        end
    },

    -- Lsp config
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.marksman.setup({})
            
            vim.keymap.set('n', '<Leader>ld', vim.lsp.buf.hover, {})
            -- vim.keymap.set('n', '<C-a>', vim.lsp.buf.code_action, {})
        end
    }
}
