return {
  -- Tags autoclose
  -- https://github.com/m4xshen/autoclose.nvim
  {
    "m4xshen/autoclose.nvim",

    config = function()
      require("autoclose").setup()
    end
  },

  -- Copilot
  -- https://github.com/github/copilot.vim
  {
    "github/copilot.vim"
  },

  -- Copilot chat
  -- https://github.com/CopilotC-Nvim/CopilotChat.nvim
  {
    "CopilotC-Nvim/CopilotChat.nvim",

    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },

    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {},

    keys = {
      { "<leader>z", ":CopilotChat<CR>", mode='n', desc = "Copilot Chat" },
      { "<leader>zc", ":CopilotChat<CR>", mode='v', desc = "Copilot Chat" },
      { "<leader>ze", ":CopilotChatExplain<CR>", mode='v', desc = "Copilot Chat Explain" },
      { "<leader>zr", ":CopilotChatReview<CR>", mode='v', desc = "Copilot Chat Review" },
      { "<leader>zf", ":CopilotChatFix<CR>", mode='v', desc = "Copilot Chat Fix" },
      { "<leader>zo", ":CopilotChatOptimize<CR>", mode='v', desc = "Copilot Chat Optimize" },
      { "<leader>zd", ":CopilotChatDocs<CR>", mode='v', desc = "Copilot Chat Docs" },
      { "<leader>zt", ":CopilotChatTest<CR>", mode='v', desc = "Copilot Chat Test" },
    }
  },

  -- Git integration 
  -- https://github.com/kdheepak/lazygit.nvim?tab=readme-ov-file
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    keys = {
        { "<leader>v", "<cmd>LazyGit<cr>", desc = "Git" }
    }
  },

  -- Scroll bar left
  {
    "petertriho/nvim-scrollbar",

    config = function()
      require("scrollbar").setup({})
    end
  },

  -- Move lines around
  {
    "hinell/move.nvim",
  },

  {
    "hinell/duplicate.nvim"
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
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
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
          { name = "luasnip" },
          { name = "diag-codes" },
        },
          {
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
