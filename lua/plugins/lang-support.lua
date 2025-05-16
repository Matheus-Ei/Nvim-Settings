return {
  -- Mason
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup()

    end
  },

  -- Lsp with mason integration
  {
    "williamboman/mason-lspconfig.nvim",

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "ast_grep", "tailwindcss" },
      })
    end
  },

  -- Lsp config
  {
    "neovim/nvim-lspconfig",

    config = function()
      local lspconfig = require("lspconfig")

      -- Setup for each language
      lspconfig.ast_grep.setup({})
      lspconfig.tailwindcss.setup({})
    end
  },

  -- To Auto-close tags html and jsx
  -- https://github.com/windwp/nvim-ts-autotag
  {
    "windwp/nvim-ts-autotag",

    config = function()
      require("nvim-ts-autotag").setup()
    end,

    event = "InsertEnter",
  },

  -- Pretrier message errors
  -- https://github.com/folke/trouble.nvim
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xd",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics",
      },
      {
        "<leader>xD",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer diagnostics",
      },
      {
        "<leader>xs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols",
      },
      {
        "<leader>xl",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location list",
      },
      {
        "<leader>xq",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix list",
      },
    },
  },
}

