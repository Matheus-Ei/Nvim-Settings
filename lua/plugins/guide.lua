return {
    -- Whitch key
    -- https://dotfyle.com/plugins/folke/which-key.nvim
     {
        "folke/which-key.nvim",
        event = "VeryLazy",

        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,

        opts = {
            icons = { mappings=false }
        }
    }
}
