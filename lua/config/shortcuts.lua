local M = {}

-- Function to setup the shortcuts
function M.setup()
    local path = vim.fn.stdpath('config') .. '/lua/shortcuts'
    local handle = vim.loop.fs_scandir(path)
    local result = {}

    while true do
        local name, typ = vim.loop.fs_scandir_next(handle)
        if not name then break end

        if typ == 'file' and name:match("%.lua$") then
            local module_name = 'shortcuts.' .. name:gsub("%.lua$", "")
            local ok, module = pcall(require, module_name)
            if ok and module.config then
                module.config()
            end
        end
    end
end

return M
