return {
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
    }
}
