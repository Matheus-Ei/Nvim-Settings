local M = {}


function M.nextParagraph()
    vim.keymap.set( 'n', '<S-k>', '{', {} )
end

function M.prevParagraph()
    vim.keymap.set( 'n', '<S-j>', '}', {} )
end


function M.setShort()
    M.prevParagraph()
    M.nextParagraph()
end

return M
