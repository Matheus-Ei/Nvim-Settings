-- Nvim notify
-- https://dotfyle.com/plugins/rcarriga/nvim-notify

return {
    "rcarriga/nvim-notify",

    config = function()
        vim.notify = require("notify")
    end
}
