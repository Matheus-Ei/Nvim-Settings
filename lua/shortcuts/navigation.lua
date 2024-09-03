local M = {}


function M.nextParagraph()
    vim.keymap.set( { 'n', 'v' } , '<S-k>', '{', {} )
end

function M.prevParagraph()
    vim.keymap.set( { 'n', 'v' }, '<S-j>', '}', {} )
end


function M.setShort()
    M.prevParagraph()
    M.nextParagraph()
end

return M
