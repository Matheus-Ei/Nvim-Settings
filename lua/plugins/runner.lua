return {
    -- Code runner
    -- https://github.com/CRAG666/code_runner.nvim?tab=readme-ov-file
    {
        "CRAG666/code_runner.nvim",

        config = function()
            require('code_runner').setup({
                filetype = {
                    python = "source .venv/bin/activate && python3 -u",
                },
            })
        end
    }
}
