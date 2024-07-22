-- Toggleterm
-- https://github.com/akinsho/toggleterm.nvim?tab=readme-ov-file

return {
    {
        'akinsho/toggleterm.nvim',
        version = "*", 
        opts = {},

        config = function()
            require("toggleterm").setup({
                open_mapping = [[<C-s>]], -- Closes the terminal

                direction = 'float', -- 'vertical' | 'horizontal' | 'tab' | 'float'
                close_on_exit = false,
                float_opts = {
                    border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved'
                    winblend = 3,
                }
            })

            vim.keymap.set({ 'n' }, '<C-s>', ':ToggleTerm dir=./ name=Terminal <CR>', {}) -- Opens the terminal on the current folder
        end
    }
}
