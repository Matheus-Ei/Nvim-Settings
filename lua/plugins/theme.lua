-- Github theme

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
    }
}
