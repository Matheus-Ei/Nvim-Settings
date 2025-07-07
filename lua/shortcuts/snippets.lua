local M = {}

function M.snippets()
  local ls = require("luasnip")

  vim.keymap.set({"i", "s"}, "<C-l>", function()
    if ls.jumpable(1) then
      ls.jump(1)
    end
  end, {silent = true, desc = "Next field of the snippet"})

  vim.keymap.set({"i", "s"}, "<C-h>", function()
    if ls.jumpable(-1) then
      ls.jump(-1)
    end
  end, {silent = true, desc = "Previous field of the snippet"})

  vim.keymap.set({"i", "s"}, "<C-e>", function()
    if ls.choice_active() then
      ls.change_choice(1)
    end
  end, {silent = true, desc = "Select next choice in the snippet"})
end

-- Set shortcuts
function M.config()
  M.snippets()
end


return M
