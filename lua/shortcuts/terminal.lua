local M = {}



function M.terminal()
    vim.keymap.set({ 'n' }, '<C-t>', function() vim.cmd('FloatermToggle') end, {})

    vim.keymap.set({ 't' }, "<C-e>", [[<C-\><C-n>]], {})
    vim.keymap.set({ 't' }, '<C-t>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermToggle") end, {})

    vim.keymap.set({ 't' }, '<C-p>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermPrev") vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("i", true, true, true), 'n', true) end, {})
    vim.keymap.set({ 't' }, '<C-n>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermNext") vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("i", true, true, true), 'n', true) end, {})

    vim.keymap.set({ 't' }, '<C-k>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermKil ") end, {})
    vim.keymap.set({ 't' }, '<C-a>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, true, true), 'n', true) vim.cmd("FloatermNew") vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("i", true, true, true), 'n', true) end, {})
end

function M.run()
    vim.keymap.set('n', '<Leader>rp', function() vim.cmd(':FloatermNew --autoclose=0 cd %:p:h; source .venv/bin/activate; python3 -u %') end, {desc = "Run python"}) -- Python
    vim.keymap.set('n', '<Leader>rj', function() vim.cmd(':FloatermNew --autoclose=0 cd %:p:h; node %') end, {desc = "Run javascript"}) -- Javascript / nodejs
    -- vim.keymap.set('n', '<Leader>rl', function() vim.cmd('LiveServerStart') end, {desc = "Run live server"}) -- html / Liveserver
end



-- Set shortcuts
function M.config()
    M.terminal()
    M.run()
end


return M
