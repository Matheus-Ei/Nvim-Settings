-- Comment
-- https://github.com/numToStr/Comment.nvim?tab=readme-ov-file#setup
return {
    {
        'numToStr/Comment.nvim',
        config = function()
            require("Comment").setup({
                {
                    toggler = {
                        ---Line-comment toggle keymap
                        line = 'gc',
                        ---Block-comment toggle keymap
                        block = 'gc',
                    },
                }
            })
        end
    }
}
