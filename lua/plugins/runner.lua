return {
    {
        -- Code runner
        -- -- https://github.com/CRAG666/code_runner.nvim?tab=readme-ov-file
        "CRAG666/code_runner.nvim",

        config = true,

        config = function()
            require('code_runner').setup({
                filetype = {
                    python = "python3 -u",
                },
                project = {
                    --    ["~/project/path"] = {
                    --    --        name = "Project Name",
                    --    --        description = "Project description",
                    --    --        file_name = "project_run.file",
                    --    --        command = "command to run the project"
                    --    --    },
                }
            })

            vim.keymap.set('n', '<Leader>rc', ':RunCode <CR>', {desc = "Run code"}) -- Sets the keymap to run code
            vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false, desc = "Run project" }) -- Set to run configured project
        end
    }
}
