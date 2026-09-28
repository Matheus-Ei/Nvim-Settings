return {
  -- Mason
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup()

    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      local lspconfig = require("lspconfig")

      require("mason-lspconfig").setup({
        ensure_installed = { "ast_grep", "tailwindcss", "lua_ls", "phpactor", "vtsls", "pyright", "ruff", "clangd" },
        function(server_name)
            lspconfig[server_name].setup({})
        end,
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
  },

  -- Todo messages
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function() 
      require('todo-comments').setup({});
    end
  },

  -- Git blame and inline
  {
    'lewis6991/gitsigns.nvim',

    config = function()
      require('gitsigns').setup({
        signs = {
          add          = { text = '│' },
          change       = { text = '│' },
          delete       = { text = '_' },
          topdelete    = { text = '‾' },
          changedelete = { text = '~' },
          untracked    = { text = '┆' },
        },

        signcolumn = true,
        numhl      = false,
        linehl     = false,
        word_diff  = false,
        watch_gitdir = {
          interval = 1000,
          follow_files = true
        },

        attach_to_untracked = true,
        current_line_blame = true,

        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol',
          delay = 1000,
          ignore_whitespace = false,
        },

        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
      })
    end
  },

  -- Resolve git conflicts
  {
    'akinsho/git-conflict.nvim',
    config = function()
      require('git-conflict').setup({
        default_mappings = true,
        default_commands = true,
        disable_diagnostics = false,
        highlights = {
          incoming = 'DiffAdd',
          current = 'DiffText',
        }
      })
    end
  },

  -- Luasnip
  {
	  "L3MON4D3/LuaSnip",
	  version = "v2.*",
	  build = "make install_jsregexp",

    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_lua").lazy_load({paths = "./lua/snippets/"})

      local ls = require("luasnip")

      ls.setup({
        update_events = {"TextChanged", "TextChangedI"},
        enable_autosnippets = true,
        store_selection_keys = "<Tab>",
      })
    end,

    dependencies = {
      "rafamadriz/friendly-snippets",
    },

    event = "InsertEnter",
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
    opts = {
      keys = {
        ["<cr>"] = "jump",
        o = "jump_close",
        q = "close",
        r = "refresh",
      }
    },

    cmd = "Trouble",
    keys = {
      {
        "<leader>xd",
        "<cmd>Trouble diagnostics toggle focus=true<cr>",
        desc = "Diagnostics",
      },
      {
        "<leader>xD",
        "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
        desc = "Buffer diagnostics",
      },
      {
        "<leader>xs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols",
      },
      {
        "<leader>xl",
        "<cmd>Trouble loclist toggle focus=true<cr>",
        desc = "Location list",
      },
      {
        "<leader>xq",
        "<cmd>Trouble qflist toggle focus=true<cr>",
        desc = "Quickfix list",
      },
    },
  },
}

