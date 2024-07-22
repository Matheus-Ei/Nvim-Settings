-- Code runner
-- https://github.com/CRAG666/code_runner.nvim?tab=readme-ov-file

return { 
    "CRAG666/code_runner.nvim", 

    config = true,

    config = function()
        require('code_runner').setup({  
            -- Settings about different languages
            filetype = {
                python = "python3 -u",
            },
        })

        vim.keymap.set('n', '<Leader>r', ':RunCode <CR>', {desc = "Run code"}) -- Sets the keymap to run code
    end
}
