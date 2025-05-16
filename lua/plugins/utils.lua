return {
  -- Tags autoclose
  -- https://github.com/m4xshen/autoclose.nvim
  {
    "m4xshen/autoclose.nvim",

    config = function()
      require("autoclose").setup()
    end
  },

  -- Autosave
  -- https://github.com/okuuva/auto-save.nvim
  {
    "okuuva/auto-save.nvim",
    opts = {
      enabled = true,
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost", "TextChanged" }, -- vim events that trigger an immediate save
        defer_save = { "InsertLeave" }, -- vim events that trigger a deferred save
        cancel_deferred_save = { "InsertEnter" }, -- vim events that cancel a pending deferred save
      },
      condition = nil,
      write_all_buffers = true,
      noautocmd = false,
      lockmarks = false,
      debounce_delay = 1000,
      debug = false,
    },
  },

  -- Autocomplete
  -- https://github.com/hrsh7th/nvim-cmp?tab=readme-ov-file
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },

    config = function()
      local cmp = require("cmp")
      vim.opt.completeopt = { "menu", "menuone", "noselect" }

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "nvim_lua" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
            { name = "buffer" },
            { name = "path" },
          }),
      })

      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
            { name = "cmdline" },
          }),
      })
    end
  },

  -- Comments functionalities
  -- https://github.com/numToStr/Comment.nvim?tab=readme-ov-file#setup
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
