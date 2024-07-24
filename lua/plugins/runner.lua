return {
    -- Code runner
    -- https://github.com/CRAG666/code_runner.nvim?tab=readme-ov-file
    {
        "CRAG666/code_runner.nvim",

        config = function()
            require('code_runner').setup({
                filetype = {
                    python = "python3 -u",
                },
                project = {
                    ["~/Documents/Github/project_osb/anes"] = {
                        name = "Anes",
                        description = "Web scrapping bot",
                        file_name = "app.py",
                        command = "source .venv/bin/activate && python3 -u",
                    },
                }
            })

            vim.keymap.set('n', '<Leader>rc', ':RunCode <CR>', {desc = "Run code"}) -- Sets the keymap to run code
            vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false, desc = "Run project" }) -- Set to run configured project
        end
    }
}
